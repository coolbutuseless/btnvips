
rm(list = ls())

suppressPackageStartupMessages({
  library(magrittr)
  library(stringr)
  library(dplyr)
  library(tidyr)
  library(purrr)
})


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'vips' has really great documentation at the command line.
#
# e.g. by running 'vips jpegsave' it will print a description of all the
# required and optinal aruguments including their type and their defaults.
#
# I'm going to do a system2('vips', 'jpegsave') and save all this output.
#
# Then parse this output into a list.
#
# This list can then be used to generate all the methods on the Vips R6 class,
# and used to check sanity of arguments etc at runtime.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Helper function for building regexes.  I always want 'dotall = TRUE'
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
re <- purrr::partial(regex, dotall = TRUE)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# For every possible thing that looks like it might be an argument (as a result
# of running "vips -l") see whether it is an actual argument of not by
# attempting to run it as "vips whatever".  If it works then it's a command
# we should attempt to use in the Vips object
#
# Cache the results to file as it takes q few seconds to test all the names
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if (FALSE) {
  all_commands <- system2('vips', '-l', stdout = TRUE)
  all_commands <- str_match(all_commands, "\\((.*?)\\)")[,2]


  command_ok <- function(command) {
    res <- system2('vips', command, stdout=TRUE, stderr = TRUE)
    bad <- identical(attr(res, 'status'), 1L)
    !bad
  }

  ok <- map_lgl(all_commands, command_ok)

  valid_commands <- all_commands[ok]
  saveRDS(valid_commands, "data-raw/valid-commands.rds")
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Load in the list of valid 'vips' commands
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
commands <- readRDS("data-raw/valid-commands.rds")



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Parse a command line option of the form:
#
#   [name]     -  description, [input/output] [type]
#                 [default:] [value]
#                 [min:] [value], [max:] [value]
#                 [allowed:] [value], [value], ... [value]  # e.g. rot45
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
parse_cli_option <- function(x) {
  name_meta   <- str_match(x, '^(.*?)\\s+-\\s+(.*?), (input|output)\\s+(.*?)(:?\n|$)')
  default_raw <- str_match(x, "default: (.*)(\n|$)")[,2]
  min_max     <- str_match(x, "min:\\s+(.*?), max:\\s+(.*?)(\n|$)")[,2:3]
  allowed_raw <- str_match(x, "allowed:\\s+(.*?)(\n|$)")[,2]

  allowed <- str_trim(str_split(allowed_raw, ",")[[1]])
  type    <- name_meta[,5]
  min     <- min_max[1]
  max     <- min_max[2]
  default <- default_raw

  if (type == 'gint') {
    default <- as.integer(default)
    min     <- as.integer(min)
    max     <- as.integer(max)
  } else if (type == 'gboolean') {
    default = default != 'false'
  } else if (type == 'gdouble') {
    default <- as.numeric(default)
    min     <- as.numeric(min)
    max     <- as.numeric(max)
  }

  name  <- name_meta[,2]
  desc  <- name_meta[,3]
  input <- name_meta[,4] == 'input'
  if (name == 'filename' && desc == 'Filename to save to') {
    input <- FALSE
  }

  res <- list(
    name    = name,
    desc    = desc,
    input   = input,
    type    = type,
    default = default,
    min     = min,
    max     = max,
    allowed = allowed
  )

  res <- discard(res, anyNA)
  res
}




#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' This is a rather inelegant doc parser
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
parse_vips_docstring <- function(command, doc) {

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Parse the 4 major sections of the docstring
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  desc    <- str_trim(str_match(doc, re("^(.*?)usage:"))[,2])
  usage   <- str_trim(str_match(doc, re("usage:(.*?)where:"))[,2])
  req_all <- str_match(doc, re("where:(.*?)(optional arguments:|$)"))[,2]
  opt_all <- str_match(doc, re("optional arguments:(.*?)$"))[,2]

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Split all the 'required' and 'optional' CLI information into individual
  # CLI options
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  reqs <- str_split(req_all, re("\n   "))[[1]][-1]
  opts <- str_split(opt_all, re("\n   "))[[1]][-1]

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Parse the details for each CLI option
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  req_details <- map(reqs, parse_cli_option)
  opt_details <- map(opts, parse_cli_option)

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # What are all the names of all the arguments?
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  req_args    <- map_chr(req_details, 'name')
  opt_args    <- map_chr(opt_details, 'name')

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Ensure that the 'details' have names
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  req_details <- set_names(req_details, req_args)
  opt_details <- set_names(opt_details, opt_args)

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Character names of optional arguments which are boolean flags
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  gboolean_args <- map_chr(opt_details, 'type')
  gboolean_args <- names(gboolean_args[gboolean_args == 'gboolean'])

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Combine all argument info into a single list
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  details <- c(req_details, opt_details)


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # output_name
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Construct and return the list of all the extracted info
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  list(
    command       = command,       # command name
    required      = req_args,      # names of all required args
    optional      = opt_args,      # names of all optional args
    desc          = desc,          # 1-line description
    usage         = usage,         # usage string
    doc           = doc,           # full doc string
    gboolean_args = gboolean_args, # list of args which are booleans. for convenience
    details       = details        # Details of arguments
  )
}



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Parse the command and create the method meta-info for it.
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
create_method_info <- function(command) {
  doc <- system2('vips', command, stdout = TRUE)
  doc <- paste(doc, collapse = "\n")
  doc.orig <- doc

  parse_vips_docstring(command, doc)
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Create the meta-info for all the methods
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
method_info <- map(set_names(commands), create_method_info)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Save as an internal part of the package. Also cache it in the 'data-raw'
# directory for convenience
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
usethis::use_data(method_info, internal = TRUE, overwrite = TRUE)
saveRDS(method_info, "data-raw/method-info.rds")

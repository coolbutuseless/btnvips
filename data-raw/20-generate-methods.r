
rm(list = ls())

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Given the option name, generate a safe version for use as an R function name
#'
#' @param option option name as a character string
#'
#' @return a character string which can be used as a function name
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
create_safe_name <- function(option) {
  option <- gsub("^[-+]+", ""    , option, perl = TRUE)
  option <- gsub("^(\\d)", "n\\1", option, perl = TRUE)
  option
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Read in the cached list of meta-info about all the commands.
# Remove dupes
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
method_info <- readRDS("data-raw/method-info.rds")
method_info <- method_info[!duplicated(names(method_info))]


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Define the documentation spacer to be used in the generated docs
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
spacer <- paste0('#', paste(rep("~", 78), collapse = ''))

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Generate a method for a particular command based upon its meta-info
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
gen_method_string <- function(method) {

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Retrieve the names of the required and optional arguments, and ensure
  # that they're sane for R usage
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  required <- method$required
  optional <- method$optional

  required[required %in% c('in')] <- paste0(required[required %in% c('in')], '_')
  optional[optional %in% c('in')] <- paste0(optional[optional %in% c('in')], '_')

  required_safe <- gsub("-", "_", required)
  optional_safe <- gsub("-", "_", optional)


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Because the names of optional arguments are often unsafe e.g. "--this-arg",
  # use backticks to I can use the name as-is without R barfing on it.
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if (length(optional) > 0) optional <- paste0('`', optional, '`')


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Create a character string to represent the formal arguments for this method.
  # names of reqiured arguments do not have a default value.
  # optional arguments al lhave a default vaule of "NULL", so that the user
  # does not have to specify them, and later we filter out all the null arguments
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  formal_args <- c(
    required_safe,
    if (length(optional) > 0) {paste0(optional_safe, "=NULL")} else {NULL}
  )
  formal_args <- paste(formal_args, collapse = ", ")

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # It gets a bit tricky with how names are referenced.
  # e.g. consider the argument 'hello-there'
  # in the formal arguments, we want to use 'hello_there' to safely and easily
  # have the user pass in a value.
  # However, the list of optional args passed to '$add' should use the proper
  # names as it has to construct the command line.
  # So the optional args list to $add should be: list(`hello-there`=hello_there)
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  optional_list_contents <- if (length(optional) > 0) {
    paste(optional, '=', optional_safe, collapse = ', ')
  } else {
    ''
  }


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # If any of the optional args are type=gboolean, then they are a switch
  # and take no value.  Thus  if "hello_there = TRUE", then the ultimate
  # command line argument is "--hello-there".  Any value besides TRUE for
  # a gboolean argument means that the option will not appear on the command
  # line at all.
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  boolean_code <- if (length(method$gboolean_args) > 0) {
    arg_collapse <- paste0("'", method$gboolean_args, "'", collapse = ", ")
glue::glue("for (opt_name in c({arg_collapse})) {{
    if (!isTRUE(optional[[opt_name]])) {{
       optional[[opt_name]] <- NULL
    }}
  }}")
  } else {
    ""
  }


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Create the code necessary to add this function into the 'Vips' class
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  fun <- glue::glue("Vips$set('public', {shQuote(create_safe_name(method$command))}, function({formal_args}) {{
    required <- list({paste(required_safe, collapse = ', ')})
    optional <- list({optional_list_contents})
    {boolean_code}
    self$set_command({paste(c(shQuote(method$command), 'required=required', 'optional=optional'), collapse = ', ')})
  }})")

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Include the raw docs from the vips command line before the code
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  doc <- paste("#", gsub("\n", "\n# ", paste(shQuote(method$command), method$doc)))

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Paste it all together
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  paste(
    c(spacer,
      doc,
      spacer,
      fun
    ), collapse = "\n"
  )
}



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# For all options and their synonyms create methods and output to file
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

sink(here::here("R", "vips-methods.R"))

for (method in method_info) {
  # print(method$command)
  fun <- gen_method_string(method)
  cat(fun, "\n\n\n")
}

sink()















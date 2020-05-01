

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Interleave the contents of 2 vectors
#'
#' @param x,y input vectors
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
interleave <- function(x, y) {
  stopifnot(length(x) == length(y))
  as.vector(rbind(x, y))
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Convert an array of values into a single space-separated string
#'
#' @param ... values to preparse a vips array argument
#'
#' @return single character string with all the original vector elements separated by spaces
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vips_array <- function(...) {
  x <- list(...)
  if (length(x) == 1) {
    x <- x[[1]]
  } else {
    x <- unlist(x)
  }

  paste(x, collapse = " ")
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Convert an array of filenames into a single space-separated string
#'
#' Compared to \code{vips_array}, this function tries to escape characters
#' (such as space) in order to be correctly handled by the shell
#'
#' @param ... values to preparse a vips array argument
#'
#' @return single character string with all the original vector elements separated by spaces
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vips_array_files <- function(...) {

  x <- list(...)
  if (length(x) == 1) {
    x <- x[[1]]
  } else {
    x <- unlist(x)
  }

  x <- gsub("\\s", "\\\\ ", x)
  paste(x, collapse = " ")
}


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Vips
#'
#' @import R6
#' @import glue
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips <- R6::R6Class(
  "Vips",

  public = list(
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @field valid_option_names valid arguments for this magick command
    #' @field verbosity verbosity level. default 0. Range: 0-2
    #' @field result result of running the command. with components: 'status',
    #'        'stdout', 'stderr', 'timeout'
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    valid_option_names = NULL,
    verbosity          = NULL,
    result             = NULL,

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Initialise the Ls object
    #'
    #' @param verbosity verbosity
    #' @param command actual command line to run
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    initialize = function(verbosity = 0, command = 'vips') {

      private$command      <- command
      private$options      <- character(0)
      self$verbosity       <- verbosity

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # From the list of all possible argument metadata, keep a cached list
      # of all the names which apply to this command.  This will be used
      # for sanity checking the input
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      self$valid_option_names <- names(method_info)

      invisible(self)
    },

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Print the help for a particular command
    #'
    #' @param command name of command e.g. 'jpegsave'
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    help = function(command) {
      if (!command %in% names(method_info)) {
        stop("No such vips command: ", shQuote(command), call.=FALSE)
      }
      cat(method_info[[command]]$doc, "\n\n")
      invisible(method_info[[command]]$doc)
    },

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Return a vector of all valid command names
    #'
    #' @return Vector of all valid command names
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    commands = function() {
      names(method_info)
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' Add an option with its arguments
    #'
    #' @param option option name e.g. 'I' or '-I'
    #' @param required list of required arguments
    #' @param option named lst of optional arguments
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    set_command = function(option, required = list(), optional= list()) {

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Sanity check
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      stopifnot(length(option) == 1)
      stopifnot(is.character(option))

      required <- Filter(Negate(is.null), required)
      optional <- Filter(Negate(is.null), optional)

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Check option exists
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      if (!option %in% self$valid_option_names) {
        stop(glue("Unknown option: {shQuote(option)}"), call. = FALSE)
      }

      method <- method_info[[option]]

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Check required args are sane
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      if (length(required) > length(method$required)) {
        stop(glue("You've given too many arguments for 'required' for : {shQuote(option)},",
                  "Should only be {length(method$required)} but got {length(required)}"), call. = FALSE)
      }

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Check optional args
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      unknown_optional <- setdiff(names(optional), method$optional)
      if (length(unknown_optional) > 0) {
        stop(glue("Unknown optional arguments for : {shQuote(option)} - ",
                  "{deparse(unknown_optional)}"), call. = FALSE)
      }

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # All arguments should only be single values.
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      stopifnot(is.list(required))
      arg_lengths <- vapply(required, length, integer(1))
      stopifnot(all(arg_lengths) == 1)

      stopifnot(is.list(optional))
      arg_lengths <- vapply(optional, length, integer(1))
      stopifnot(all(arg_lengths) == 1)

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Convert all arguments to strings suitable for the CLI
      # The user should create S3 methods for objects of their interest
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      required_args <- vapply(required, as_cli_string, character(1))
      optional_args <- vapply(optional, as_cli_string, character(1))


      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Args that are of type 'gboolean' do not take an argument, they
      # just exist to turn that particular option 'on'.
      # Correct:  --hello
      # Incorrect: --hello='false'
      # No matter the trailing text, if the argument name is present, then
      # that option is now considered ON or TRUE.
      # All other optional args are of the form "--thing value"
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      if (length(optional_args) > 0) {
        if (is.null(names(optional)) || anyNA(names(optional)) || any(names(optional) == '')) {
          stop("All optional arguments must be named", call. = FALSE)
        }
        boolean_optionals <- intersect(names(optional), method$gboolean_args)
        other_optionals   <- setdiff  (names(optional), method$gboolean_args)
        if (length(boolean_optionals) > 0) {
          boolean_optional_args <- paste0("--", boolean_optionals)
        } else {
          boolean_optional_args <- NULL
        }

        optional_args <- optional_args[other_optionals]

        double_dash   <- paste0("--", names(optional_args))
        # optional_args <- paste0("--", names(optional_args), " ", optional_args)
        optional_args <- interleave(double_dash, optional_args)

        optional_args <- c(optional_args, boolean_optional_args)
      }


      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Add the option + arguments to the list of all options
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      private$options <- c(option, required_args, optional_args)

      invisible(self)
    },

    current_options = function() {
      private$options
    },

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Full command line representation
    #'
    #' @param ... extra arguments ignored
    #'
    #' @return character string representation of command line
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    as_character = function(...) {
      paste(c(private$command, self$current_options()), collapse = " ")
    },


    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Full command line representation
    #'
    #' @param width text width. Default: 90
    #'
    #' @return character string representation of command line
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    print = function(width = 90) {
      cl <- self$as_character()
      cl <- strwrap(cl, width = width)
      endings <- c(rep("  \\", length(cl)-1), "")
      cl <- paste(cl, endings, collapse = "\n")
      cat(cl)
      invisible(self)
    },

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    #' @description Run command
    #'
    #' This method will run the current command using a system2() call.
    #'
    #' stdout will be returned to the user
    #'
    #' @param verbosity verbosity level. default: NULL means to use the
    #'        class level verbosity specified when creating the object.
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    run = function(verbosity = NULL) {


      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Verbosity
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      if (is.null(verbosity)) {
        verbosity <- self$verbosity
      }

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Reset variables
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      self$result <- NULL


      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Sanity checks
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      if (verbosity > 0) {
        self$print()
      }

      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Run
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      self$result <- btnsystem::run(private$command, self$current_options())


      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Successful exit?
      #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      invisible(self$result)
    }




  ),

  private = list(

    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Don't let the user directly manipulate the list of options
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    command      = 'vips',
    options      = NULL
  )
)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Character representation of Vips object
#'
#' @param x Vips object
#' @param ... other arguments ignored
#'
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
as.character.Vips <- function(x, ...) {
  x$as_character(...)
}







#' Escape characters
#' 
#' Use this to escape character strings.
#' Many thanks to Duncan Murdoch (http://goo.gl/1G1php)!
#' 
#' @param x character string
escape_char <- function(x) {
  gsub("[\x01-\x1f\x7f-\xff]", "", x)
}

#' Get function arguments
#' 
#' Especially useful in the doc class, where the provided
#' arguments are anything or a list (with anything).
#' 
#' @param ... documentation (provided as a list or as parameters)
get_args <- function(...) {
  args <- list(...)
  
  if (length(args) == 1 && is.list(args[[1]]) && is.null(names(args))) {
    return(args[[1]])
  } else {
    return(args)
  }
}

#' Create new time stamp
#' 
#' Creates a time stamp of the current system time.
new_time_stamp <- function(){
  return(as.double(lubridate::force_tz(Sys.time(), .tzone)))
}

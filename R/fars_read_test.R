#' Import traffic accident data
#'
#' Enables the importing of comma delimited text files (CSV) or tab sperated files (TSV) from the US National Highway Traffic
#' Safety Administration's Fatality Analysis Reporting System (FARS). The data provides a statistical summary of fatalities
#' (where a death occured within 30 days of the incident) suffered in motor vehicle accidents in the United States.
#'
#' @param filename A character vector giving the location of the data file to be imported.
#'
#' @details The function uses the the readr package to read and load the csv file identified by the filename parameter. The
#' tbl_def function returns a tibble otherwise execution of the function stops and a warning ' file accident_xxxx.csv.bz2
#' does not exist' is issued (where xxxx is the year of data being imported). The suppressmessages function is used to ignore
#' all simple diagnostic messages.
#'
#'
#' @note The readr and dplyr packages must be installed in the R environment but do not have to be attached.
#'
#' @importFrom tibble as_tibble
#'
#' @return A 50 column tibble with each row representing a fatal incident.
#'
#' @examples
#' fars_read('accident_2013_test.csv')
#'
#'
#' @export
fars_read <- function(filename) {
  filepath <- system.file("extdata", filename, package = "Fatality.Reporting.System", mustWork = TRUE)
  if(!file.exists(filepath))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    # readr::read_csv(filepath, progress = FALSE)
    readr::read_csv(filepath, progress = FALSE)
  })
  # dplyr::tbl_df(data)
  # Waring: tbl_df()` is deprecated as of dplyr 1.0.0...Please use `tibble::as_tibble()` instead.
  tibble::as_tibble (data)
}
#'
#' Creates filename
#'
#' Generate the name of a file containing traffic fatality statistics provided by the US National Highway Traffic Safety
#'   Administration's Fatality Analysis Reporting System (FARS).
#'
#' @details The function accepts a year argument and uses the sprintf function to return a filename containing accident data
#' for the \code{year} parameter.
#'
#' @param year A value used to represent the year. This can be in either character or numeric format as the function will
#'  try to coerce the value to an integer.
#'
#' @return A filename representing the fatal traffic incident data for a given year. The file will be of the form;
#'  accident_xxxx.csv.bz2 where xxxx is the year of data being imported.
#'
#' @examples
#' make_filename(2013)
#'
#' @export
make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.rda", year)
}

#' Add together two numbers
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#'
#' @examples
#' fnAdd(1, 1)
#'
#' @export
fnAdd <- function(x, y) {
  x + y
}

#' traffic Signs in Copenhagen
#'
#' A data set containing information of a subset of the traffic signs in
#' Copenhagen.
#'
#' The data set has been heavily filtered to only include complete information,
#' and cases where `date_performed` occurs after `date_registered`.
#'
#' @format A data frame with 1155 rows and 7 variables:
#' \describe{
#'   \item{status}{Status of sign, one of `"taken down"`, and `"still up"`}
#'   \item{time_days}{Number of days sign has been up, calculated as time
#'                    between `date_performed` and `date_registered`}
#'   \item{date_performed}{Date of last update}
#'   \item{date_registered}{Date of initial registration}
#'   \item{district_name}{Name of district}
#'   \item{sign_main}{Sign code for main part of sign. See "Katalog over
#'                    Trafikskilte" in source for visual description}
#'   \item{sign_sub}{Sign code for secondary part of sign. See "Katalog over
#'                   Trafikskilte" in source for visual description}
#' }
#'
#' @source \url{https://www.opendata.dk/city-of-copenhagen/trafikskilte}
"signs"

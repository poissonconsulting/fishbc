#' Official ACIMS Fish Status
#' Official Alberta Conservation Information Management System (ACIMS) fish data.
#'
#' The search criteria for status was `Select all`
#' and the class was `Fish`.
#'
#' The data is released under the [Open Government Licence - Alberta](https://open.alberta.ca/licence)
#'
#' @references AB Conservation Information Management System (ACIMS). 2021.
#' AB Fisheries and Wildlife Management Information System
#' AB Environ. and Parks Edmonton, AB
#' Available: <https://extranet.gov.ab.ca/env/wild-species-status/default.aspx>
#' (accessed Feb 9, 2021).
#' @format A tbl data frame that includes:
#' \describe{
#'  \item{Species Code}{A character vector of the unique data centre fish code.}
#'  \item{AB List}{A character vector of the AB Conservation Listing.}
#' }
#' @seealso [freshwaterfish]
#' @examples
#' head(ab)
"ab"

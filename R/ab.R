#' Government of Alberta Fish Codes
#'
#' Official Alberta Fisheries and Wildlife Management Information System (FWMIS) fish data.
#'
#' Located under `FWMIS fisheries loadforms`
#'
#' The data is released under the [Open Government Licence - Alberta](https://open.alberta.ca/licence)
#'
#' @references AB Fisheries and Wildlife Management Information System (FWMIS). 2021.
#' AB Environ. and Parks Edmonton, AB
#' Available: <https://www.alberta.ca/fisheries-loadforms.aspx>
#' (accessed Feb 9, 2021).
#' @format A tbl data frame that includes:
#' \describe{
#'  \item{Species Common Name}{A character vector of the AB fish species common name.}
#'  \item{Scientific Name}{A character vector of the AB fish species scientific name.}
#'  \item{Species Code}{A character vector of the unique data centre fish code.}
#' }
#' @family fishcodes
#' @examples
#' head(ab)
"ab"

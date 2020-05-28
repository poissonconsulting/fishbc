#' BC Fish Data
#'
#' Curated data on the codes,
#' classification and conservation status of freshwater fishes in British Columbia.
#'
#' The data includes estuarine fishes and excludes non-finned fishes such as clams.
#'
#' @format A tbl data frame with 16 columns and 161 rows:
#' \describe{
#'   \item{Code}{A character vector of the unique provincial fish code.}
#'   \item{CommonName}{A character vector of the common name.}
#'   \item{Class}{A character vector of the class.}
#'   \item{Order}{A character vector of the order.}
#'   \item{Family}{A character vector of the family.}
#'   \item{Genus}{A character vector of the genus.}
#'   \item{Species}{A character vector of the species.}
#'   \item{Subspecies}{A character vector of the subspecies.}
#'   \item{Species2}{A character vector of the second species if a hybrid.}
#'   \item{Extant}{A logical vector indicating whether any of the fishes are extant
#'   in British Columbia.}
#'   \item{Native}{A logical vector indicating whether any of the fishes are native
#'   to British Columbia.}
#'   \item{Marine}{A logical vector indicating whether a life-stage of any of the fishes
#'   occur in saltwater in British Columbia.}
#'   \item{Yellow}{A logical vector indicating whether any of the fishes are yellow listed in British Columbia.}
#'   \item{Blue}{A logical vector indicating whether any of the fishes are blue listed in British Columbia.}
#'   \item{Red}{A logical vector indicating whether any of the fishes are red listed in British Columbia.}
#'   \item{CDCode}{A character vector specifying the BC Conservation Data Centre species code.}
#' }
#' @seealso [cdc]
#' @examples
#' head(freshwaterfish)
"freshwaterfish"

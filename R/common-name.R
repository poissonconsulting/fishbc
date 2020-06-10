#' Common Name
#'
#' @param x A character vector of the provincial fish codes.
#'
#' @return A character vector of the corresponding common names.
#' @export
#'
#' @examples
#' fbc_common_name(c("AF", "WSG", NA, "AF", "NOTACODE"))
fbc_common_name <- function(x) {
  stopifnot(is.vector(x, "character"))

  if(!length(x)) return(character(0))

  y <- fishbc::freshwaterfish$CommonName
  names(y) <- fishbc::freshwaterfish$Code
  y <- y[x]
  names(y) <- NULL
  y
}

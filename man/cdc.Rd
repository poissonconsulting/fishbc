% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdc.R
\docType{data}
\name{cdc}
\alias{cdc}
\title{BC Conservation Data Centre Fish Codes}
\format{
A tbl data frame that includes:
\describe{
\item{Species Code}{A character vector of the unique data centre fish code.}
\item{BC List}{A character vector of the BC Conservation Listing.}
}
}
\usage{
cdc
}
\description{
Official raw BC Conservation Data Centre (CDC) fish data.
}
\details{
The search criteria were \verb{Fish, Freshwater OR Fish, Marine}
and the sort order was \verb{Scientific Name Ascending}.

The data is released under the \href{https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc}{Open Government Licence - British Columbia}
}
\examples{
head(cdc)
}
\references{
B.C. Conservation Data Centre. 2019.
BC Species and Ecosystems Explorer.
B.C. Minist. of Environ. Victoria, B.C.
Available: \url{https://a100.gov.bc.ca/pub/eswp/}
(accessed Aug 23, 2019).
}
\seealso{
Other fishcodes: 
\code{\link{ab}},
\code{\link{freshwaterfish}}
}
\concept{fishcodes}
\keyword{datasets}

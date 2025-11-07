# fishbc

## Introduction

`fishbc` is an R package that provides provides raw and curated data on
the codes, classification and conservation status of freshwater fishes
in British Columbia. Marine fishes will be added in a future release. It
also include raw fish codes for BC Conservation Data Centre and the
Government of Alberta.

It contains information licensed under the [Open Government Licence –
British
Columbia](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)
and the [Open Government Licence -
Alberta](https://open.alberta.ca/licence)

## Installation

To install the latest release from [CRAN](https://cran.r-project.org)

``` r
install.packages("fishbc")
```

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/fishbc)

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/fishbc")
```

## Demonstration

Get the curated freshwater fish of BC fish codes.

``` r
library(tibble) # for tidy printing
fishbc::freshwaterfish
#> # A tibble: 161 × 18
#>    Code  CommonName  Class Order Family Genus Species Subspecies Species2 Extant
#>    <chr> <chr>       <chr> <chr> <chr>  <chr> <chr>   <chr>      <chr>    <lgl> 
#>  1 AF    All Fish    <NA>  <NA>  <NA>   <NA>  <NA>    <NA>       <NA>     TRUE  
#>  2 SP    Fish Unide… <NA>  <NA>  <NA>   <NA>  <NA>    <NA>       <NA>     TRUE  
#>  3 SG    Sturgeon (… Acti… Acip… Acipe… Acip… <NA>    <NA>       <NA>     TRUE  
#>  4 GSG   Green Stur… Acti… Acip… Acipe… Acip… mediro… <NA>       <NA>     TRUE  
#>  5 WSG   White Stur… Acti… Acip… Acipe… Acip… transm… <NA>       <NA>     TRUE  
#>  6 SH    American S… Acti… Clup… Clupe… Alosa sapidi… <NA>       <NA>     TRUE  
#>  7 SU    Sucker (Ge… Acti… Cypr… Catos… <NA>  <NA>    <NA>       <NA>     TRUE  
#>  8 LSU   Longnose S… Acti… Cypr… Catos… Cato… catost… <NA>       <NA>     TRUE  
#>  9 BSU   Bridgelip … Acti… Cypr… Catos… Cato… columb… <NA>       <NA>     TRUE  
#> 10 WSU   White Suck… Acti… Cypr… Catos… Cato… commer… <NA>       <NA>     TRUE  
#> # ℹ 151 more rows
#> # ℹ 8 more variables: Native <lgl>, Marine <lgl>, Yellow <lgl>, Blue <lgl>,
#> #   Red <lgl>, CDCode <chr>, ABCode <chr>, Ktunaxa <chr>
```

Get the common names for fish codes.

``` r
fishbc::fbc_common_name(c("AF", "WSG", NA, "AF", "NOTACODE"))
#> [1] "All Fish"       "White Sturgeon" NA               "All Fish"      
#> [5] NA
```

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/fishbc/issues).

[Pull requests](https://github.com/poissonconsulting/fishbc/pulls) are
always welcome.

## Code of Conduct

Please note that the fishbc project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

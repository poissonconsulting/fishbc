
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fishbc

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build
status](https://github.com/poissonconsulting/fishbc/workflows/R-CMD-check/badge.svg)](https://github.com/poissonconsulting/fishbc/actions)
[![codecov](https://codecov.io/gh/poissonconsulting/fishbc/branch/master/graph/badge.svg?token=2EvrLVvDcZ)](https://codecov.io/gh/poissonconsulting/fishbc)
[![License:
CCBY4](https://img.shields.io/badge/License-CCBY4-green.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Tinyverse
status](https://tinyverse.netlify.com/badge/fishbc)](https://CRAN.R-project.org/package=fishbc)
[![CRAN
status](https://www.r-pkg.org/badges/version/fishbc)](https://CRAN.R-project.org/package=fishbc)
![CRAN downloads](https://cranlogs.r-pkg.org/badges/fishbc)

<!-- badges: end -->

## Introduction

`fishbc` is an R package that provides provides raw and curated data on
the codes, classification and conservation status of freshwater fishes
in British Columbia. Marine fishes will be added in a future release.

It contains information licensed under the [Open Government Licence –
British
Columbia](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc).

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

``` r
library(tibble) # for tidy printing
fishbc::freshwaterfish
#> # A tibble: 161 x 16
#>    Code  CommonName Class Order Family Genus Species Subspecies Species2 Extant
#>    <chr> <chr>      <chr> <chr> <chr>  <chr> <chr>   <chr>      <chr>    <lgl> 
#>  1 AF    All Fish   <NA>  <NA>  <NA>   <NA>  <NA>    <NA>       <NA>     TRUE  
#>  2 SP    Fish Unid… <NA>  <NA>  <NA>   <NA>  <NA>    <NA>       <NA>     TRUE  
#>  3 SG    Sturgeon … Acti… Acip… Acipe… Acip… <NA>    <NA>       <NA>     TRUE  
#>  4 GSG   Green Stu… Acti… Acip… Acipe… Acip… mediro… <NA>       <NA>     TRUE  
#>  5 WSG   White Stu… Acti… Acip… Acipe… Acip… transm… <NA>       <NA>     TRUE  
#>  6 SH    American … Acti… Clup… Clupe… Alosa sapidi… <NA>       <NA>     TRUE  
#>  7 SU    Sucker (G… Acti… Cypr… Catos… <NA>  <NA>    <NA>       <NA>     TRUE  
#>  8 LSU   Longnose … Acti… Cypr… Catos… Cato… catost… <NA>       <NA>     TRUE  
#>  9 BSU   Bridgelip… Acti… Cypr… Catos… Cato… columb… <NA>       <NA>     TRUE  
#> 10 WSU   White Suc… Acti… Cypr… Catos… Cato… commer… <NA>       <NA>     TRUE  
#> # … with 151 more rows, and 6 more variables: Native <lgl>, Marine <lgl>,
#> #   Yellow <lgl>, Blue <lgl>, Red <lgl>, CDCode <chr>
```

Get the common name for fish codes.

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

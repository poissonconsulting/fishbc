# Common Name

Common Name

## Usage

``` r
fbc_common_name(x)
```

## Arguments

- x:

  A character vector of the provincial fish codes.

## Value

A character vector of the corresponding common names.

## Examples

``` r
fbc_common_name(c("AF", "WSG", NA, "AF", "NOTACODE"))
#> [1] "All Fish"       "White Sturgeon" NA               "All Fish"      
#> [5] NA              
```

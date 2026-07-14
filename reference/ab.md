# Government of Alberta Fish Codes

Official Alberta Fisheries and Wildlife Management Information System
(FWMIS) fish data.

## Usage

``` r
ab
```

## Format

A tbl data frame that includes:

- Species Common Name:

  A character vector of the AB fish species common name.

- Scientific Name:

  A character vector of the AB fish species scientific name.

- Species Code:

  A character vector of the unique data centre fish code.

## Details

Located under `FWMIS fisheries loadforms`

The data is released under the [Open Government Licence -
Alberta](https://open.alberta.ca/licence)

## References

AB Fisheries and Wildlife Management Information System (FWMIS). 2021.
AB Environ. and Parks Edmonton, AB Available:
<https://www.alberta.ca/fisheries-loadforms.aspx> (accessed Feb 9,
2021).

## See also

Other fishcodes:
[`cdc`](https://poissonconsulting.github.io/fishbc/reference/cdc.md),
[`freshwaterfish`](https://poissonconsulting.github.io/fishbc/reference/freshwaterfish.md)

## Examples

``` r
head(ab)
#> # A tibble: 6 × 3
#>   `Species Common Name`         `Scientific Name`           `Species Code`
#>   <chr>                         <chr>                       <chr>         
#> 1 AFRICAN JEWELFISH             HEMICHROMIS BIMACULATUS     AFJW          
#> 2 ARCTIC CHAR                   SALVELINUS ALPINUS          ARCH          
#> 3 ARCTIC GRAYLING               THYMALLUS ARCTICUS          ARGR          
#> 4 ARCTIC GRAYLING (BELLY POPLN) THYMALLUS ARCTICUS MONTANUS AGMN          
#> 5 ARCTIC LAMPREY                LAMPETRA JAPONICA           ARLM          
#> 6 ATHABASCA RAINBOW TROUT       ONCORHYNCHUS MYKISS         ARTR          
```

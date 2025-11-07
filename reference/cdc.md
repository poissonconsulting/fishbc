# BC Conservation Data Centre Fish Codes

Official raw BC Conservation Data Centre (CDC) fish data.

## Usage

``` r
cdc
```

## Format

A tbl data frame that includes:

- Species Code:

  A character vector of the unique data centre fish code.

- BC List:

  A character vector of the BC Conservation Listing.

## Details

The search criteria were `Fish, Freshwater OR Fish, Marine` and the sort
order was `Scientific Name Ascending`.

The data is released under the [Open Government Licence - British
Columbia](https://www2.gov.bc.ca/gov/content/data/open-data/open-government-licence-bc)

## References

B.C. Conservation Data Centre. 2019. BC Species and Ecosystems Explorer.
B.C. Minist. of Environ. Victoria, B.C. Available:
<https://a100.gov.bc.ca/pub/eswp/> (accessed Aug 23, 2019).

## See also

Other fishcodes:
[`ab`](https://poissonconsulting.github.io/fishbc/reference/ab.md),
[`freshwaterfish`](https://poissonconsulting.github.io/fishbc/reference/freshwaterfish.md)

## Examples

``` r
head(cdc)
#> # A tibble: 6 × 45
#>   `Scientific Name` Scientific Name Syno…¹ `English Name` English Name Synonym…²
#>   <chr>             <chr>                  <chr>          <chr>                 
#> 1 Acantholiparis c… NA                     Fanged Snailf… NA                    
#> 2 Acantholiparis o… NA                     Spiny Snailfi… NA                    
#> 3 Acipenser mediro… NA                     Green Sturgeon NA                    
#> 4 Acipenser transm… NA                     White Sturgeon NA                    
#> 5 Acipenser transm… NA                     White Sturgeo… NA                    
#> 6 Acipenser transm… NA                     White Sturgeo… NA                    
#> # ℹ abbreviated names: ¹​`Scientific Name Synonyms`, ²​`English Name Synonyms`
#> # ℹ 41 more variables: `Species Code` <chr>, `Element Code` <chr>,
#> #   `Global Status` <chr>, `Global Status Review Date` <chr>,
#> #   `Prov Status` <chr>, `Prov Status Review Date` <chr>,
#> #   `Prov Status Change Date` <chr>, COSEWIC <chr>, `COSEWIC Comments` <chr>,
#> #   `BC List` <chr>, `Provincial FRPA` <chr>, `Land Use Objectives` <lgl>,
#> #   Ecosection <lgl>, `Prov Wildlife Act` <lgl>, GOERT <lgl>, MBCA <lgl>, …
```

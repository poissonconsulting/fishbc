# BC Fish Data

Curated data on the codes, classification and conservation status of
freshwater fishes in British Columbia.

## Usage

``` r
freshwaterfish
```

## Format

A tbl data frame with 16 columns and 161 rows:

- Code:

  A character vector of the unique provincial fish code.

- CommonName:

  A character vector of the common name.

- Class:

  A character vector of the class.

- Order:

  A character vector of the order.

- Family:

  A character vector of the family.

- Genus:

  A character vector of the genus.

- Species:

  A character vector of the species.

- Subspecies:

  A character vector of the subspecies.

- Species2:

  A character vector of the second species if a hybrid.

- Extant:

  A logical vector indicating whether any of the fishes are extant in
  British Columbia.

- Native:

  A logical vector indicating whether any of the fishes are native to
  British Columbia.

- Marine:

  A logical vector indicating whether a life-stage of any of the fishes
  occur in saltwater in British Columbia.

- Yellow:

  A logical vector indicating whether any of the fishes are yellow
  listed in British Columbia.

- Blue:

  A logical vector indicating whether any of the fishes are blue listed
  in British Columbia.

- Red:

  A logical vector indicating whether any of the fishes are red listed
  in British Columbia.

- CDCode:

  A character vector specifying the BC Conservation Data Centre species
  code.

- ABCode:

  A character vector specifying the AB Fisheries and Wildlife Management
  Information System species code.

## Details

The data includes estuarine fishes and excludes non-finned fishes such
as clams.

## See also

Other fishcodes:
[`ab`](https://poissonconsulting.github.io/fishbc/reference/ab.md),
[`cdc`](https://poissonconsulting.github.io/fishbc/reference/cdc.md)

## Examples

``` r
head(freshwaterfish)
#> # A tibble: 6 × 17
#>   Code  CommonName   Class Order Family Genus Species Subspecies Species2 Extant
#>   <chr> <chr>        <chr> <chr> <chr>  <chr> <chr>   <chr>      <chr>    <lgl> 
#> 1 AF    All Fish     NA    NA    NA     NA    NA      NA         NA       TRUE  
#> 2 SP    Fish Uniden… NA    NA    NA     NA    NA      NA         NA       TRUE  
#> 3 SG    Sturgeon (G… Acti… Acip… Acipe… Acip… NA      NA         NA       TRUE  
#> 4 GSG   Green Sturg… Acti… Acip… Acipe… Acip… mediro… NA         NA       TRUE  
#> 5 WSG   White Sturg… Acti… Acip… Acipe… Acip… transm… NA         NA       TRUE  
#> 6 SH    American Sh… Acti… Clup… Clupe… Alosa sapidi… NA         NA       TRUE  
#> # ℹ 7 more variables: Native <lgl>, Marine <lgl>, Yellow <lgl>, Blue <lgl>,
#> #   Red <lgl>, CDCode <chr>, ABCode <chr>
```

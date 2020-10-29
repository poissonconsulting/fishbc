library(readr)

cdc <- readr::read_csv("data-raw/cdc/cdc.csv")
freshwaterfish <- readr::read_csv("data-raw/freshwaterfish/freshwaterfish.csv")
whse_fish_species_cd <- readr::read_csv("data-raw/whse_fish_species_cd/whse_fish_species_cd.csv")

freshwaterfish <- freshwaterfish[order(freshwaterfish$Class, freshwaterfish$Order, freshwaterfish$Family,
  freshwaterfish$Genus, freshwaterfish$Species, freshwaterfish$Subspecies,
  freshwaterfish$Species2, freshwaterfish$Code,
  na.last = FALSE
), ]

whse_fish_species_cd$SPECIES_ID <- as.integer(whse_fish_species_cd$SPECIES_ID)

# remove marked utf-8 character
cdc$`COSEWIC Comments` <- gsub("†", "", cdc$`COSEWIC Comments`)

usethis::use_data(cdc, overwrite = TRUE)
usethis::use_data(freshwaterfish, overwrite = TRUE)
usethis::use_data(whse_fish_species_cd, overwrite = TRUE, internal = TRUE)

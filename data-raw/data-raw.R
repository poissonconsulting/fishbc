library(readr)

cdc <- readr::read_csv("data-raw/cdc/cdc.csv")
freshwaterfish <- readxl::read_xlsx("data-raw/freshwaterfish/freshwaterfish.xlsx",
                                    na = c("", "NA"))
whse_fish_species_cd <- readr::read_csv("data-raw/whse_fish_species_cd/whse_fish_species_cd.csv")
ab <- readxl::read_excel("data-raw/ab/ep-fwmis-fisheries-loadform.xls", sheet = 11)

freshwaterfish <- freshwaterfish[order(freshwaterfish$Class, freshwaterfish$Order, freshwaterfish$Family,
  freshwaterfish$Genus, freshwaterfish$Species, freshwaterfish$Subspecies,
  freshwaterfish$Species2, freshwaterfish$Code,
  na.last = FALSE
), ]

whse_fish_species_cd$SPECIES_ID <- as.integer(whse_fish_species_cd$SPECIES_ID)

# remove marked utf-8 character
cdc$`COSEWIC Comments` <- gsub("†", "", cdc$`COSEWIC Comments`)

chk::check_key(freshwaterfish, "Code")
chk::check_key(cdc, "Species Code")
chk::check_key(ab, "Species Code")
chk::check_key(whse_fish_species_cd, "CODE")

chk::chk_join(freshwaterfish[!is.na(freshwaterfish$ABCode),], ab, by = c("ABCode" = "Species Code"))
chk::chk_join(freshwaterfish[!is.na(freshwaterfish$CDCode),], cdc, by = c("CDCode" = "Species Code"))

usethis::use_data(cdc, overwrite = TRUE)
usethis::use_data(freshwaterfish, overwrite = TRUE)
usethis::use_data(whse_fish_species_cd, overwrite = TRUE, internal = TRUE)
usethis::use_data(ab, overwrite = TRUE)

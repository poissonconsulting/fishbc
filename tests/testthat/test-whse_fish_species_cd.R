test_that("whse_fish_species_cd", {
  expect_error(chk::check_data(
    fishbc:::whse_fish_species_cd,
    values = list(SPECIES_ID = c(1L, 192L),
                  CODE = "",
                  NAME = "",
                  CDCGR_CODE = c("", NA),
                  CDCLR_CODE = c("", NA),
                  SCIENTIFIC_NAME = c("", NA),
                  SPCTYPE_CODE = "",
                  SPCGRP_CODE = c("", NA)
                  ),
    nrow = 192,
    key = "SPECIES_ID"), NA)

  chk::check_key(fishbc:::whse_fish_species_cd, "CODE")
  chk::check_key(fishbc:::whse_fish_species_cd, "NAME")

  chk::chk_join(fishbc::freshwaterfish, fishbc:::whse_fish_species_cd,
                by = c(Code = "CODE"))
})

test_that("freshwaterfish", {
  expect_true(chk::vld_s3_class(freshwaterfish, "data.frame"))

  expect_true(chk::vld_identical(
    colnames(freshwaterfish),
    c(
      "Code", "CommonName", "Class", "Order",
      "Family", "Genus",
      "Species", "Subspecies", "Species2", "Extant",
      "Native",
      "Marine", "Yellow", "Blue", "Red", "CDCode",
      "ABCode"
    )
  ))

  expect_true(chk::vld_s3_class(freshwaterfish$Code, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$CommonName, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Class, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Order, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Family, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Genus, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Species, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Subspecies, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Species2, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$Extant, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$Native, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$Marine, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$Yellow, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$Blue, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$Red, "logical"))
  expect_true(chk::vld_s3_class(freshwaterfish$CDCode, "character"))
  expect_true(chk::vld_s3_class(freshwaterfish$ABCode, "character"))

  expect_true(chk::vld_not_any_na(freshwaterfish$Code))
  expect_true(chk::vld_not_any_na(freshwaterfish$CommonName))
  expect_true(chk::vld_not_any_na(freshwaterfish$Extant))
  expect_true(chk::vld_not_any_na(freshwaterfish$Native))
  expect_true(chk::vld_not_any_na(freshwaterfish$Marine))
  expect_true(chk::vld_not_any_na(freshwaterfish$Yellow))
  expect_true(chk::vld_not_any_na(freshwaterfish$Blue))
  expect_true(chk::vld_not_any_na(freshwaterfish$Red))

  expect_true(chk::vld_unique(freshwaterfish$Code))
  expect_true(chk::vld_unique(freshwaterfish$CommonName))

  expect_true(all(freshwaterfish$Native | (!freshwaterfish$Yellow & !freshwaterfish$Blue & !freshwaterfish$Red)))
  expect_true(all(freshwaterfish$Extant | (!freshwaterfish$Yellow & !freshwaterfish$Blue & !freshwaterfish$Red)))

  expect_true(all(ifelse(!is.na(freshwaterfish$Species2), !is.na(freshwaterfish$Species), TRUE)))

  expect_true(all(ifelse(!is.na(freshwaterfish$Subspecies), !is.na(freshwaterfish$Species), TRUE)))
  expect_true(all(ifelse(!is.na(freshwaterfish$Species), !is.na(freshwaterfish$Genus), TRUE)))
  expect_true(all(ifelse(!is.na(freshwaterfish$Genus), !is.na(freshwaterfish$Family), TRUE)))
  expect_true(all(ifelse(!is.na(freshwaterfish$Family), !is.na(freshwaterfish$Order), TRUE)))
  expect_true(all(ifelse(!is.na(freshwaterfish$Order), !is.na(freshwaterfish$Class), TRUE)))

  expect_true(!anyDuplicated(unique(freshwaterfish[!is.na(freshwaterfish$Genus), c("Family", "Genus")])$Genus))
  expect_true(!anyDuplicated(unique(freshwaterfish[!is.na(freshwaterfish$Family), c("Order", "Family")])$Family))
  expect_true(!anyDuplicated(unique(freshwaterfish[!is.na(freshwaterfish$Order), c("Class", "Order")])$Order))

  expect_null(chk::chk_join(freshwaterfish[!is.na(freshwaterfish$ABCode),], ab, by = c("ABCode" = "Species Code")))
  expect_null(chk::chk_join(freshwaterfish[!is.na(freshwaterfish$CDCode),], cdc, by = c("CDCode" = "Species Code")))
})

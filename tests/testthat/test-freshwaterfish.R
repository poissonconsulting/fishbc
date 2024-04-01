test_that("freshwaterfish", {

  expect_true(chk::vld_data(freshwaterfish))

  expect_snapshot({
    print(freshwaterfish, width = 300, n = 200)
  })

  expect_true(chk::vld_identical(
    colnames(freshwaterfish),
    c(
      "Code", "CommonName", "Class", "Order",
      "Family", "Genus",
      "Species", "Subspecies", "Species2", "Extant",
      "Native",
      "Marine", "Yellow", "Blue", "Red", "CDCode",
      "ABCode", "Ktunaxa"
    )
  ))

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

  expect_true(chk::vld_data(chk::chk_join(freshwaterfish[!is.na(freshwaterfish$ABCode),], ab, by = c("ABCode" = "Species Code"))))
  expect_true(chk::vld_data(chk::chk_join(freshwaterfish[!is.na(freshwaterfish$CDCode),], cdc, by = c("CDCode" = "Species Code"))))
})

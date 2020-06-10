test_that("common_name", {
  expect_identical(fbc_common_name(character(0)), character(0))
  expect_identical(fbc_common_name(NA_character_), NA_character_)
  expect_error(fbc_common_name(factor("AF")))
  expect_identical(fbc_common_name("AF"), "All Fish")
  expect_identical(fbc_common_name("A"), NA_character_)
  expect_identical(fbc_common_name(c("AF", "WSG", NA, "AF", "NOTACODE")),
                   c("All Fish", "White Sturgeon", NA, "All Fish", NA))
})

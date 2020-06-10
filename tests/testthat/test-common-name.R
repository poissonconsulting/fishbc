test_that("common_name", {
  expect_identical(sbf_common_name(character(0)), character(0))
  expect_identical(sbf_common_name(NA_character_), NA_character_)
  expect_error(sbf_common_name(factor("AF")))
  expect_identical(sbf_common_name("AF"), "All Fish")
  expect_identical(sbf_common_name(c("AF", "WSG", NA, "AF", "NOTACODE")),
                   c("All Fish", "White Sturgeon", NA, "All Fish", NA))
})

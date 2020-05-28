context("cdc")

test_that("cdc", {
  expect_true(chk::vld_s3_class(cdc, "data.frame"))
  expect_true(chk::vld_subset(c("Species Code", "BC List"), colnames(cdc)))

  expect_true(chk::vld_s3_class(cdc$`Species Code`, "character"))
  expect_true(chk::vld_s3_class(cdc$`BC List`, "character"))

  expect_true(chk::vld_not_any_na(cdc$`Species Code`))
  expect_true(chk::vld_not_any_na(cdc$`BC List`))

  expect_true(chk::vld_unique(cdc$`Species Code`))
  expect_true(chk::vld_subset(
    cdc$`BC List`,
    c("Blue", "Exotic", "Extinct", "No Status", "Red", "Unknown", "Yellow")
  ))
})

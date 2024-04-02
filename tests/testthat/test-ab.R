test_that("ab", {
  expect_true(chk::vld_data(ab))

  expect_snapshot({
    print(ab, width = 200, n = 200)
  })

  expect_true(chk::vld_subset(c("Species Common Name", "Scientific Name", "Species Code"), colnames(ab)))

  expect_true(chk::vld_s3_class(ab$`Species Common Name`, "character"))
  expect_true(chk::vld_s3_class(ab$`Scientific Name`, "character"))
  expect_true(chk::vld_s3_class(ab$`Species Code`, "character"))

  expect_true(chk::vld_not_any_na(ab$`Species Common Name`))
  expect_true(chk::vld_not_any_na(ab$`Scientific Name`))
  expect_true(chk::vld_not_any_na(ab$`Species Code`))

  expect_true(chk::vld_unique(ab$`Species Code`))
}
)


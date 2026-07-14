roxygen2md::roxygen2md()

lintr::lint_package(
  linters = lintr::linters_with_defaults(
    line_length_linter = lintr::line_length_linter(1000),
    object_name_linter = lintr::object_name_linter(regexes = ".*")
  )
)

lintr::lint_package()

devtools::test()
devtools::document()

# Note: Only use pkgdown to build a documentation website for public facing packages
pkgdown::build_reference()
pkgdown::build_site()

devtools::check()

# Test files that have less then 100% coverage
covr:::tally_coverage(covr::package_coverage()) |>
  dplyr::summarize(
    percent_coverage = mean(value > 0) * 100,
    .by = filename
  ) |>
  dplyr::filter(percent_coverage < 100) |>
  dplyr::arrange(percent_coverage)

# Report for all test files
covr::report(covr::package_coverage())

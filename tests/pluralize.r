context("Pluralize")
test_that("Returns the plural for a standard substitution", {

  expect_equal(pluralize_gift("house"), "houses")
})

test_that("Goose gets turned to geese", {
  expect_equal(pluralize_gift("goose"), "geese")
})

test_that("Lady gets turned to ladies", {
  expect_equal(pluralize_gift("lady"), "ladies")
})

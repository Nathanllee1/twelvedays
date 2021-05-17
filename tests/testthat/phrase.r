context("Make Phrase")
test_that("Tests a verb", {
  expect_equal(make_phrase(3, "three", "horses", "neighing", "", ""), "three horses neighing")
})

test_that("Tests an adjective", {
  expect_equal(make_phrase(3, "three", "people", "", "lovely", ""), "three lovely people")
})

test_that("Tests a location", {
  expect_equal(make_phrase(3, "three", "fruit", "", "", "in a loop"), "three fruit in a loop")
})

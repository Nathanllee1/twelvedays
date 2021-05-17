context("Tests Sing Day")

test <- data.frame("Full.Phrase"=c("three horses neighing", "two lovely people", "a fruit in a loop"), "Day.in.Words"=c("three", "two", "a"))

test_that("Sings one day", {
  expect_equal(sing_day(test, 1, "Full.Phrase"), "On the three day of Christmas, my true love sent to me,\nthree horses neighing.")

})

test_that("Signs three days", {
  expect_equal(sing_day(test, 3, "Full.Phrase"), "On the a day of Christmas, my true love sent to me,\na fruit in a loop,\ntwo lovely people,\nand three horses neighing.")
})

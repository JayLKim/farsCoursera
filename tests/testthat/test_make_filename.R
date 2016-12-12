context("Is a file name correctly generated?")

test_that("make_filename should make an appropriate file name.", {
    expect_that(make_filename(2013), equals("accident_2013.csv.bz2"))
})

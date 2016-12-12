context("Testing a class of an imported data object")

test_that("An imported data object should be a data.frame, tbl, and tbl_df.", {
    paths <- system.file("extdata", package = "farsCoursera")
    obj <- fars_read(file.path(paths, "accident_2013.csv.bz2"))
    expect_that(obj, is_a("data.frame"))
    expect_that(obj, is_a("tbl"))
    expect_that(obj, is_a("tbl_df"))
})

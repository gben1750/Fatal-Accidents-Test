library(testthat)
library(Fatality.Reporting.System)

# test_check("Fatality.Reporting.System")
context("Correct NUmber Exists")

test_that("Test number of records in 2013 dataset should equal 30202", {
  fileName = 'accident_2013_test.csv'
  tbl <- fars_read(fileName)
  expect_equal(nrow(tbl), 30202)
})

test_that("Test number of records in 2013 dataset should equal 30202", {
  fileName = 'accident_2013_test.csv'
  tbl <- fars_read(fileName)
  expect_equal(nrow(tbl), 30202)
})

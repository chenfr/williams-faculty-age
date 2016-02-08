context("Test for functiom 'mean_faculty'")

test_that("mean_function estimates age", {

  result.1 <- williamsfacultyage:::mean_faculty()
  result.2 <- williamsfacultyage:::mean_faculty(clean_df2013)
  result.3 <- williamsfacultyage:::mean_faculty(clean_df2012)
  result.4 <- williamsfacultyage:::mean_faculty(clean_df2011)

  expectedValue <- 48.82289
  expectedValue2 <- 48.84424
  expectedValue3 <- 49.57738
  expectedValue4 <- 49.54915

  expect_equal(result.1, expectedValue, tolerance=0.05)
  expect_equal(result.2, expectedValue2, tolerance=0.05)
  expect_equal(result.3, expectedValue3, tolerance=0.05)
  expect_equal(result.4, expectedValue4, tolerance=0.05)
})

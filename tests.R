library(testthat)

########### 
# Case Study 01
context("Case Study 01")

f_cs01="../../week_01/case_study_01.R"

test_that(paste0(f_cs01, " file exists"),{
  expect_true(file.exists(f_cs01))
})

source(f_cs01)

test_that("petal_length_mean",{
  expect_true(exists("petal_length_mean"))
  expect_equal(petal_length_mean, 3.758)
})

########### 
# Case Study 02
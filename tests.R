library(testthat)
##########
# Initial Commit
# 
context("Task 03 - Create Repository and Edit Readme")

test_that(paste0("README has been edited"),{
  object=scan("README.md",what = "char",quiet=T)
  expected=c("Repository","to","hold","class","activities","for","GEO511")
  expect_false(all.equal(object,expected),"README has not been edited. Please edit the readme and commit your changes.")
})



########### 
# Case Study 01

# Case study script
context("Case Study 01 - File Exists")
f_cs01="../../week_01/case_study_01.R"

test_that(paste0(f_cs01, " file exists"),{
  expect_true(file.exists(f_cs01))
})

context("Case Study 01 - File runs")
source(f_cs01)

context("Case Study 01 - Results")

test_that("petal_length_mean",{
  expect_true(exists("petal_length_mean"))
  expect_equal(petal_length_mean, 3.758)
})


########### 
# Case Study 02

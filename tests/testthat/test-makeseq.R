test_that("makeseq gives out right SEQUENCE LENGTH", {
  expect_equal(nchar(makeseq(10)), 10)
})

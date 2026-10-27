test_that("RNA is divided into correct codons", {
  result <- dividing_codons("AUGCCGUAA")

  expect_equal(result, c("AUG", "CCG", "UAA"))
})

test_that("Incomplete codons are excluded", {
  result <- dividing_codons("AUGCCGUA")

  expect_equal(result, c("AUG", "CCG"))
})

test_that("Starting position changes the reading frame", {
  result <- dividing_codons("AUGCCGUAA", start = 2)

  expect_equal(result, c("UGC", "CGU"))
})

test_that("Function returns a character vector", {
  result <- dividing_codons("AUGCCGUAA")

  expect_type(result, "character")
})




test_that("vips_array works", {

  input <- 1:3
  res <- vips_array(input)
  expect_identical(res, "1 2 3")

  input <- 1
  res <- vips_array(input)
  expect_identical(res, "1")

  input <- c('a', 'b', 'cdef')
  res <- vips_array(input)
  expect_identical(res, "a b cdef")

})

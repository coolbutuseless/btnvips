test_that("as_cli_string works", {

  expect_error(as_cli_string(1:2), 'length')
  expect_error(as_cli_string(mtcars), 'no applicable method')

  expect_identical(as_cli_string(1), as.character(1))
  expect_identical(as_cli_string(1L), as.character(1))

  expect_identical(as_cli_string('a'), 'a')
  expect_identical(as_cli_string(TRUE), as.character(TRUE))


})

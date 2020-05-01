test_that("Vips works", {
  v <- Vips$new()

  expect_type(v$commands(), 'character')
  expect_type(v$help('jpegsave'), 'character')
  expect_error(v$help('crap'), 'No such')

  infile <- system.file('img', 'magpie.jpg', package = 'btnvips')
  outfile <- "dummy.jpg"
  v$jpegsave(in_ = infile, filename = outfile)

  expect_identical(
    v$as_character(),
    paste0("vips jpegsave ", infile, " dummy.jpg")
  )

  expect_identical(
    as.character(v),
    paste0("vips jpegsave ", infile, " dummy.jpg")
  )


  # This command should work
  outfile <- tempfile(fileext = ".jpg")
  v <- Vips$new()
  v$jpegsave(in_ = infile, filename = outfile, Q = 70)

  res <- v$run()
  expect_equal(res$status, 0)


  # And this
  outfile <- tempfile(fileext = ".jpg")
  v$jpegsave(in_ = infile, filename = outfile, Q = 70, interlace = TRUE)

  res <- v$run()
  expect_equal(res$status, 0)

  # run with increased verbosity
  res <- v$run(verbosity = 2)
  expect_equal(res$status, 0)



  # The command is good but the options are bad
  infile  <- "fake/fake.jpg"
  outfile <- tempfile(fileext = ".jpg")
  v$jpegsave(in_ = infile, filename = outfile)

  expect_error(v$run(), class = 'simpleError')


  # The command is bad
  expect_error(v$set_command('greg'), "Unknown option")


  # Too many required arguments
  expect_error(v$set_command('jpegsave', required = list(1, 2, 3)), "too many arguments")


  # unknown optional argument
  expect_error(v$set_command('jpegsave', required = list(1, 2), optional = list(crap = 3)), "Unknown optional argument")

  # unnamed optional argument
  expect_error(v$set_command('jpegsave', required = list(1, 2), optional = list(3)), "must be named")


  v$print() # doesn't fail.


  res <- vips_array(1, 2, 3)
  expect_identical(res, "1 2 3")

  res <- vips_array_files("a.jpg", "b c.jpg")
  expect_identical(res, "a.jpg b\\ c.jpg")

  v <- Vips$new()
  v$arrayjoin(in_ = vips_array_files(c('a.jpg', 'b c.jpg')), out = 'outfile.jpg')
  v

})

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'system' run an external command
# usage:
#    system cmd-format [--option-name option-value ...]
# where:
#    cmd-format   - Command to run, input gchararray
# optional arguments:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
#    log          - Command log, output gchararray
#    out-format   - Format for output filename, input gchararray
#    in-format    - Format for input filename, input gchararray
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'system', function(cmd_format, in_=NULL, out=NULL, log=NULL, out_format=NULL, in_format=NULL) {
  required <- list(cmd_format)
  optional <- list(`in_` = in_, `out` = out, `log` = log, `out-format` = out_format, `in-format` = in_format)
  
  self$set_command('system', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'add' add two images
# usage:
#    add left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'add', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('add', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'subtract' subtract two images
# usage:
#    subtract left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'subtract', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('subtract', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'multiply' multiply two images
# usage:
#    multiply left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'multiply', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('multiply', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'divide' divide two images
# usage:
#    divide left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'divide', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('divide', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'relational' relational operation on two images
# usage:
#    relational left right out relational [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
#    relational   - relational to perform, input VipsOperationRelational
# 			default: equal
# 			allowed: equal, noteq, less, lesseq, more, moreeq
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'relational', function(left, right, out, relational) {
  required <- list(left, right, out, relational)
  optional <- list()
  
  self$set_command('relational', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'remainder' remainder after integer division of two images
# usage:
#    remainder left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'remainder', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('remainder', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'boolean' boolean operation on two images
# usage:
#    boolean left right out boolean [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
#    boolean      - boolean to perform, input VipsOperationBoolean
# 			default: and
# 			allowed: and, or, eor, lshift, rshift
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'boolean', function(left, right, out, boolean) {
  required <- list(left, right, out, boolean)
  optional <- list()
  
  self$set_command('boolean', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'math2' binary math operations
# usage:
#    math2 left right out math2 [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
#    math2        - math to perform, input VipsOperationMath2
# 			default: pow
# 			allowed: pow, wop
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'math2', function(left, right, out, math2) {
  required <- list(left, right, out, math2)
  optional <- list()
  
  self$set_command('math2', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'complex2' complex binary operations on two images
# usage:
#    complex2 left right out cmplx [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
#    cmplx        - binary complex operation to perform, input VipsOperationComplex2
# 			default: cross-phase
# 			allowed: cross-phase
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'complex2', function(left, right, out, cmplx) {
  required <- list(left, right, out, cmplx)
  optional <- list()
  
  self$set_command('complex2', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'complexform' form a complex image from two real images
# usage:
#    complexform left right out [--option-name option-value ...]
# where:
#    left         - Left-hand image argument, input VipsImage
#    right        - Right-hand image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'complexform', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('complexform', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sum' sum an array of images
# usage:
#    sum in out [--option-name option-value ...]
# where:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sum', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('sum', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'invert' invert an image
# usage:
#    invert in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'invert', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('invert', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'linear' calculate (a * in + b)
# usage:
#    linear in out a b [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    a            - Multiply by this, input VipsArrayDouble
#    b            - Add this, input VipsArrayDouble
# optional arguments:
#    uchar        - Output should be uchar, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'linear', function(in_, out, a, b, uchar=NULL) {
  required <- list(in_, out, a, b)
  optional <- list(`uchar` = uchar)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('linear', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'math' apply a math operation to an image
# usage:
#    math in out math [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    math         - math to perform, input VipsOperationMath
# 			default: sin
# 			allowed: sin, cos, tan, asin, acos, atan, log, log10, exp, exp10
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'math', function(in_, out, math) {
  required <- list(in_, out, math)
  optional <- list()
  
  self$set_command('math', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'abs' absolute value of an image
# usage:
#    abs in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'abs', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('abs', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sign' unit vector of pixel
# usage:
#    sign in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sign', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('sign', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'round' perform a round function on an image
# usage:
#    round in out round [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    round        - rounding operation to perform, input VipsOperationRound
# 			default: rint
# 			allowed: rint, ceil, floor
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'round', function(in_, out, round) {
  required <- list(in_, out, round)
  optional <- list()
  
  self$set_command('round', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'relational_const' relational operations against a constant
# usage:
#    relational_const in out relational c [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    relational   - relational to perform, input VipsOperationRelational
# 			default: equal
# 			allowed: equal, noteq, less, lesseq, more, moreeq
#    c            - Array of constants, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'relational_const', function(in_, out, relational, c) {
  required <- list(in_, out, relational, c)
  optional <- list()
  
  self$set_command('relational_const', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'remainder_const' remainder after integer division of an image and a constant
# usage:
#    remainder_const in out c [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    c            - Array of constants, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'remainder_const', function(in_, out, c) {
  required <- list(in_, out, c)
  optional <- list()
  
  self$set_command('remainder_const', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'boolean_const' boolean operations against a constant
# usage:
#    boolean_const in out boolean c [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    boolean      - boolean to perform, input VipsOperationBoolean
# 			default: and
# 			allowed: and, or, eor, lshift, rshift
#    c            - Array of constants, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'boolean_const', function(in_, out, boolean, c) {
  required <- list(in_, out, boolean, c)
  optional <- list()
  
  self$set_command('boolean_const', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'math2_const' binary math operations with a constant
# usage:
#    math2_const in out math2 c [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    math2        - math to perform, input VipsOperationMath2
# 			default: pow
# 			allowed: pow, wop
#    c            - Array of constants, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'math2_const', function(in_, out, math2, c) {
  required <- list(in_, out, math2, c)
  optional <- list()
  
  self$set_command('math2_const', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'complex' perform a complex operation on an image
# usage:
#    complex in out cmplx [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    cmplx        - complex to perform, input VipsOperationComplex
# 			default: polar
# 			allowed: polar, rect, conj
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'complex', function(in_, out, cmplx) {
  required <- list(in_, out, cmplx)
  optional <- list()
  
  self$set_command('complex', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'complexget' get a component from a complex image
# usage:
#    complexget in out get [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    get          - complex to perform, input VipsOperationComplexget
# 			default: real
# 			allowed: real, imag
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'complexget', function(in_, out, get) {
  required <- list(in_, out, get)
  optional <- list()
  
  self$set_command('complexget', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'avg' find image average
# usage:
#    avg in [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
# outputs:
#    out          - Output value, output gdouble
# 			default: 0
# 			min: -inf, max: inf
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'avg', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('avg', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'min' find image minimum
# usage:
#    min in [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
# outputs:
#    out          - Output value, output gdouble
# 			default: 0
# 			min: -inf, max: inf
# optional arguments:
#    x            - Horizontal position of minimum, output gint
# 			default: 0
# 			min: 0, max: 10000000
#    y            - Vertical position of minimum, output gint
# 			default: 0
# 			min: 0, max: 10000000
#    size         - Number of minimum values to find, input gint
# 			default: 10
# 			min: 1, max: 1000000
#    out-array    - Array of output values, output VipsArrayDouble
#    x-array      - Array of horizontal positions, output VipsArrayInt
#    y-array      - Array of vertical positions, output VipsArrayInt
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'min', function(in_, out, x=NULL, y=NULL, size=NULL, out_array=NULL, x_array=NULL, y_array=NULL) {
  required <- list(in_, out)
  optional <- list(`x` = x, `y` = y, `size` = size, `out-array` = out_array, `x-array` = x_array, `y-array` = y_array)
  
  self$set_command('min', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'max' find image maximum
# usage:
#    max in [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
# outputs:
#    out          - Output value, output gdouble
# 			default: 0
# 			min: -inf, max: inf
# optional arguments:
#    x            - Horizontal position of maximum, output gint
# 			default: 0
# 			min: 0, max: 10000000
#    y            - Vertical position of maximum, output gint
# 			default: 0
# 			min: 0, max: 10000000
#    size         - Number of maximum values to find, input gint
# 			default: 10
# 			min: 1, max: 1000000
#    out-array    - Array of output values, output VipsArrayDouble
#    x-array      - Array of horizontal positions, output VipsArrayInt
#    y-array      - Array of vertical positions, output VipsArrayInt
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'max', function(in_, out, x=NULL, y=NULL, size=NULL, out_array=NULL, x_array=NULL, y_array=NULL) {
  required <- list(in_, out)
  optional <- list(`x` = x, `y` = y, `size` = size, `out-array` = out_array, `x-array` = x_array, `y-array` = y_array)
  
  self$set_command('max', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'deviate' find image standard deviation
# usage:
#    deviate in [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
# outputs:
#    out          - Output value, output gdouble
# 			default: 0
# 			min: -inf, max: inf
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'deviate', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('deviate', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'stats' find many image stats
# usage:
#    stats in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output array of statistics, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'stats', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('stats', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_find' find image histogram
# usage:
#    hist_find in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output histogram, output VipsImage
# optional arguments:
#    band         - Find histogram of band, input gint
# 			default: -1
# 			min: -1, max: 100000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_find', function(in_, out, band=NULL) {
  required <- list(in_, out)
  optional <- list(`band` = band)
  
  self$set_command('hist_find', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_find_ndim' find n-dimensional image histogram
# usage:
#    hist_find_ndim in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output histogram, output VipsImage
# optional arguments:
#    bins         - Number of bins in each dimension, input gint
# 			default: 10
# 			min: 1, max: 65536
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_find_ndim', function(in_, out, bins=NULL) {
  required <- list(in_, out)
  optional <- list(`bins` = bins)
  
  self$set_command('hist_find_ndim', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_find_indexed' find indexed image histogram
# usage:
#    hist_find_indexed in index out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    index        - Index image, input VipsImage
#    out          - Output histogram, output VipsImage
# optional arguments:
#    combine      - Combine bins like this, input VipsCombine
# 			default: sum
# 			allowed: max, sum, min
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_find_indexed', function(in_, index, out, combine=NULL) {
  required <- list(in_, index, out)
  optional <- list(`combine` = combine)
  
  self$set_command('hist_find_indexed', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hough_line' find hough line transform
# usage:
#    hough_line in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    width        - horizontal size of parameter space, input gint
# 			default: 256
# 			min: 1, max: 100000
#    height       - Vertical size of parameter space, input gint
# 			default: 256
# 			min: 1, max: 100000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hough_line', function(in_, out, width=NULL, height=NULL) {
  required <- list(in_, out)
  optional <- list(`width` = width, `height` = height)
  
  self$set_command('hough_line', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hough_circle' find hough circle transform
# usage:
#    hough_circle in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    scale        - Scale down dimensions by this factor, input gint
# 			default: 3
# 			min: 1, max: 100000
#    min-radius   - Smallest radius to search for, input gint
# 			default: 10
# 			min: 1, max: 100000
#    max-radius   - Largest radius to search for, input gint
# 			default: 20
# 			min: 1, max: 100000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hough_circle', function(in_, out, scale=NULL, min_radius=NULL, max_radius=NULL) {
  required <- list(in_, out)
  optional <- list(`scale` = scale, `min-radius` = min_radius, `max-radius` = max_radius)
  
  self$set_command('hough_circle', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'project' find image projections
# usage:
#    project in columns rows [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    columns      - Sums of columns, output VipsImage
#    rows         - Sums of rows, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'project', function(in_, columns, rows) {
  required <- list(in_, columns, rows)
  optional <- list()
  
  self$set_command('project', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'profile' find image profiles
# usage:
#    profile in columns rows [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    columns      - First non-zero pixel in column, output VipsImage
#    rows         - First non-zero pixel in row, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'profile', function(in_, columns, rows) {
  required <- list(in_, columns, rows)
  optional <- list()
  
  self$set_command('profile', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'measure' measure a set of patches on a color chart
# usage:
#    measure in out h v [--option-name option-value ...]
# where:
#    in           - Image to measure, input VipsImage
#    out          - Output array of statistics, output VipsImage
#    h            - Number of patches across chart, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    v            - Number of patches down chart, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    left         - Left edge of extract area, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    top          - Top edge of extract area, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    width        - Width of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Height of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'measure', function(in_, out, h, v, left=NULL, top=NULL, width=NULL, height=NULL) {
  required <- list(in_, out, h, v)
  optional <- list(`left` = left, `top` = top, `width` = width, `height` = height)
  
  self$set_command('measure', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'getpoint' read a point from an image
# usage:
#    getpoint in x y [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    x            - Point to read, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    y            - Point to read, input gint
# 			default: 0
# 			min: 0, max: 10000000
# outputs:
#    out-array    - Array of output values, output VipsArrayDouble
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'getpoint', function(in_, x, y, out_array) {
  required <- list(in_, x, y, out_array)
  optional <- list()
  
  self$set_command('getpoint', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'find_trim' search an image for non-edge areas
# usage:
#    find_trim in [--option-name option-value ...]
# where:
#    in           - Image to find_trim, input VipsImage
# outputs:
#    left         - Left edge of image, output gint
# 			default: 1
# 			min: 0, max: 10000000
#    top          - Top edge of extract area, output gint
# 			default: 0
# 			min: 0, max: 10000000
#    width        - Width of extract area, output gint
# 			default: 1
# 			min: 0, max: 10000000
#    height       - Height of extract area, output gint
# 			default: 1
# 			min: 0, max: 10000000
# optional arguments:
#    threshold    - Object threshold, input gdouble
# 			default: 10
# 			min: 0, max: inf
#    background   - Color for background pixels, input VipsArrayDouble
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'find_trim', function(in_, left, top, width, height, threshold=NULL, background=NULL) {
  required <- list(in_, left, top, width, height)
  optional <- list(`threshold` = threshold, `background` = background)
  
  self$set_command('find_trim', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'copy' copy an image
# usage:
#    copy in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    width        - Image width in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    bands        - Number of bands in image, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    format       - Pixel format in image, input VipsBandFormat
# 			default: uchar
# 			allowed: notset, uchar, char, ushort, short, uint, int, float, complex, double, dpcomplex
#    coding       - Pixel coding, input VipsCoding
# 			default: none
# 			allowed: error, none, labq, rad
#    interpretation - Pixel interpretation, input VipsInterpretation
# 			default: multiband
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
#    xres         - Horizontal resolution in pixels/mm, input gdouble
# 			default: 0
# 			min: -0, max: 1e+06
#    yres         - Vertical resolution in pixels/mm, input gdouble
# 			default: 0
# 			min: -0, max: 1e+06
#    xoffset      - Horizontal offset of origin, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    yoffset      - Vertical offset of origin, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'copy', function(in_, out, width=NULL, height=NULL, bands=NULL, format=NULL, coding=NULL, interpretation=NULL, xres=NULL, yres=NULL, xoffset=NULL, yoffset=NULL) {
  required <- list(in_, out)
  optional <- list(`width` = width, `height` = height, `bands` = bands, `format` = format, `coding` = coding, `interpretation` = interpretation, `xres` = xres, `yres` = yres, `xoffset` = xoffset, `yoffset` = yoffset)
  
  self$set_command('copy', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tilecache' cache an image as a set of tiles
# usage:
#    tilecache in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    tile-width   - Tile width in pixels, input gint
# 			default: 128
# 			min: 1, max: 1000000
#    tile-height  - Tile height in pixels, input gint
# 			default: 128
# 			min: 1, max: 1000000
#    max-tiles    - Maximum number of tiles to cache, input gint
# 			default: 1000
# 			min: -1, max: 1000000
#    access       - Expected access pattern, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    threaded     - Allow threaded access, input gboolean
# 			default: false
#    persistent   - Keep cache between evaluations, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tilecache', function(in_, out, tile_width=NULL, tile_height=NULL, max_tiles=NULL, access=NULL, threaded=NULL, persistent=NULL) {
  required <- list(in_, out)
  optional <- list(`tile-width` = tile_width, `tile-height` = tile_height, `max-tiles` = max_tiles, `access` = access, `threaded` = threaded, `persistent` = persistent)
  for (opt_name in c('threaded', 'persistent')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tilecache', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'linecache' cache an image as a set of lines
# usage:
#    linecache in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    tile-height  - Tile height in pixels, input gint
# 			default: 128
# 			min: 1, max: 1000000
#    access       - Expected access pattern, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    threaded     - Allow threaded access, input gboolean
# 			default: false
#    persistent   - Keep cache between evaluations, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'linecache', function(in_, out, tile_height=NULL, access=NULL, threaded=NULL, persistent=NULL) {
  required <- list(in_, out)
  optional <- list(`tile-height` = tile_height, `access` = access, `threaded` = threaded, `persistent` = persistent)
  for (opt_name in c('threaded', 'persistent')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('linecache', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sequential' check sequential access
# usage:
#    sequential in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    tile-height  - Tile height in pixels, input gint
# 			default: 1
# 			min: 1, max: 1000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sequential', function(in_, out, tile_height=NULL) {
  required <- list(in_, out)
  optional <- list(`tile-height` = tile_height)
  
  self$set_command('sequential', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'cache' cache an image
# usage:
#    cache in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    max-tiles    - Maximum number of tiles to cache, input gint
# 			default: 1000
# 			min: -1, max: 1000000
#    tile-height  - Tile height in pixels, input gint
# 			default: 128
# 			min: 1, max: 1000000
#    tile-width   - Tile width in pixels, input gint
# 			default: 128
# 			min: 1, max: 1000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'cache', function(in_, out, max_tiles=NULL, tile_height=NULL, tile_width=NULL) {
  required <- list(in_, out)
  optional <- list(`max-tiles` = max_tiles, `tile-height` = tile_height, `tile-width` = tile_width)
  
  self$set_command('cache', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'embed' embed an image in a larger image
# usage:
#    embed in out x y width height [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    x            - Left edge of input in output, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    y            - Top edge of input in output, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 1000000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 1000000000
# optional arguments:
#    extend       - How to generate the extra pixels, input VipsExtend
# 			default: black
# 			allowed: black, copy, repeat, mirror, white, background
#    background   - Color for background pixels, input VipsArrayDouble
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'embed', function(in_, out, x, y, width, height, extend=NULL, background=NULL) {
  required <- list(in_, out, x, y, width, height)
  optional <- list(`extend` = extend, `background` = background)
  
  self$set_command('embed', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gravity' place an image within a larger image with a certain gravity
# usage:
#    gravity in out direction width height [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - direction to place image within width/height, input VipsCompassDirection
# 			default: centre
# 			allowed: centre, north, east, south, west, north-east, south-east, south-west, north-west
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 1000000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 1000000000
# optional arguments:
#    extend       - How to generate the extra pixels, input VipsExtend
# 			default: black
# 			allowed: black, copy, repeat, mirror, white, background
#    background   - Color for background pixels, input VipsArrayDouble
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gravity', function(in_, out, direction, width, height, extend=NULL, background=NULL) {
  required <- list(in_, out, direction, width, height)
  optional <- list(`extend` = extend, `background` = background)
  
  self$set_command('gravity', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'flip' flip an image
# usage:
#    flip in out direction [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - Direction to flip image, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'flip', function(in_, out, direction) {
  required <- list(in_, out, direction)
  optional <- list()
  
  self$set_command('flip', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'insert' insert image @sub into @main at @x, @y
# usage:
#    insert main sub out x y [--option-name option-value ...]
# where:
#    main         - Main input image, input VipsImage
#    sub          - Sub-image to insert into main image, input VipsImage
#    out          - Output image, output VipsImage
#    x            - Left edge of sub in main, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    y            - Top edge of sub in main, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
# optional arguments:
#    expand       - Expand output to hold all of both inputs, input gboolean
# 			default: false
#    background   - Color for new pixels, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'insert', function(main, sub, out, x, y, expand=NULL, background=NULL) {
  required <- list(main, sub, out, x, y)
  optional <- list(`expand` = expand, `background` = background)
  for (opt_name in c('expand')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('insert', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'join' join a pair of images
# usage:
#    join in1 in2 out direction [--option-name option-value ...]
# where:
#    in1          - First input image, input VipsImage
#    in2          - Second input image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - Join left-right or up-down, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
# optional arguments:
#    expand       - Expand output to hold all of both inputs, input gboolean
# 			default: false
#    shim         - Pixels between images, input gint
# 			default: 0
# 			min: 0, max: 1000000
#    background   - Colour for new pixels, input VipsArrayDouble
#    align        - Align on the low, centre or high coordinate edge, input VipsAlign
# 			default: low
# 			allowed: low, centre, high
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'join', function(in1, in2, out, direction, expand=NULL, shim=NULL, background=NULL, align=NULL) {
  required <- list(in1, in2, out, direction)
  optional <- list(`expand` = expand, `shim` = shim, `background` = background, `align` = align)
  for (opt_name in c('expand')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('join', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'arrayjoin' join an array of images
# usage:
#    arrayjoin in out [--option-name option-value ...]
# where:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
# optional arguments:
#    across       - Number of images across grid, input gint
# 			default: 1
# 			min: 1, max: 1000000
#    shim         - Pixels between images, input gint
# 			default: 0
# 			min: 0, max: 1000000
#    background   - Colour for new pixels, input VipsArrayDouble
#    halign       - Align on the left, centre or right, input VipsAlign
# 			default: low
# 			allowed: low, centre, high
#    valign       - Align on the top, centre or bottom, input VipsAlign
# 			default: low
# 			allowed: low, centre, high
#    hspacing     - Horizontal spacing between images, input gint
# 			default: 1
# 			min: 1, max: 1000000
#    vspacing     - Vertical spacing between images, input gint
# 			default: 1
# 			min: 1, max: 1000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'arrayjoin', function(in_, out, across=NULL, shim=NULL, background=NULL, halign=NULL, valign=NULL, hspacing=NULL, vspacing=NULL) {
  required <- list(in_, out)
  optional <- list(`across` = across, `shim` = shim, `background` = background, `halign` = halign, `valign` = valign, `hspacing` = hspacing, `vspacing` = vspacing)
  
  self$set_command('arrayjoin', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'extract_area' extract an area from an image
# usage:
#    extract_area input out left top width height [--option-name option-value ...]
# where:
#    input        - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    left         - Left edge of extract area, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    top          - Top edge of extract area, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    width        - Width of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Height of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'extract_area', function(input, out, left, top, width, height) {
  required <- list(input, out, left, top, width, height)
  optional <- list()
  
  self$set_command('extract_area', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'smartcrop' extract an area from an image
# usage:
#    smartcrop input out width height [--option-name option-value ...]
# where:
#    input        - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    width        - Width of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Height of extract area, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    interesting  - How to measure interestingness, input VipsInteresting
# 			default: attention
# 			allowed: none, centre, entropy, attention, low, high
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'smartcrop', function(input, out, width, height, interesting=NULL) {
  required <- list(input, out, width, height)
  optional <- list(`interesting` = interesting)
  
  self$set_command('smartcrop', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'extract_band' extract band from an image
# usage:
#    extract_band in out band [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    band         - Band to extract, input gint
# 			default: 0
# 			min: 0, max: 10000000
# optional arguments:
#    n            - Number of bands to extract, input gint
# 			default: 1
# 			min: 1, max: 10000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'extract_band', function(in_, out, band, n=NULL) {
  required <- list(in_, out, band)
  optional <- list(`n` = n)
  
  self$set_command('extract_band', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandjoin' bandwise join a set of images
# usage:
#    bandjoin in out [--option-name option-value ...]
# where:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandjoin', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('bandjoin', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandjoin_const' append a constant band to an image
# usage:
#    bandjoin_const in out c [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    c            - Array of constants to add, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandjoin_const', function(in_, out, c) {
  required <- list(in_, out, c)
  optional <- list()
  
  self$set_command('bandjoin_const', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandrank' band-wise rank of a set of images
# usage:
#    bandrank in out [--option-name option-value ...]
# where:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
# optional arguments:
#    index        - Select this band element from sorted list, input gint
# 			default: -1
# 			min: -1, max: 1000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandrank', function(in_, out, index=NULL) {
  required <- list(in_, out)
  optional <- list(`index` = index)
  
  self$set_command('bandrank', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandmean' band-wise average
# usage:
#    bandmean in out [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandmean', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('bandmean', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandbool' boolean operation across image bands
# usage:
#    bandbool in out boolean [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    boolean      - boolean to perform, input VipsOperationBoolean
# 			default: and
# 			allowed: and, or, eor, lshift, rshift
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandbool', function(in_, out, boolean) {
  required <- list(in_, out, boolean)
  optional <- list()
  
  self$set_command('bandbool', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'replicate' replicate an image
# usage:
#    replicate in out across down [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    across       - Repeat this many times horizontally, input gint
# 			default: 1
# 			min: 1, max: 1000000
#    down         - Repeat this many times vertically, input gint
# 			default: 1
# 			min: 1, max: 1000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'replicate', function(in_, out, across, down) {
  required <- list(in_, out, across, down)
  optional <- list()
  
  self$set_command('replicate', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'cast' cast an image
# usage:
#    cast in out format [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    format       - Format to cast to, input VipsBandFormat
# 			default: uchar
# 			allowed: notset, uchar, char, ushort, short, uint, int, float, complex, double, dpcomplex
# optional arguments:
#    shift        - Shift integer values up and down, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'cast', function(in_, out, format, shift=NULL) {
  required <- list(in_, out, format)
  optional <- list(`shift` = shift)
  for (opt_name in c('shift')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('cast', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rot' rotate an image
# usage:
#    rot in out angle [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    angle        - Angle to rotate image, input VipsAngle
# 			default: d90
# 			allowed: d0, d90, d180, d270
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rot', function(in_, out, angle) {
  required <- list(in_, out, angle)
  optional <- list()
  
  self$set_command('rot', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rot45' rotate an image
# usage:
#    rot45 in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    angle        - Angle to rotate image, input VipsAngle45
# 			default: d45
# 			allowed: d0, d45, d90, d135, d180, d225, d270, d315
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rot45', function(in_, out, angle=NULL) {
  required <- list(in_, out)
  optional <- list(`angle` = angle)
  
  self$set_command('rot45', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'autorot' autorotate image by exif tag
# usage:
#    autorot in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    angle        - Angle image was rotated by, output VipsAngle
# 			default: d0
# 			allowed: d0, d90, d180, d270
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'autorot', function(in_, out, angle=NULL) {
  required <- list(in_, out)
  optional <- list(`angle` = angle)
  
  self$set_command('autorot', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'ifthenelse' ifthenelse an image
# usage:
#    ifthenelse cond in1 in2 out [--option-name option-value ...]
# where:
#    cond         - Condition input image, input VipsImage
#    in1          - Source for TRUE pixels, input VipsImage
#    in2          - Source for FALSE pixels, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    blend        - Blend smoothly between then and else parts, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'ifthenelse', function(cond, in1, in2, out, blend=NULL) {
  required <- list(cond, in1, in2, out)
  optional <- list(`blend` = blend)
  for (opt_name in c('blend')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('ifthenelse', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'recomb' linear recombination with matrix
# usage:
#    recomb in out m [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    m            - matrix of coefficients, input VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'recomb', function(in_, out, m) {
  required <- list(in_, out, m)
  optional <- list()
  
  self$set_command('recomb', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandfold' fold up x axis into bands
# usage:
#    bandfold in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    factor       - Fold by this factor, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandfold', function(in_, out, factor=NULL) {
  required <- list(in_, out)
  optional <- list(`factor` = factor)
  
  self$set_command('bandfold', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'bandunfold' unfold image bands into x axis
# usage:
#    bandunfold in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    factor       - Unfold by this factor, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'bandunfold', function(in_, out, factor=NULL) {
  required <- list(in_, out)
  optional <- list(`factor` = factor)
  
  self$set_command('bandunfold', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'flatten' flatten alpha out of an image
# usage:
#    flatten in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    background   - Background value, input VipsArrayDouble
#    max-alpha    - Maximum value of alpha channel, input gdouble
# 			default: 255
# 			min: 0, max: 1e+08
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'flatten', function(in_, out, background=NULL, max_alpha=NULL) {
  required <- list(in_, out)
  optional <- list(`background` = background, `max-alpha` = max_alpha)
  
  self$set_command('flatten', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'premultiply' premultiply image alpha
# usage:
#    premultiply in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    max-alpha    - Maximum value of alpha channel, input gdouble
# 			default: 255
# 			min: 0, max: 1e+08
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'premultiply', function(in_, out, max_alpha=NULL) {
  required <- list(in_, out)
  optional <- list(`max-alpha` = max_alpha)
  
  self$set_command('premultiply', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'unpremultiply' unpremultiply image alpha
# usage:
#    unpremultiply in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    max-alpha    - Maximum value of alpha channel, input gdouble
# 			default: 255
# 			min: 0, max: 1e+08
#    alpha-band   - Unpremultiply with this alpha, input gint
# 			default: 3
# 			min: 0, max: 100000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'unpremultiply', function(in_, out, max_alpha=NULL, alpha_band=NULL) {
  required <- list(in_, out)
  optional <- list(`max-alpha` = max_alpha, `alpha-band` = alpha_band)
  
  self$set_command('unpremultiply', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'grid' grid an image
# usage:
#    grid in out tile-height across down [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    tile-height  - chop into tiles this high, input gint
# 			default: 128
# 			min: 1, max: 10000000
#    across       - number of tiles across, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    down         - number of tiles down, input gint
# 			default: 1
# 			min: 1, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'grid', function(in_, out, tile_height, across, down) {
  required <- list(in_, out, tile_height, across, down)
  optional <- list()
  
  self$set_command('grid', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'transpose3d' transpose3d an image
# usage:
#    transpose3d in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    page-height  - Height of each input page, input gint
# 			default: 0
# 			min: 0, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'transpose3d', function(in_, out, page_height=NULL) {
  required <- list(in_, out)
  optional <- list(`page-height` = page_height)
  
  self$set_command('transpose3d', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'scale' scale an image to uchar
# usage:
#    scale in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    exp          - Exponent for log scale, input gdouble
# 			default: 0.25
# 			min: 1e-05, max: 10000
#    log          - Log scale, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'scale', function(in_, out, exp=NULL, log=NULL) {
  required <- list(in_, out)
  optional <- list(`exp` = exp, `log` = log)
  for (opt_name in c('log')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('scale', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'wrap' wrap image origin
# usage:
#    wrap in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    x            - Left edge of input in output, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    y            - Top edge of input in output, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'wrap', function(in_, out, x=NULL, y=NULL) {
  required <- list(in_, out)
  optional <- list(`x` = x, `y` = y)
  
  self$set_command('wrap', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'zoom' zoom an image
# usage:
#    zoom input out xfac yfac [--option-name option-value ...]
# where:
#    input        - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    xfac         - Horizontal zoom factor, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    yfac         - Vertical zoom factor, input gint
# 			default: 1
# 			min: 1, max: 10000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'zoom', function(input, out, xfac, yfac) {
  required <- list(input, out, xfac, yfac)
  optional <- list()
  
  self$set_command('zoom', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'subsample' subsample an image
# usage:
#    subsample input out xfac yfac [--option-name option-value ...]
# where:
#    input        - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    xfac         - Horizontal subsample factor, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    yfac         - Vertical subsample factor, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    point        - Point sample, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'subsample', function(input, out, xfac, yfac, point=NULL) {
  required <- list(input, out, xfac, yfac)
  optional <- list(`point` = point)
  for (opt_name in c('point')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('subsample', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'msb' pick most-significant byte from an image
# usage:
#    msb in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    band         - Band to msb, input gint
# 			default: 0
# 			min: 0, max: 100000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'msb', function(in_, out, band=NULL) {
  required <- list(in_, out)
  optional <- list(`band` = band)
  
  self$set_command('msb', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'byteswap' byteswap an image
# usage:
#    byteswap in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'byteswap', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('byteswap', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'falsecolour' false-color an image
# usage:
#    falsecolour in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'falsecolour', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('falsecolour', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gamma' gamma an image
# usage:
#    gamma in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    exponent     - Gamma factor, input gdouble
# 			default: 2.4
# 			min: 1e-06, max: 1000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gamma', function(in_, out, exponent=NULL) {
  required <- list(in_, out)
  optional <- list(`exponent` = exponent)
  
  self$set_command('gamma', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'composite' blend an array of images with an array of blend modes
# usage:
#    composite in out mode [--option-name option-value ...]
# where:
#    in           - Array of input images, input VipsArrayImage
#    out          - Output image, output VipsImage
#    mode         - Array of VipsBlendMode to join with, input VipsArrayInt
# optional arguments:
#    x            - Array of x coordinates to join at, input VipsArrayInt
#    y            - Array of y coordinates to join at, input VipsArrayInt
#    compositing-space - Composite images in this colour space, input VipsInterpretation
# 			default: srgb
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
#    premultiplied - Images have premultiplied alpha, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'composite', function(in_, out, mode, x=NULL, y=NULL, compositing_space=NULL, premultiplied=NULL) {
  required <- list(in_, out, mode)
  optional <- list(`x` = x, `y` = y, `compositing-space` = compositing_space, `premultiplied` = premultiplied)
  for (opt_name in c('premultiplied')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('composite', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'composite2' blend a pair of images with a blend mode
# usage:
#    composite2 base overlay out mode [--option-name option-value ...]
# where:
#    base         - Base image, input VipsImage
#    overlay      - Overlay image, input VipsImage
#    out          - Output image, output VipsImage
#    mode         - VipsBlendMode to join with, input VipsBlendMode
# 			default: over
# 			allowed: clear, source, over, in, out, atop, dest, dest-over, dest-in, dest-out, dest-atop, xor, add, saturate, multiply, screen, overlay, darken, lighten, colour-dodge, colour-burn, hard-light, soft-light, difference, exclusion
# optional arguments:
#    x            - x position of overlay, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    y            - y position of overlay, input gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    compositing-space - Composite images in this colour space, input VipsInterpretation
# 			default: srgb
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
#    premultiplied - Images have premultiplied alpha, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'composite2', function(base, overlay, out, mode, x=NULL, y=NULL, compositing_space=NULL, premultiplied=NULL) {
  required <- list(base, overlay, out, mode)
  optional <- list(`x` = x, `y` = y, `compositing-space` = compositing_space, `premultiplied` = premultiplied)
  for (opt_name in c('premultiplied')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('composite2', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'black' make a black image
# usage:
#    black out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    bands        - Number of bands in image, input gint
# 			default: 1
# 			min: 1, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'black', function(out, width, height, bands=NULL) {
  required <- list(out, width, height)
  optional <- list(`bands` = bands)
  
  self$set_command('black', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gaussnoise' make a gaussnoise image
# usage:
#    gaussnoise out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    sigma        - Standard deviation of pixels in generated image, input gdouble
# 			default: 30
# 			min: 0, max: 100000
#    mean         - Mean of pixels in generated image, input gdouble
# 			default: 128
# 			min: -1e+07, max: 1e+06
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gaussnoise', function(out, width, height, sigma=NULL, mean=NULL) {
  required <- list(out, width, height)
  optional <- list(`sigma` = sigma, `mean` = mean)
  
  self$set_command('gaussnoise', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'text' make a text image
# usage:
#    text out text [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    text         - Text to render, input gchararray
# optional arguments:
#    font         - Font to render with, input gchararray
#    width        - Maximum image width in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    height       - Maximum image height in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    align        - Align on the low, centre or high edge, input VipsAlign
# 			default: low
# 			allowed: low, centre, high
#    dpi          - DPI to render at, input gint
# 			default: 72
# 			min: 1, max: 1000000
#    justify      - Justify lines, input gboolean
# 			default: false
#    autofit-dpi  - DPI selected by autofit, output gint
# 			default: 72
# 			min: 1, max: 1000000
#    spacing      - Line spacing, input gint
# 			default: 0
# 			min: 0, max: 1000000
#    fontfile     - Load this font file, input gchararray
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'text', function(out, text, font=NULL, width=NULL, height=NULL, align=NULL, dpi=NULL, justify=NULL, autofit_dpi=NULL, spacing=NULL, fontfile=NULL) {
  required <- list(out, text)
  optional <- list(`font` = font, `width` = width, `height` = height, `align` = align, `dpi` = dpi, `justify` = justify, `autofit-dpi` = autofit_dpi, `spacing` = spacing, `fontfile` = fontfile)
  for (opt_name in c('justify')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('text', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'xyz' make an image where pixel values are coordinates
# usage:
#    xyz out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 64
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 64
# 			min: 1, max: 10000000
# optional arguments:
#    csize        - Size of third dimension, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    dsize        - Size of fourth dimension, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    esize        - Size of fifth dimension, input gint
# 			default: 1
# 			min: 1, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'xyz', function(out, width, height, csize=NULL, dsize=NULL, esize=NULL) {
  required <- list(out, width, height)
  optional <- list(`csize` = csize, `dsize` = dsize, `esize` = esize)
  
  self$set_command('xyz', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gaussmat' make a gaussian image
# usage:
#    gaussmat out sigma min-ampl [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    sigma        - Sigma of Gaussian, input gdouble
# 			default: 1
# 			min: 1e-06, max: 10000
#    min-ampl     - Minimum amplitude of Gaussian, input gdouble
# 			default: 0.1
# 			min: 1e-06, max: 10000
# optional arguments:
#    separable    - Generate separable Gaussian, input gboolean
# 			default: false
#    precision    - Generate with this precision, input VipsPrecision
# 			default: integer
# 			allowed: integer, float, approximate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gaussmat', function(out, sigma, min_ampl, separable=NULL, precision=NULL) {
  required <- list(out, sigma, min_ampl)
  optional <- list(`separable` = separable, `precision` = precision)
  for (opt_name in c('separable')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('gaussmat', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'logmat' make a laplacian of gaussian image
# usage:
#    logmat out sigma min-ampl [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    sigma        - Radius of Logmatian, input gdouble
# 			default: 1
# 			min: 1e-06, max: 10000
#    min-ampl     - Minimum amplitude of Logmatian, input gdouble
# 			default: 0.1
# 			min: 1e-06, max: 10000
# optional arguments:
#    separable    - Generate separable Logmatian, input gboolean
# 			default: false
#    precision    - Generate with this precision, input VipsPrecision
# 			default: integer
# 			allowed: integer, float, approximate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'logmat', function(out, sigma, min_ampl, separable=NULL, precision=NULL) {
  required <- list(out, sigma, min_ampl)
  optional <- list(`separable` = separable, `precision` = precision)
  for (opt_name in c('separable')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('logmat', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'eye' make an image showing the eye's spatial response
# usage:
#    eye out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    factor       - Maximum spatial frequency, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'eye', function(out, width, height, uchar=NULL, factor=NULL) {
  required <- list(out, width, height)
  optional <- list(`uchar` = uchar, `factor` = factor)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('eye', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'grey' make a grey ramp image
# usage:
#    grey out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'grey', function(out, width, height, uchar=NULL) {
  required <- list(out, width, height)
  optional <- list(`uchar` = uchar)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('grey', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'zone' make a zone plate
# usage:
#    zone out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'zone', function(out, width, height, uchar=NULL) {
  required <- list(out, width, height)
  optional <- list(`uchar` = uchar)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('zone', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sines' make a 2D sine wave
# usage:
#    sines out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    hfreq        - Horizontal spatial frequency, input gdouble
# 			default: 0.5
# 			min: 0, max: 10000
#    vfreq        - Vertical spatial frequency, input gdouble
# 			default: 0.5
# 			min: 0, max: 10000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sines', function(out, width, height, uchar=NULL, hfreq=NULL, vfreq=NULL) {
  required <- list(out, width, height)
  optional <- list(`uchar` = uchar, `hfreq` = hfreq, `vfreq` = vfreq)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('sines', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_ideal' make an ideal filter
# usage:
#    mask_ideal out width height frequency-cutoff [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_ideal', function(out, width, height, frequency_cutoff, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_ideal', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_ideal_ring' make an ideal ring filter
# usage:
#    mask_ideal_ring out width height frequency-cutoff ringwidth [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    ringwidth    - Ringwidth, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_ideal_ring', function(out, width, height, frequency_cutoff, ringwidth, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff, ringwidth)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_ideal_ring', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_ideal_band' make an ideal band filter
# usage:
#    mask_ideal_band out width height frequency-cutoff-x frequency-cutoff-y radius [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff-x - Frequency cutoff x, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    frequency-cutoff-y - Frequency cutoff y, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    radius       - radius of circle, input gdouble
# 			default: 0.1
# 			min: 0, max: 1e+06
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_ideal_band', function(out, width, height, frequency_cutoff_x, frequency_cutoff_y, radius, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff_x, frequency_cutoff_y, radius)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_ideal_band', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_butterworth' make a butterworth filter
# usage:
#    mask_butterworth out width height order frequency-cutoff amplitude-cutoff [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    order        - Filter order, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_butterworth', function(out, width, height, order, frequency_cutoff, amplitude_cutoff, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, order, frequency_cutoff, amplitude_cutoff)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_butterworth', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_butterworth_ring' make a butterworth ring filter
# usage:
#    mask_butterworth_ring out width height order frequency-cutoff amplitude-cutoff ringwidth [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    order        - Filter order, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
#    ringwidth    - Ringwidth, input gdouble
# 			default: 0.1
# 			min: 0, max: 1e+06
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_butterworth_ring', function(out, width, height, order, frequency_cutoff, amplitude_cutoff, ringwidth, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, order, frequency_cutoff, amplitude_cutoff, ringwidth)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_butterworth_ring', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_butterworth_band' make a butterworth_band filter
# usage:
#    mask_butterworth_band out width height order frequency-cutoff-x frequency-cutoff-y radius amplitude-cutoff [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    order        - Filter order, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
#    frequency-cutoff-x - Frequency cutoff x, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    frequency-cutoff-y - Frequency cutoff y, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    radius       - radius of circle, input gdouble
# 			default: 0.1
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_butterworth_band', function(out, width, height, order, frequency_cutoff_x, frequency_cutoff_y, radius, amplitude_cutoff, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, order, frequency_cutoff_x, frequency_cutoff_y, radius, amplitude_cutoff)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_butterworth_band', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_gaussian' make a gaussian filter
# usage:
#    mask_gaussian out width height frequency-cutoff amplitude-cutoff [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_gaussian', function(out, width, height, frequency_cutoff, amplitude_cutoff, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff, amplitude_cutoff)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_gaussian', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_gaussian_ring' make a gaussian ring filter
# usage:
#    mask_gaussian_ring out width height frequency-cutoff amplitude-cutoff ringwidth [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff - Frequency cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
#    ringwidth    - Ringwidth, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_gaussian_ring', function(out, width, height, frequency_cutoff, amplitude_cutoff, ringwidth, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff, amplitude_cutoff, ringwidth)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_gaussian_ring', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_gaussian_band' make a gaussian filter
# usage:
#    mask_gaussian_band out width height frequency-cutoff-x frequency-cutoff-y radius amplitude-cutoff [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    frequency-cutoff-x - Frequency cutoff x, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    frequency-cutoff-y - Frequency cutoff y, input gdouble
# 			default: 0.5
# 			min: 0, max: 1e+06
#    radius       - radius of circle, input gdouble
# 			default: 0.1
# 			min: 0, max: 1e+06
#    amplitude-cutoff - Amplitude cutoff, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_gaussian_band', function(out, width, height, frequency_cutoff_x, frequency_cutoff_y, radius, amplitude_cutoff, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, frequency_cutoff_x, frequency_cutoff_y, radius, amplitude_cutoff)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_gaussian_band', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mask_fractal' make fractal filter
# usage:
#    mask_fractal out width height fractal-dimension [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    fractal-dimension - Fractal dimension, input gdouble
# 			default: 2.5
# 			min: 2, max: 3
# optional arguments:
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#    nodc         - Remove DC component, input gboolean
# 			default: false
#    reject       - Invert the sense of the filter, input gboolean
# 			default: false
#    optical      - Rotate quadrants to optical space, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mask_fractal', function(out, width, height, fractal_dimension, uchar=NULL, nodc=NULL, reject=NULL, optical=NULL) {
  required <- list(out, width, height, fractal_dimension)
  optional <- list(`uchar` = uchar, `nodc` = nodc, `reject` = reject, `optical` = optical)
  for (opt_name in c('uchar', 'nodc', 'reject', 'optical')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mask_fractal', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'buildlut' build a look-up table
# usage:
#    buildlut in out [--option-name option-value ...]
# where:
#    in           - Matrix of XY coordinates, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'buildlut', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('buildlut', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'invertlut' build an inverted look-up table
# usage:
#    invertlut in out [--option-name option-value ...]
# where:
#    in           - Matrix of XY coordinates, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    size         - LUT size to generate, input gint
# 			default: 256
# 			min: 1, max: 1000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'invertlut', function(in_, out, size=NULL) {
  required <- list(in_, out)
  optional <- list(`size` = size)
  
  self$set_command('invertlut', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tonelut' build a look-up table
# usage:
#    tonelut out [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
# optional arguments:
#    in-max       - Size of LUT to build, input gint
# 			default: 32767
# 			min: 1, max: 65535
#    out-max      - Maximum value in output LUT, input gint
# 			default: 32767
# 			min: 1, max: 65535
#    Lb           - Lowest value in output, input gdouble
# 			default: 0
# 			min: 0, max: 100
#    Lw           - Highest value in output, input gdouble
# 			default: 100
# 			min: 0, max: 100
#    Ps           - Position of shadow, input gdouble
# 			default: 0.2
# 			min: 0, max: 1
#    Pm           - Position of mid-tones, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
#    Ph           - Position of highlights, input gdouble
# 			default: 0.8
# 			min: 0, max: 1
#    S            - Adjust shadows by this much, input gdouble
# 			default: 0
# 			min: -30, max: 30
#    M            - Adjust mid-tones by this much, input gdouble
# 			default: 0
# 			min: -30, max: 30
#    H            - Adjust highlights by this much, input gdouble
# 			default: 0
# 			min: -30, max: 30
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tonelut', function(out, in_max=NULL, out_max=NULL, Lb=NULL, Lw=NULL, Ps=NULL, Pm=NULL, Ph=NULL, S=NULL, M=NULL, H=NULL) {
  required <- list(out)
  optional <- list(`in-max` = in_max, `out-max` = out_max, `Lb` = Lb, `Lw` = Lw, `Ps` = Ps, `Pm` = Pm, `Ph` = Ph, `S` = S, `M` = M, `H` = H)
  
  self$set_command('tonelut', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'identity' make a 1D image where pixel values are indexes
# usage:
#    identity out [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
# optional arguments:
#    bands        - Number of bands in LUT, input gint
# 			default: 1
# 			min: 1, max: 100000
#    ushort       - Create a 16-bit LUT, input gboolean
# 			default: false
#    size         - Size of 16-bit LUT, input gint
# 			default: 65536
# 			min: 1, max: 65536
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'identity', function(out, bands=NULL, ushort=NULL, size=NULL) {
  required <- list(out)
  optional <- list(`bands` = bands, `ushort` = ushort, `size` = size)
  for (opt_name in c('ushort')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('identity', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fractsurf' make a fractal surface
# usage:
#    fractsurf out width height fractal-dimension [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 64
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 64
# 			min: 1, max: 10000000
#    fractal-dimension - Fractal dimension, input gdouble
# 			default: 2.5
# 			min: 2, max: 3
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fractsurf', function(out, width, height, fractal_dimension) {
  required <- list(out, width, height, fractal_dimension)
  optional <- list()
  
  self$set_command('fractsurf', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'worley' make a worley noise image
# usage:
#    worley out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    cell-size    - Size of Worley cells, input gint
# 			default: 256
# 			min: 1, max: 10000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'worley', function(out, width, height, cell_size=NULL) {
  required <- list(out, width, height)
  optional <- list(`cell-size` = cell_size)
  
  self$set_command('worley', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'perlin' make a perlin noise image
# usage:
#    perlin out width height [--option-name option-value ...]
# where:
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    cell-size    - Size of Perlin cells, input gint
# 			default: 256
# 			min: 1, max: 10000000
#    uchar        - Output an unsigned char image, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'perlin', function(out, width, height, cell_size=NULL, uchar=NULL) {
  required <- list(out, width, height)
  optional <- list(`cell-size` = cell_size, `uchar` = uchar)
  for (opt_name in c('uchar')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('perlin', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'switch' find the index of the first non-zero pixel in tests
# usage:
#    switch tests out [--option-name option-value ...]
# where:
#    tests        - Table of images to test, input VipsArrayImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'switch', function(tests, out) {
  required <- list(tests, out)
  optional <- list()
  
  self$set_command('switch', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'csvload' load csv from file
# usage:
#    csvload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    skip         - Skip this many lines at the start of the file, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    lines        - Read this many lines from the file, input gint
# 			default: 0
# 			min: -1, max: 10000000
#    whitespace   - Set of whitespace characters, input gchararray
#    separator    - Set of separator characters, input gchararray
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'csvload', function(filename, out, skip=NULL, lines=NULL, whitespace=NULL, separator=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`skip` = skip, `lines` = lines, `whitespace` = whitespace, `separator` = separator, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('csvload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'matrixload' load matrix from file
# usage:
#    matrixload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'matrixload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('matrixload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rawload' load raw data from a file
# usage:
#    rawload filename out width height bands [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
#    width        - Image width in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    height       - Image height in pixels, input gint
# 			default: 0
# 			min: 0, max: 10000000
#    bands        - Number of bands in image, input gint
# 			default: 0
# 			min: 0, max: 10000000
# optional arguments:
#    offset       - Offset in bytes from start of file, input guint64
#    format       - Pixel format in image, input VipsBandFormat
# 			default: uchar
# 			allowed: notset, uchar, char, ushort, short, uint, int, float, complex, double, dpcomplex
#    interpretation - Pixel interpretation, input VipsInterpretation
# 			default: multiband
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rawload', function(filename, out, width, height, bands, offset=NULL, format=NULL, interpretation=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out, width, height, bands)
  optional <- list(`offset` = offset, `format` = format, `interpretation` = interpretation, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('rawload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'vipsload' load vips from file
# usage:
#    vipsload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'vipsload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('vipsload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'analyzeload' load an Analyze6 image
# usage:
#    analyzeload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'analyzeload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('analyzeload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'ppmload' load ppm from file
# usage:
#    ppmload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'ppmload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('ppmload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radload' load a Radiance image from a file
# usage:
#    radload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radload_buffer' load rad from buffer
# usage:
#    radload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radload_buffer', function(buffer, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radload_source' load rad from source
# usage:
#    radload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radload_source', function(source, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pdfload' load PDF with libpoppler
# usage:
#    pdfload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    dpi          - Render at this DPI, input gdouble
# 			default: 72
# 			min: 0.001, max: 100000
#    scale        - Scale output by this factor, input gdouble
# 			default: 1
# 			min: 0.001, max: 100000
#    background   - Background value, input VipsArrayDouble
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pdfload', function(filename, out, page=NULL, n=NULL, dpi=NULL, scale=NULL, background=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`page` = page, `n` = n, `dpi` = dpi, `scale` = scale, `background` = background, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pdfload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pdfload_buffer' load PDF with libpoppler
# usage:
#    pdfload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    dpi          - Render at this DPI, input gdouble
# 			default: 72
# 			min: 0.001, max: 100000
#    scale        - Scale output by this factor, input gdouble
# 			default: 1
# 			min: 0.001, max: 100000
#    background   - Background value, input VipsArrayDouble
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pdfload_buffer', function(buffer, out, page=NULL, n=NULL, dpi=NULL, scale=NULL, background=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`page` = page, `n` = n, `dpi` = dpi, `scale` = scale, `background` = background, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pdfload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'svgload' load SVG with rsvg
# usage:
#    svgload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    dpi          - Render at this DPI, input gdouble
# 			default: 72
# 			min: 0.001, max: 100000
#    scale        - Scale output by this factor, input gdouble
# 			default: 1
# 			min: 0.001, max: 100000
#    unlimited    - Allow SVG of any size, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'svgload', function(filename, out, dpi=NULL, scale=NULL, unlimited=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`dpi` = dpi, `scale` = scale, `unlimited` = unlimited, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('unlimited', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('svgload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'svgload_buffer' load SVG with rsvg
# usage:
#    svgload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    dpi          - Render at this DPI, input gdouble
# 			default: 72
# 			min: 0.001, max: 100000
#    scale        - Scale output by this factor, input gdouble
# 			default: 1
# 			min: 0.001, max: 100000
#    unlimited    - Allow SVG of any size, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'svgload_buffer', function(buffer, out, dpi=NULL, scale=NULL, unlimited=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`dpi` = dpi, `scale` = scale, `unlimited` = unlimited, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('unlimited', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('svgload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'svgload_source' load svg from source
# usage:
#    svgload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    dpi          - Render at this DPI, input gdouble
# 			default: 72
# 			min: 0.001, max: 100000
#    scale        - Scale output by this factor, input gdouble
# 			default: 1
# 			min: 0.001, max: 100000
#    unlimited    - Allow SVG of any size, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'svgload_source', function(source, out, dpi=NULL, scale=NULL, unlimited=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`dpi` = dpi, `scale` = scale, `unlimited` = unlimited, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('unlimited', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('svgload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gifload' load GIF with giflib
# usage:
#    gifload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gifload', function(filename, out, page=NULL, n=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`page` = page, `n` = n, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('gifload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gifload_buffer' load GIF with giflib
# usage:
#    gifload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gifload_buffer', function(buffer, out, page=NULL, n=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`page` = page, `n` = n, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('gifload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngload' load png from file
# usage:
#    pngload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngload_buffer' load png from buffer
# usage:
#    pngload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngload_buffer', function(buffer, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngload_source' load png from source
# usage:
#    pngload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngload_source', function(source, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'matload' load mat from file
# usage:
#    matload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'matload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('matload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegload' load jpeg from file
# usage:
#    jpegload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    shrink       - Shrink factor on load, input gint
# 			default: 1
# 			min: 1, max: 16
#    autorotate   - Rotate image using exif orientation, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegload', function(filename, out, shrink=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`shrink` = shrink, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegload_buffer' load jpeg from buffer
# usage:
#    jpegload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    shrink       - Shrink factor on load, input gint
# 			default: 1
# 			min: 1, max: 16
#    autorotate   - Rotate image using exif orientation, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegload_buffer', function(buffer, out, shrink=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`shrink` = shrink, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegload_source' load image from jpeg source
# usage:
#    jpegload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    shrink       - Shrink factor on load, input gint
# 			default: 1
# 			min: 1, max: 16
#    autorotate   - Rotate image using exif orientation, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegload_source', function(source, out, shrink=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`shrink` = shrink, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpload' load webp from file
# usage:
#    webpload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    scale        - Scale factor on load, input gdouble
# 			default: 1
# 			min: 0, max: 1024
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpload', function(filename, out, page=NULL, n=NULL, scale=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`page` = page, `n` = n, `scale` = scale, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpload_buffer' load webp from buffer
# usage:
#    webpload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    scale        - Scale factor on load, input gdouble
# 			default: 1
# 			min: 0, max: 1024
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpload_buffer', function(buffer, out, page=NULL, n=NULL, scale=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`page` = page, `n` = n, `scale` = scale, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpload_source' load webp from source
# usage:
#    webpload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    scale        - Scale factor on load, input gdouble
# 			default: 1
# 			min: 0, max: 1024
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpload_source', function(source, out, page=NULL, n=NULL, scale=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`page` = page, `n` = n, `scale` = scale, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tiffload' load tiff from file
# usage:
#    tiffload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the image, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    autorotate   - Rotate image using orientation tag, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tiffload', function(filename, out, page=NULL, n=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`page` = page, `n` = n, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tiffload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tiffload_buffer' load tiff from buffer
# usage:
#    tiffload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the image, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    autorotate   - Rotate image using orientation tag, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tiffload_buffer', function(buffer, out, page=NULL, n=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`page` = page, `n` = n, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tiffload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tiffload_source' load tiff from source
# usage:
#    tiffload_source source out [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the image, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    autorotate   - Rotate image using orientation tag, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tiffload_source', function(source, out, page=NULL, n=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(source, out)
  optional <- list(`page` = page, `n` = n, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tiffload_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'openslideload' load file with OpenSlide
# usage:
#    openslideload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    attach-associated - Attach all asssociated images, input gboolean
# 			default: false
#    level        - Load this level from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    autocrop     - Crop to image bounds, input gboolean
# 			default: false
#    associated   - Load this associated image, input gchararray
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'openslideload', function(filename, out, attach_associated=NULL, level=NULL, autocrop=NULL, associated=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`attach-associated` = attach_associated, `level` = level, `autocrop` = autocrop, `associated` = associated, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('attach-associated', 'autocrop', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('openslideload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'magickload' load file with ImageMagick7
# usage:
#    magickload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    density      - Canvas resolution for rendering vector formats like SVG, input gchararray
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'magickload', function(filename, out, density=NULL, page=NULL, n=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`density` = density, `page` = page, `n` = n, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('magickload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'magickload_buffer' load buffer with ImageMagick7
# usage:
#    magickload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    density      - Canvas resolution for rendering vector formats like SVG, input gchararray
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'magickload_buffer', function(buffer, out, density=NULL, page=NULL, n=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`density` = density, `page` = page, `n` = n, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('magickload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fitsload' load a FITS image
# usage:
#    fitsload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fitsload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('fitsload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'openexrload' load an OpenEXR image
# usage:
#    openexrload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'openexrload', function(filename, out, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('openexrload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'heifload' load a HEIF image
# usage:
#    heifload filename out [--option-name option-value ...]
# where:
#    filename     - Filename to load from, input gchararray
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    thumbnail    - Fetch thumbnail image, input gboolean
# 			default: false
#    autorotate   - Rotate image using exif orientation, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'heifload', function(filename, out, page=NULL, n=NULL, thumbnail=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(filename, out)
  optional <- list(`page` = page, `n` = n, `thumbnail` = thumbnail, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('thumbnail', 'autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('heifload', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'heifload_buffer' load a HEIF image
# usage:
#    heifload_buffer buffer out [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
# optional arguments:
#    page         - Load this page from the file, input gint
# 			default: 0
# 			min: 0, max: 100000
#    n            - Load this many pages, input gint
# 			default: 1
# 			min: -1, max: 100000
#    thumbnail    - Fetch thumbnail image, input gboolean
# 			default: false
#    autorotate   - Rotate image using exif orientation, input gboolean
# 			default: false
#    flags        - Flags for this file, output VipsForeignFlags
#    memory       - Force open via memory, input gboolean
# 			default: false
#    access       - Required access pattern for this file, input VipsAccess
# 			default: random
# 			allowed: random, sequential, sequential-unbuffered
#    fail         - Fail on first error, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'heifload_buffer', function(buffer, out, page=NULL, n=NULL, thumbnail=NULL, autorotate=NULL, flags=NULL, memory=NULL, access=NULL, fail=NULL) {
  required <- list(buffer, out)
  optional <- list(`page` = page, `n` = n, `thumbnail` = thumbnail, `autorotate` = autorotate, `flags` = flags, `memory` = memory, `access` = access, `fail` = fail)
  for (opt_name in c('thumbnail', 'autorotate', 'memory', 'fail')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('heifload_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'csvsave' save image to csv file
# usage:
#    csvsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    separator    - Separator characters, input gchararray
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'csvsave', function(in_, filename, separator=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`separator` = separator, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('csvsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'matrixsave' save image to matrix file
# usage:
#    matrixsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'matrixsave', function(in_, filename, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('matrixsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'matrixprint' print matrix
# usage:
#    matrixprint in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'matrixprint', function(in_, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('matrixprint', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rawsave' save image to raw file
# usage:
#    rawsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rawsave', function(in_, filename, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('rawsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rawsave_fd' write raw image to file descriptor
# usage:
#    rawsave_fd in fd [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    fd           - File descriptor to write to, input gint
# 			default: 0
# 			min: 0, max: 10000
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rawsave_fd', function(in_, fd, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, fd)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('rawsave_fd', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'vipssave' save image to vips file
# usage:
#    vipssave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'vipssave', function(in_, filename, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('vipssave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'ppmsave' save image to ppm file
# usage:
#    ppmsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    ascii        - save as ascii, input gboolean
# 			default: false
#    squash       - save as one bit, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'ppmsave', function(in_, filename, ascii=NULL, squash=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`ascii` = ascii, `squash` = squash, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('ascii', 'squash', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('ppmsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radsave' save image to Radiance file
# usage:
#    radsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radsave', function(in_, filename, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radsave_buffer' save image to Radiance buffer
# usage:
#    radsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radsave_buffer', function(in_, buffer, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'radsave_target' save image to Radiance target
# usage:
#    radsave_target in target [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    target       - Target to save to, input VipsTarget
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'radsave_target', function(in_, target, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, target)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('radsave_target', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'dzsave' save image to deepzoom file
# usage:
#    dzsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    basename     - Base name to save to, input gchararray
#    layout       - Directory layout, input VipsForeignDzLayout
# 			default: dz
# 			allowed: dz, zoomify, google, iiif
#    suffix       - Filename suffix for tiles, input gchararray
#    overlap      - Tile overlap in pixels, input gint
# 			default: 1
# 			min: 0, max: 8192
#    tile-size    - Tile size in pixels, input gint
# 			default: 254
# 			min: 1, max: 8192
#    centre       - Center image in tile, input gboolean
# 			default: false
#    depth        - Pyramid depth, input VipsForeignDzDepth
# 			default: onepixel
# 			allowed: onepixel, onetile, one
#    angle        - Rotate image during save, input VipsAngle
# 			default: d0
# 			allowed: d0, d90, d180, d270
#    container    - Pyramid container type, input VipsForeignDzContainer
# 			default: fs
# 			allowed: fs, zip, szi
#    properties   - Write a properties file to the output directory, input gboolean
# 			default: false
#    compression  - ZIP deflate compression level, input gint
# 			default: 0
# 			min: -1, max: 9
#    region-shrink - Method to shrink regions, input VipsRegionShrink
# 			default: mean
# 			allowed: mean, median, mode
#    skip-blanks  - Skip tiles which are nearly equal to the background, input gint
# 			default: -1
# 			min: -1, max: 65535
#    no-strip     - Don't strip tile metadata, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'dzsave', function(in_, filename, basename=NULL, layout=NULL, suffix=NULL, overlap=NULL, tile_size=NULL, centre=NULL, depth=NULL, angle=NULL, container=NULL, properties=NULL, compression=NULL, region_shrink=NULL, skip_blanks=NULL, no_strip=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`basename` = basename, `layout` = layout, `suffix` = suffix, `overlap` = overlap, `tile-size` = tile_size, `centre` = centre, `depth` = depth, `angle` = angle, `container` = container, `properties` = properties, `compression` = compression, `region-shrink` = region_shrink, `skip-blanks` = skip_blanks, `no-strip` = no_strip, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('centre', 'properties', 'no-strip', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('dzsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'dzsave_buffer' save image to dz buffer
# usage:
#    dzsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    basename     - Base name to save to, input gchararray
#    layout       - Directory layout, input VipsForeignDzLayout
# 			default: dz
# 			allowed: dz, zoomify, google, iiif
#    suffix       - Filename suffix for tiles, input gchararray
#    overlap      - Tile overlap in pixels, input gint
# 			default: 1
# 			min: 0, max: 8192
#    tile-size    - Tile size in pixels, input gint
# 			default: 254
# 			min: 1, max: 8192
#    centre       - Center image in tile, input gboolean
# 			default: false
#    depth        - Pyramid depth, input VipsForeignDzDepth
# 			default: onepixel
# 			allowed: onepixel, onetile, one
#    angle        - Rotate image during save, input VipsAngle
# 			default: d0
# 			allowed: d0, d90, d180, d270
#    container    - Pyramid container type, input VipsForeignDzContainer
# 			default: fs
# 			allowed: fs, zip, szi
#    properties   - Write a properties file to the output directory, input gboolean
# 			default: false
#    compression  - ZIP deflate compression level, input gint
# 			default: 0
# 			min: -1, max: 9
#    region-shrink - Method to shrink regions, input VipsRegionShrink
# 			default: mean
# 			allowed: mean, median, mode
#    skip-blanks  - Skip tiles which are nearly equal to the background, input gint
# 			default: -1
# 			min: -1, max: 65535
#    no-strip     - Don't strip tile metadata, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'dzsave_buffer', function(in_, buffer, basename=NULL, layout=NULL, suffix=NULL, overlap=NULL, tile_size=NULL, centre=NULL, depth=NULL, angle=NULL, container=NULL, properties=NULL, compression=NULL, region_shrink=NULL, skip_blanks=NULL, no_strip=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`basename` = basename, `layout` = layout, `suffix` = suffix, `overlap` = overlap, `tile-size` = tile_size, `centre` = centre, `depth` = depth, `angle` = angle, `container` = container, `properties` = properties, `compression` = compression, `region-shrink` = region_shrink, `skip-blanks` = skip_blanks, `no-strip` = no_strip, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('centre', 'properties', 'no-strip', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('dzsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngsave' save image to png file
# usage:
#    pngsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    compression  - Compression factor, input gint
# 			default: 6
# 			min: 0, max: 9
#    interlace    - Interlace image, input gboolean
# 			default: false
#    profile      - ICC profile to embed, input gchararray
#    filter       - libpng row filter flag(s), input VipsForeignPngFilter
#    palette      - Quantise to 8bpp palette, input gboolean
# 			default: false
#    colours      - Max number of palette colours, input gint
# 			default: 256
# 			min: 2, max: 256
#    Q            - Quantisation quality, input gint
# 			default: 100
# 			min: 0, max: 100
#    dither       - Amount of dithering, input gdouble
# 			default: 1
# 			min: 0, max: 1
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngsave', function(in_, filename, compression=NULL, interlace=NULL, profile=NULL, filter=NULL, palette=NULL, colours=NULL, Q=NULL, dither=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`compression` = compression, `interlace` = interlace, `profile` = profile, `filter` = filter, `palette` = palette, `colours` = colours, `Q` = Q, `dither` = dither, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('interlace', 'palette', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngsave_buffer' save image to png buffer
# usage:
#    pngsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    compression  - Compression factor, input gint
# 			default: 6
# 			min: 0, max: 9
#    interlace    - Interlace image, input gboolean
# 			default: false
#    profile      - ICC profile to embed, input gchararray
#    filter       - libpng row filter flag(s), input VipsForeignPngFilter
#    palette      - Quantise to 8bpp palette, input gboolean
# 			default: false
#    colours      - Max number of palette colours, input gint
# 			default: 256
# 			min: 2, max: 256
#    Q            - Quantisation quality, input gint
# 			default: 100
# 			min: 0, max: 100
#    dither       - Amount of dithering, input gdouble
# 			default: 1
# 			min: 0, max: 1
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngsave_buffer', function(in_, buffer, compression=NULL, interlace=NULL, profile=NULL, filter=NULL, palette=NULL, colours=NULL, Q=NULL, dither=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`compression` = compression, `interlace` = interlace, `profile` = profile, `filter` = filter, `palette` = palette, `colours` = colours, `Q` = Q, `dither` = dither, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('interlace', 'palette', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'pngsave_target' save image to target as PNG
# usage:
#    pngsave_target in target [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    target       - Target to save to, input VipsTarget
# optional arguments:
#    compression  - Compression factor, input gint
# 			default: 6
# 			min: 0, max: 9
#    interlace    - Interlace image, input gboolean
# 			default: false
#    profile      - ICC profile to embed, input gchararray
#    filter       - libpng row filter flag(s), input VipsForeignPngFilter
#    palette      - Quantise to 8bpp palette, input gboolean
# 			default: false
#    colours      - Max number of palette colours, input gint
# 			default: 256
# 			min: 2, max: 256
#    Q            - Quantisation quality, input gint
# 			default: 100
# 			min: 0, max: 100
#    dither       - Amount of dithering, input gdouble
# 			default: 1
# 			min: 0, max: 1
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'pngsave_target', function(in_, target, compression=NULL, interlace=NULL, profile=NULL, filter=NULL, palette=NULL, colours=NULL, Q=NULL, dither=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, target)
  optional <- list(`compression` = compression, `interlace` = interlace, `profile` = profile, `filter` = filter, `palette` = palette, `colours` = colours, `Q` = Q, `dither` = dither, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('interlace', 'palette', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('pngsave_target', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegsave' save image to jpeg file
# usage:
#    jpegsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    profile      - ICC profile to embed, input gchararray
#    optimize-coding - Compute optimal Huffman coding tables, input gboolean
# 			default: false
#    interlace    - Generate an interlaced (progressive) jpeg, input gboolean
# 			default: false
#    no-subsample - Disable chroma subsample, input gboolean
# 			default: false
#    trellis-quant - Apply trellis quantisation to each 8x8 block, input gboolean
# 			default: false
#    overshoot-deringing - Apply overshooting to samples with extreme values, input gboolean
# 			default: false
#    optimize-scans - Split spectrum of DCT coefficients into separate scans, input gboolean
# 			default: false
#    quant-table  - Use predefined quantization table with given index, input gint
# 			default: 0
# 			min: 0, max: 8
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegsave', function(in_, filename, Q=NULL, profile=NULL, optimize_coding=NULL, interlace=NULL, no_subsample=NULL, trellis_quant=NULL, overshoot_deringing=NULL, optimize_scans=NULL, quant_table=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`Q` = Q, `profile` = profile, `optimize-coding` = optimize_coding, `interlace` = interlace, `no-subsample` = no_subsample, `trellis-quant` = trellis_quant, `overshoot-deringing` = overshoot_deringing, `optimize-scans` = optimize_scans, `quant-table` = quant_table, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-coding', 'interlace', 'no-subsample', 'trellis-quant', 'overshoot-deringing', 'optimize-scans', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegsave_buffer' save image to jpeg buffer
# usage:
#    jpegsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    profile      - ICC profile to embed, input gchararray
#    optimize-coding - Compute optimal Huffman coding tables, input gboolean
# 			default: false
#    interlace    - Generate an interlaced (progressive) jpeg, input gboolean
# 			default: false
#    no-subsample - Disable chroma subsample, input gboolean
# 			default: false
#    trellis-quant - Apply trellis quantisation to each 8x8 block, input gboolean
# 			default: false
#    overshoot-deringing - Apply overshooting to samples with extreme values, input gboolean
# 			default: false
#    optimize-scans - Split spectrum of DCT coefficients into separate scans, input gboolean
# 			default: false
#    quant-table  - Use predefined quantization table with given index, input gint
# 			default: 0
# 			min: 0, max: 8
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegsave_buffer', function(in_, buffer, Q=NULL, profile=NULL, optimize_coding=NULL, interlace=NULL, no_subsample=NULL, trellis_quant=NULL, overshoot_deringing=NULL, optimize_scans=NULL, quant_table=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`Q` = Q, `profile` = profile, `optimize-coding` = optimize_coding, `interlace` = interlace, `no-subsample` = no_subsample, `trellis-quant` = trellis_quant, `overshoot-deringing` = overshoot_deringing, `optimize-scans` = optimize_scans, `quant-table` = quant_table, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-coding', 'interlace', 'no-subsample', 'trellis-quant', 'overshoot-deringing', 'optimize-scans', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegsave_target' save image to jpeg target
# usage:
#    jpegsave_target in target [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    target       - Target to save to, input VipsTarget
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    profile      - ICC profile to embed, input gchararray
#    optimize-coding - Compute optimal Huffman coding tables, input gboolean
# 			default: false
#    interlace    - Generate an interlaced (progressive) jpeg, input gboolean
# 			default: false
#    no-subsample - Disable chroma subsample, input gboolean
# 			default: false
#    trellis-quant - Apply trellis quantisation to each 8x8 block, input gboolean
# 			default: false
#    overshoot-deringing - Apply overshooting to samples with extreme values, input gboolean
# 			default: false
#    optimize-scans - Split spectrum of DCT coefficients into separate scans, input gboolean
# 			default: false
#    quant-table  - Use predefined quantization table with given index, input gint
# 			default: 0
# 			min: 0, max: 8
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegsave_target', function(in_, target, Q=NULL, profile=NULL, optimize_coding=NULL, interlace=NULL, no_subsample=NULL, trellis_quant=NULL, overshoot_deringing=NULL, optimize_scans=NULL, quant_table=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, target)
  optional <- list(`Q` = Q, `profile` = profile, `optimize-coding` = optimize_coding, `interlace` = interlace, `no-subsample` = no_subsample, `trellis-quant` = trellis_quant, `overshoot-deringing` = overshoot_deringing, `optimize-scans` = optimize_scans, `quant-table` = quant_table, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-coding', 'interlace', 'no-subsample', 'trellis-quant', 'overshoot-deringing', 'optimize-scans', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegsave_target', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'jpegsave_mime' save image to jpeg mime
# usage:
#    jpegsave_mime in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    profile      - ICC profile to embed, input gchararray
#    optimize-coding - Compute optimal Huffman coding tables, input gboolean
# 			default: false
#    interlace    - Generate an interlaced (progressive) jpeg, input gboolean
# 			default: false
#    no-subsample - Disable chroma subsample, input gboolean
# 			default: false
#    trellis-quant - Apply trellis quantisation to each 8x8 block, input gboolean
# 			default: false
#    overshoot-deringing - Apply overshooting to samples with extreme values, input gboolean
# 			default: false
#    optimize-scans - Split spectrum of DCT coefficients into separate scans, input gboolean
# 			default: false
#    quant-table  - Use predefined quantization table with given index, input gint
# 			default: 0
# 			min: 0, max: 8
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'jpegsave_mime', function(in_, Q=NULL, profile=NULL, optimize_coding=NULL, interlace=NULL, no_subsample=NULL, trellis_quant=NULL, overshoot_deringing=NULL, optimize_scans=NULL, quant_table=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_)
  optional <- list(`Q` = Q, `profile` = profile, `optimize-coding` = optimize_coding, `interlace` = interlace, `no-subsample` = no_subsample, `trellis-quant` = trellis_quant, `overshoot-deringing` = overshoot_deringing, `optimize-scans` = optimize_scans, `quant-table` = quant_table, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-coding', 'interlace', 'no-subsample', 'trellis-quant', 'overshoot-deringing', 'optimize-scans', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('jpegsave_mime', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpsave' save image to webp file
# usage:
#    webpsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 0, max: 100
#    lossless     - enable lossless compression, input gboolean
# 			default: false
#    preset       - Preset for lossy compression, input VipsForeignWebpPreset
# 			default: default
# 			allowed: default, picture, photo, drawing, icon, text
#    smart-subsample - Enable high quality chroma subsampling, input gboolean
# 			default: false
#    near-lossless - Enable preprocessing in lossless mode (uses Q), input gboolean
# 			default: false
#    alpha-q      - Change alpha plane fidelity for lossy compression, input gint
# 			default: 100
# 			min: 0, max: 100
#    min-size     - Optimise for minium size, input gboolean
# 			default: false
#    kmin         - Minimum number of frames between key frames, input gint
# 			default: 2147483646
# 			min: 0, max: 2147483647
#    kmax         - Maximum number of frames between key frames, input gint
# 			default: 2147483647
# 			min: 0, max: 2147483647
#    reduction-effort - Level of CPU effort to reduce file size, input gint
# 			default: 4
# 			min: 0, max: 6
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpsave', function(in_, filename, Q=NULL, lossless=NULL, preset=NULL, smart_subsample=NULL, near_lossless=NULL, alpha_q=NULL, min_size=NULL, kmin=NULL, kmax=NULL, reduction_effort=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`Q` = Q, `lossless` = lossless, `preset` = preset, `smart-subsample` = smart_subsample, `near-lossless` = near_lossless, `alpha-q` = alpha_q, `min-size` = min_size, `kmin` = kmin, `kmax` = kmax, `reduction-effort` = reduction_effort, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('lossless', 'smart-subsample', 'near-lossless', 'min-size', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpsave_buffer' save image to webp buffer
# usage:
#    webpsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 0, max: 100
#    lossless     - enable lossless compression, input gboolean
# 			default: false
#    preset       - Preset for lossy compression, input VipsForeignWebpPreset
# 			default: default
# 			allowed: default, picture, photo, drawing, icon, text
#    smart-subsample - Enable high quality chroma subsampling, input gboolean
# 			default: false
#    near-lossless - Enable preprocessing in lossless mode (uses Q), input gboolean
# 			default: false
#    alpha-q      - Change alpha plane fidelity for lossy compression, input gint
# 			default: 100
# 			min: 0, max: 100
#    min-size     - Optimise for minium size, input gboolean
# 			default: false
#    kmin         - Minimum number of frames between key frames, input gint
# 			default: 2147483646
# 			min: 0, max: 2147483647
#    kmax         - Maximum number of frames between key frames, input gint
# 			default: 2147483647
# 			min: 0, max: 2147483647
#    reduction-effort - Level of CPU effort to reduce file size, input gint
# 			default: 4
# 			min: 0, max: 6
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpsave_buffer', function(in_, buffer, Q=NULL, lossless=NULL, preset=NULL, smart_subsample=NULL, near_lossless=NULL, alpha_q=NULL, min_size=NULL, kmin=NULL, kmax=NULL, reduction_effort=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`Q` = Q, `lossless` = lossless, `preset` = preset, `smart-subsample` = smart_subsample, `near-lossless` = near_lossless, `alpha-q` = alpha_q, `min-size` = min_size, `kmin` = kmin, `kmax` = kmax, `reduction-effort` = reduction_effort, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('lossless', 'smart-subsample', 'near-lossless', 'min-size', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'webpsave_target' save image to webp target
# usage:
#    webpsave_target in target [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    target       - Target to save to, input VipsTarget
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 0, max: 100
#    lossless     - enable lossless compression, input gboolean
# 			default: false
#    preset       - Preset for lossy compression, input VipsForeignWebpPreset
# 			default: default
# 			allowed: default, picture, photo, drawing, icon, text
#    smart-subsample - Enable high quality chroma subsampling, input gboolean
# 			default: false
#    near-lossless - Enable preprocessing in lossless mode (uses Q), input gboolean
# 			default: false
#    alpha-q      - Change alpha plane fidelity for lossy compression, input gint
# 			default: 100
# 			min: 0, max: 100
#    min-size     - Optimise for minium size, input gboolean
# 			default: false
#    kmin         - Minimum number of frames between key frames, input gint
# 			default: 2147483646
# 			min: 0, max: 2147483647
#    kmax         - Maximum number of frames between key frames, input gint
# 			default: 2147483647
# 			min: 0, max: 2147483647
#    reduction-effort - Level of CPU effort to reduce file size, input gint
# 			default: 4
# 			min: 0, max: 6
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'webpsave_target', function(in_, target, Q=NULL, lossless=NULL, preset=NULL, smart_subsample=NULL, near_lossless=NULL, alpha_q=NULL, min_size=NULL, kmin=NULL, kmax=NULL, reduction_effort=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, target)
  optional <- list(`Q` = Q, `lossless` = lossless, `preset` = preset, `smart-subsample` = smart_subsample, `near-lossless` = near_lossless, `alpha-q` = alpha_q, `min-size` = min_size, `kmin` = kmin, `kmax` = kmax, `reduction-effort` = reduction_effort, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('lossless', 'smart-subsample', 'near-lossless', 'min-size', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('webpsave_target', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tiffsave' save image to tiff file
# usage:
#    tiffsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    compression  - Compression for this file, input VipsForeignTiffCompression
# 			default: none
# 			allowed: none, jpeg, deflate, packbits, ccittfax4, lzw, webp, zstd
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    predictor    - Compression prediction, input VipsForeignTiffPredictor
# 			default: horizontal
# 			allowed: none, horizontal, float
#    profile      - ICC profile to embed, input gchararray
#    tile         - Write a tiled tiff, input gboolean
# 			default: false
#    tile-width   - Tile width in pixels, input gint
# 			default: 128
# 			min: 1, max: 32768
#    tile-height  - Tile height in pixels, input gint
# 			default: 128
# 			min: 1, max: 32768
#    pyramid      - Write a pyramidal tiff, input gboolean
# 			default: false
#    miniswhite   - Use 0 for white in 1-bit images, input gboolean
# 			default: false
#    squash       - Squash images down to 1 bit, input gboolean
# 			default: false
#    resunit      - Resolution unit, input VipsForeignTiffResunit
# 			default: cm
# 			allowed: cm, inch
#    xres         - Horizontal resolution in pixels/mm, input gdouble
# 			default: 1
# 			min: 0.001, max: 1e+06
#    yres         - Vertical resolution in pixels/mm, input gdouble
# 			default: 1
# 			min: 0.001, max: 1e+06
#    bigtiff      - Write a bigtiff image, input gboolean
# 			default: false
#    properties   - Write a properties document to IMAGEDESCRIPTION, input gboolean
# 			default: false
#    region-shrink - Method to shrink regions, input VipsRegionShrink
# 			default: mean
# 			allowed: mean, median, mode
#    level        - ZSTD compression level, input gint
# 			default: 10
# 			min: 1, max: 22
#    lossless     - Enable WEBP lossless mode, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDoub
# ...
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tiffsave', function(in_, filename, compression=NULL, Q=NULL, predictor=NULL, profile=NULL, tile=NULL, tile_width=NULL, tile_height=NULL, pyramid=NULL, miniswhite=NULL, squash=NULL, resunit=NULL, xres=NULL, yres=NULL, bigtiff=NULL, properties=NULL, region_shrink=NULL, level=NULL, lossless=NULL, strip=NULL, background=NULL) {
  required <- list(in_, filename)
  optional <- list(`compression` = compression, `Q` = Q, `predictor` = predictor, `profile` = profile, `tile` = tile, `tile-width` = tile_width, `tile-height` = tile_height, `pyramid` = pyramid, `miniswhite` = miniswhite, `squash` = squash, `resunit` = resunit, `xres` = xres, `yres` = yres, `bigtiff` = bigtiff, `properties` = properties, `region-shrink` = region_shrink, `level` = level, `lossless` = lossless, `strip` = strip, `background` = background)
  for (opt_name in c('tile', 'pyramid', 'miniswhite', 'squash', 'bigtiff', 'properties', 'lossless', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tiffsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'tiffsave_buffer' save image to tiff buffer
# usage:
#    tiffsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    compression  - Compression for this file, input VipsForeignTiffCompression
# 			default: none
# 			allowed: none, jpeg, deflate, packbits, ccittfax4, lzw, webp, zstd
#    Q            - Q factor, input gint
# 			default: 75
# 			min: 1, max: 100
#    predictor    - Compression prediction, input VipsForeignTiffPredictor
# 			default: horizontal
# 			allowed: none, horizontal, float
#    profile      - ICC profile to embed, input gchararray
#    tile         - Write a tiled tiff, input gboolean
# 			default: false
#    tile-width   - Tile width in pixels, input gint
# 			default: 128
# 			min: 1, max: 32768
#    tile-height  - Tile height in pixels, input gint
# 			default: 128
# 			min: 1, max: 32768
#    pyramid      - Write a pyramidal tiff, input gboolean
# 			default: false
#    miniswhite   - Use 0 for white in 1-bit images, input gboolean
# 			default: false
#    squash       - Squash images down to 1 bit, input gboolean
# 			default: false
#    resunit      - Resolution unit, input VipsForeignTiffResunit
# 			default: cm
# 			allowed: cm, inch
#    xres         - Horizontal resolution in pixels/mm, input gdouble
# 			default: 1
# 			min: 0.001, max: 1e+06
#    yres         - Vertical resolution in pixels/mm, input gdouble
# 			default: 1
# 			min: 0.001, max: 1e+06
#    bigtiff      - Write a bigtiff image, input gboolean
# 			default: false
#    properties   - Write a properties document to IMAGEDESCRIPTION, input gboolean
# 			default: false
#    region-shrink - Method to shrink regions, input VipsRegionShrink
# 			default: mean
# 			allowed: mean, median, mode
#    level        - ZSTD compression level, input gint
# 			default: 10
# 			min: 1, max: 22
#    lossless     - Enable WEBP lossless mode, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArr
# ...
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'tiffsave_buffer', function(in_, buffer, compression=NULL, Q=NULL, predictor=NULL, profile=NULL, tile=NULL, tile_width=NULL, tile_height=NULL, pyramid=NULL, miniswhite=NULL, squash=NULL, resunit=NULL, xres=NULL, yres=NULL, bigtiff=NULL, properties=NULL, region_shrink=NULL, level=NULL, lossless=NULL, strip=NULL, background=NULL) {
  required <- list(in_, buffer)
  optional <- list(`compression` = compression, `Q` = Q, `predictor` = predictor, `profile` = profile, `tile` = tile, `tile-width` = tile_width, `tile-height` = tile_height, `pyramid` = pyramid, `miniswhite` = miniswhite, `squash` = squash, `resunit` = resunit, `xres` = xres, `yres` = yres, `bigtiff` = bigtiff, `properties` = properties, `region-shrink` = region_shrink, `level` = level, `lossless` = lossless, `strip` = strip, `background` = background)
  for (opt_name in c('tile', 'pyramid', 'miniswhite', 'squash', 'bigtiff', 'properties', 'lossless', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('tiffsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'magicksave' save file with ImageMagick
# usage:
#    magicksave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    format       - Format to save in, input gchararray
#    quality      - Quality to use, input gint
# 			default: 0
# 			min: 0, max: 100
#    optimize-gif-frames - Apply GIF frames optimization, input gboolean
# 			default: false
#    optimize-gif-transparency - Apply GIF transparency optimization, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'magicksave', function(in_, filename, format=NULL, quality=NULL, optimize_gif_frames=NULL, optimize_gif_transparency=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`format` = format, `quality` = quality, `optimize-gif-frames` = optimize_gif_frames, `optimize-gif-transparency` = optimize_gif_transparency, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-gif-frames', 'optimize-gif-transparency', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('magicksave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'magicksave_buffer' save image to magick buffer
# usage:
#    magicksave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    format       - Format to save in, input gchararray
#    quality      - Quality to use, input gint
# 			default: 0
# 			min: 0, max: 100
#    optimize-gif-frames - Apply GIF frames optimization, input gboolean
# 			default: false
#    optimize-gif-transparency - Apply GIF transparency optimization, input gboolean
# 			default: false
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'magicksave_buffer', function(in_, buffer, format=NULL, quality=NULL, optimize_gif_frames=NULL, optimize_gif_transparency=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`format` = format, `quality` = quality, `optimize-gif-frames` = optimize_gif_frames, `optimize-gif-transparency` = optimize_gif_transparency, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('optimize-gif-frames', 'optimize-gif-transparency', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('magicksave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fitssave' save image to fits file
# usage:
#    fitssave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to save to, input gchararray
# optional arguments:
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fitssave', function(in_, filename, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('fitssave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'heifsave' save image in HEIF format
# usage:
#    heifsave in filename [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
#    filename     - Filename to load from, input gchararray
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 50
# 			min: 1, max: 100
#    lossless     - Enable lossless compression, input gboolean
# 			default: false
#    compression  - Compression format, input VipsForeignHeifCompression
# 			default: hevc
# 			allowed: hevc, avc, jpeg, av1
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'heifsave', function(in_, filename, Q=NULL, lossless=NULL, compression=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, filename)
  optional <- list(`Q` = Q, `lossless` = lossless, `compression` = compression, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('lossless', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('heifsave', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'heifsave_buffer' save image in HEIF format
# usage:
#    heifsave_buffer in [--option-name option-value ...]
# where:
#    in           - Image to save, input VipsImage
# outputs:
#    buffer       - Buffer to save to, output VipsBlob
# optional arguments:
#    Q            - Q factor, input gint
# 			default: 50
# 			min: 1, max: 100
#    lossless     - Enable lossless compression, input gboolean
# 			default: false
#    compression  - Compression format, input VipsForeignHeifCompression
# 			default: hevc
# 			allowed: hevc, avc, jpeg, av1
#    strip        - Strip all metadata from image, input gboolean
# 			default: false
#    background   - Background value, input VipsArrayDouble
#    page-height  - Set page height for multipage save, input gint
# 			default: 0
# 			min: 0, max: 10000000
# operation flags: sequential nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'heifsave_buffer', function(in_, buffer, Q=NULL, lossless=NULL, compression=NULL, strip=NULL, background=NULL, page_height=NULL) {
  required <- list(in_, buffer)
  optional <- list(`Q` = Q, `lossless` = lossless, `compression` = compression, `strip` = strip, `background` = background, `page-height` = page_height)
  for (opt_name in c('lossless', 'strip')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('heifsave_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'thumbnail' generate thumbnail from file
# usage:
#    thumbnail filename out width [--option-name option-value ...]
# where:
#    filename     - Filename to read from, input gchararray
#    out          - Output image, output VipsImage
#    width        - Size to this width, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    height       - Size to this height, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    size         - Only upsize, only downsize, or both, input VipsSize
# 			default: both
# 			allowed: both, up, down, force
#    no-rotate    - Don't use orientation tags to rotate image upright, input gboolean
# 			default: false
#    crop         - Reduce to fill target rectangle, then crop, input VipsInteresting
# 			default: none
# 			allowed: none, centre, entropy, attention, low, high
#    linear       - Reduce in linear light, input gboolean
# 			default: false
#    import-profile - Fallback import profile, input gchararray
#    export-profile - Fallback export profile, input gchararray
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'thumbnail', function(filename, out, width, height=NULL, size=NULL, no_rotate=NULL, crop=NULL, linear=NULL, import_profile=NULL, export_profile=NULL, intent=NULL) {
  required <- list(filename, out, width)
  optional <- list(`height` = height, `size` = size, `no-rotate` = no_rotate, `crop` = crop, `linear` = linear, `import-profile` = import_profile, `export-profile` = export_profile, `intent` = intent)
  for (opt_name in c('no-rotate', 'linear')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('thumbnail', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'thumbnail_buffer' generate thumbnail from buffer
# usage:
#    thumbnail_buffer buffer out width [--option-name option-value ...]
# where:
#    buffer       - Buffer to load from, input VipsBlob
#    out          - Output image, output VipsImage
#    width        - Size to this width, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    option-string - Options that are passed on to the underlying loader, input gchararray
#    height       - Size to this height, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    size         - Only upsize, only downsize, or both, input VipsSize
# 			default: both
# 			allowed: both, up, down, force
#    no-rotate    - Don't use orientation tags to rotate image upright, input gboolean
# 			default: false
#    crop         - Reduce to fill target rectangle, then crop, input VipsInteresting
# 			default: none
# 			allowed: none, centre, entropy, attention, low, high
#    linear       - Reduce in linear light, input gboolean
# 			default: false
#    import-profile - Fallback import profile, input gchararray
#    export-profile - Fallback export profile, input gchararray
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'thumbnail_buffer', function(buffer, out, width, option_string=NULL, height=NULL, size=NULL, no_rotate=NULL, crop=NULL, linear=NULL, import_profile=NULL, export_profile=NULL, intent=NULL) {
  required <- list(buffer, out, width)
  optional <- list(`option-string` = option_string, `height` = height, `size` = size, `no-rotate` = no_rotate, `crop` = crop, `linear` = linear, `import-profile` = import_profile, `export-profile` = export_profile, `intent` = intent)
  for (opt_name in c('no-rotate', 'linear')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('thumbnail_buffer', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'thumbnail_image' generate thumbnail from image
# usage:
#    thumbnail_image in out width [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    width        - Size to this width, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    height       - Size to this height, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    size         - Only upsize, only downsize, or both, input VipsSize
# 			default: both
# 			allowed: both, up, down, force
#    no-rotate    - Don't use orientation tags to rotate image upright, input gboolean
# 			default: false
#    crop         - Reduce to fill target rectangle, then crop, input VipsInteresting
# 			default: none
# 			allowed: none, centre, entropy, attention, low, high
#    linear       - Reduce in linear light, input gboolean
# 			default: false
#    import-profile - Fallback import profile, input gchararray
#    export-profile - Fallback export profile, input gchararray
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'thumbnail_image', function(in_, out, width, height=NULL, size=NULL, no_rotate=NULL, crop=NULL, linear=NULL, import_profile=NULL, export_profile=NULL, intent=NULL) {
  required <- list(in_, out, width)
  optional <- list(`height` = height, `size` = size, `no-rotate` = no_rotate, `crop` = crop, `linear` = linear, `import-profile` = import_profile, `export-profile` = export_profile, `intent` = intent)
  for (opt_name in c('no-rotate', 'linear')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('thumbnail_image', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'thumbnail_source' generate thumbnail from source
# usage:
#    thumbnail_source source out width [--option-name option-value ...]
# where:
#    source       - Source to load from, input VipsSource
#    out          - Output image, output VipsImage
#    width        - Size to this width, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    option-string - Options that are passed on to the underlying loader, input gchararray
#    height       - Size to this height, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    size         - Only upsize, only downsize, or both, input VipsSize
# 			default: both
# 			allowed: both, up, down, force
#    no-rotate    - Don't use orientation tags to rotate image upright, input gboolean
# 			default: false
#    crop         - Reduce to fill target rectangle, then crop, input VipsInteresting
# 			default: none
# 			allowed: none, centre, entropy, attention, low, high
#    linear       - Reduce in linear light, input gboolean
# 			default: false
#    import-profile - Fallback import profile, input gchararray
#    export-profile - Fallback export profile, input gchararray
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
# operation flags: nocache 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'thumbnail_source', function(source, out, width, option_string=NULL, height=NULL, size=NULL, no_rotate=NULL, crop=NULL, linear=NULL, import_profile=NULL, export_profile=NULL, intent=NULL) {
  required <- list(source, out, width)
  optional <- list(`option-string` = option_string, `height` = height, `size` = size, `no-rotate` = no_rotate, `crop` = crop, `linear` = linear, `import-profile` = import_profile, `export-profile` = export_profile, `intent` = intent)
  for (opt_name in c('no-rotate', 'linear')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('thumbnail_source', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mapim' resample with a map image
# usage:
#    mapim in out index [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    index        - Index pixels with this, input VipsImage
# optional arguments:
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mapim', function(in_, out, index, interpolate=NULL) {
  required <- list(in_, out, index)
  optional <- list(`interpolate` = interpolate)
  
  self$set_command('mapim', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'shrink' shrink an image
# usage:
#    shrink in out hshrink vshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    hshrink      - Horizontal shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
#    vshrink      - Vertical shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'shrink', function(in_, out, hshrink, vshrink) {
  required <- list(in_, out, hshrink, vshrink)
  optional <- list()
  
  self$set_command('shrink', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'shrinkh' shrink an image horizontally
# usage:
#    shrinkh in out hshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    hshrink      - Horizontal shrink factor, input gint
# 			default: 1
# 			min: 1, max: 1000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'shrinkh', function(in_, out, hshrink) {
  required <- list(in_, out, hshrink)
  optional <- list()
  
  self$set_command('shrinkh', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'shrinkv' shrink an image vertically
# usage:
#    shrinkv in out vshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    vshrink      - Vertical shrink factor, input gint
# 			default: 1
# 			min: 1, max: 1000000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'shrinkv', function(in_, out, vshrink) {
  required <- list(in_, out, vshrink)
  optional <- list()
  
  self$set_command('shrinkv', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'reduceh' shrink an image horizontally
# usage:
#    reduceh in out hshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    hshrink      - Horizontal shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
# optional arguments:
#    kernel       - Resampling kernel, input VipsKernel
# 			default: lanczos3
# 			allowed: nearest, linear, cubic, mitchell, lanczos2, lanczos3
#    centre       - Use centre sampling convention, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'reduceh', function(in_, out, hshrink, kernel=NULL, centre=NULL) {
  required <- list(in_, out, hshrink)
  optional <- list(`kernel` = kernel, `centre` = centre)
  for (opt_name in c('centre')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('reduceh', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'reducev' shrink an image vertically
# usage:
#    reducev in out vshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    vshrink      - Vertical shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
# optional arguments:
#    kernel       - Resampling kernel, input VipsKernel
# 			default: lanczos3
# 			allowed: nearest, linear, cubic, mitchell, lanczos2, lanczos3
#    centre       - Use centre sampling convention, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'reducev', function(in_, out, vshrink, kernel=NULL, centre=NULL) {
  required <- list(in_, out, vshrink)
  optional <- list(`kernel` = kernel, `centre` = centre)
  for (opt_name in c('centre')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('reducev', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'reduce' reduce an image
# usage:
#    reduce in out hshrink vshrink [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    hshrink      - Horizontal shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
#    vshrink      - Vertical shrink factor, input gdouble
# 			default: 1
# 			min: 1, max: 1e+06
# optional arguments:
#    kernel       - Resampling kernel, input VipsKernel
# 			default: lanczos3
# 			allowed: nearest, linear, cubic, mitchell, lanczos2, lanczos3
#    centre       - Use centre sampling convention, input gboolean
# 			default: false
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'reduce', function(in_, out, hshrink, vshrink, kernel=NULL, centre=NULL) {
  required <- list(in_, out, hshrink, vshrink)
  optional <- list(`kernel` = kernel, `centre` = centre)
  for (opt_name in c('centre')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('reduce', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'quadratic' resample an image with a quadratic transform
# usage:
#    quadratic in out coeff [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    coeff        - Coefficient matrix, input VipsImage
# optional arguments:
#    interpolate  - Interpolate values with this, input VipsInterpolate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'quadratic', function(in_, out, coeff, interpolate=NULL) {
  required <- list(in_, out, coeff)
  optional <- list(`interpolate` = interpolate)
  
  self$set_command('quadratic', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'affine' affine transform of an image
# usage:
#    affine in out matrix [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    matrix       - Transformation matrix, input VipsArrayDouble
# optional arguments:
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#    oarea        - Area of output to generate, input VipsArrayInt
#    odx          - Horizontal output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    ody          - Vertical output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idx          - Horizontal input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idy          - Vertical input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    background   - Background value, input VipsArrayDouble
#    extend       - How to generate the extra pixels, input VipsExtend
# 			default: background
# 			allowed: black, copy, repeat, mirror, white, background
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'affine', function(in_, out, matrix, interpolate=NULL, oarea=NULL, odx=NULL, ody=NULL, idx=NULL, idy=NULL, background=NULL, extend=NULL) {
  required <- list(in_, out, matrix)
  optional <- list(`interpolate` = interpolate, `oarea` = oarea, `odx` = odx, `ody` = ody, `idx` = idx, `idy` = idy, `background` = background, `extend` = extend)
  
  self$set_command('affine', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'similarity' similarity transform of an image
# usage:
#    similarity in out [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    scale        - Scale by this factor, input gdouble
# 			default: 1
# 			min: 0, max: 1e+07
#    angle        - Rotate anticlockwise by this many degrees, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#    background   - Background value, input VipsArrayDouble
#    odx          - Horizontal output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    ody          - Vertical output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idx          - Horizontal input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idy          - Vertical input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'similarity', function(in_, out, scale=NULL, angle=NULL, interpolate=NULL, background=NULL, odx=NULL, ody=NULL, idx=NULL, idy=NULL) {
  required <- list(in_, out)
  optional <- list(`scale` = scale, `angle` = angle, `interpolate` = interpolate, `background` = background, `odx` = odx, `ody` = ody, `idx` = idx, `idy` = idy)
  
  self$set_command('similarity', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rotate' rotate an image by a number of degrees
# usage:
#    rotate in out angle [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    angle        - Rotate anticlockwise by this many degrees, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
# optional arguments:
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#    background   - Background value, input VipsArrayDouble
#    odx          - Horizontal output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    ody          - Vertical output displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idx          - Horizontal input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    idy          - Vertical input displacement, input gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rotate', function(in_, out, angle, interpolate=NULL, background=NULL, odx=NULL, ody=NULL, idx=NULL, idy=NULL) {
  required <- list(in_, out, angle)
  optional <- list(`interpolate` = interpolate, `background` = background, `odx` = odx, `ody` = ody, `idx` = idx, `idy` = idy)
  
  self$set_command('rotate', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'resize' resize an image
# usage:
#    resize in out scale [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    scale        - Scale image by this factor, input gdouble
# 			default: 0
# 			min: 0, max: 1e+07
# optional arguments:
#    kernel       - Resampling kernel, input VipsKernel
# 			default: lanczos3
# 			allowed: nearest, linear, cubic, mitchell, lanczos2, lanczos3
#    vscale       - Vertical scale image by this factor, input gdouble
# 			default: 0
# 			min: 0, max: 1e+07
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'resize', function(in_, out, scale, kernel=NULL, vscale=NULL) {
  required <- list(in_, out, scale)
  optional <- list(`kernel` = kernel, `vscale` = vscale)
  
  self$set_command('resize', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'colourspace' convert to a new colorspace
# usage:
#    colourspace in out space [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    space        - Destination color space, input VipsInterpretation
# 			default: srgb
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
# optional arguments:
#    source-space - Source color space, input VipsInterpretation
# 			default: srgb
# 			allowed: error, multiband, b-w, histogram, xyz, lab, cmyk, labq, rgb, cmc, lch, labs, srgb, yxy, fourier, rgb16, grey16, matrix, scrgb, hsv
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'colourspace', function(in_, out, space, source_space=NULL) {
  required <- list(in_, out, space)
  optional <- list(`source-space` = source_space)
  
  self$set_command('colourspace', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Lab2XYZ' transform CIELAB to XYZ
# usage:
#    Lab2XYZ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    temp         - Color temperature, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'Lab2XYZ', function(in_, out, temp=NULL) {
  required <- list(in_, out)
  optional <- list(`temp` = temp)
  
  self$set_command('Lab2XYZ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'XYZ2Lab' transform XYZ to Lab
# usage:
#    XYZ2Lab in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    temp         - Colour temperature, input VipsArrayDouble
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'XYZ2Lab', function(in_, out, temp=NULL) {
  required <- list(in_, out)
  optional <- list(`temp` = temp)
  
  self$set_command('XYZ2Lab', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Lab2LCh' transform Lab to LCh
# usage:
#    Lab2LCh in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'Lab2LCh', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('Lab2LCh', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LCh2Lab' transform LCh to Lab
# usage:
#    LCh2Lab in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LCh2Lab', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LCh2Lab', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LCh2CMC' transform LCh to CMC
# usage:
#    LCh2CMC in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LCh2CMC', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LCh2CMC', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'CMC2LCh' transform LCh to CMC
# usage:
#    CMC2LCh in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'CMC2LCh', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('CMC2LCh', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'XYZ2Yxy' transform XYZ to Yxy
# usage:
#    XYZ2Yxy in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'XYZ2Yxy', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('XYZ2Yxy', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Yxy2XYZ' transform Yxy to XYZ
# usage:
#    Yxy2XYZ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'Yxy2XYZ', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('Yxy2XYZ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'scRGB2XYZ' transform scRGB to XYZ
# usage:
#    scRGB2XYZ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'scRGB2XYZ', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('scRGB2XYZ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'XYZ2scRGB' transform XYZ to scRGB
# usage:
#    XYZ2scRGB in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'XYZ2scRGB', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('XYZ2scRGB', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LabQ2Lab' unpack a LabQ image to float Lab
# usage:
#    LabQ2Lab in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LabQ2Lab', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LabQ2Lab', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Lab2LabQ' transform float Lab to LabQ coding
# usage:
#    Lab2LabQ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'Lab2LabQ', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('Lab2LabQ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LabQ2LabS' unpack a LabQ image to short Lab
# usage:
#    LabQ2LabS in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LabQ2LabS', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LabQ2LabS', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LabS2LabQ' transform short Lab to LabQ coding
# usage:
#    LabS2LabQ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LabS2LabQ', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LabS2LabQ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LabS2Lab' transform signed short Lab to float
# usage:
#    LabS2Lab in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LabS2Lab', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LabS2Lab', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'Lab2LabS' transform float Lab to signed short
# usage:
#    Lab2LabS in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'Lab2LabS', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('Lab2LabS', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rad2float' unpack Radiance coding to float RGB
# usage:
#    rad2float in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rad2float', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('rad2float', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'float2rad' transform float RGB to Radiance coding
# usage:
#    float2rad in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'float2rad', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('float2rad', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'LabQ2sRGB' convert a LabQ image to sRGB
# usage:
#    LabQ2sRGB in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'LabQ2sRGB', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('LabQ2sRGB', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sRGB2HSV' transform sRGB to HSV
# usage:
#    sRGB2HSV in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sRGB2HSV', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('sRGB2HSV', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'HSV2sRGB' transform HSV to sRGB
# usage:
#    HSV2sRGB in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'HSV2sRGB', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('HSV2sRGB', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'icc_import' import from device with ICC profile
# usage:
#    icc_import in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    pcs          - Set Profile Connection Space, input VipsPCS
# 			default: lab
# 			allowed: lab, xyz
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
#    embedded     - Use embedded input profile, if available, input gboolean
# 			default: false
#    input-profile - Filename to load input profile from, input gchararray
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'icc_import', function(in_, out, pcs=NULL, intent=NULL, embedded=NULL, input_profile=NULL) {
  required <- list(in_, out)
  optional <- list(`pcs` = pcs, `intent` = intent, `embedded` = embedded, `input-profile` = input_profile)
  for (opt_name in c('embedded')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('icc_import', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'icc_export' output to device with ICC profile
# usage:
#    icc_export in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    pcs          - Set Profile Connection Space, input VipsPCS
# 			default: lab
# 			allowed: lab, xyz
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
#    output-profile - Filename to load output profile from, input gchararray
#    depth        - Output device space depth in bits, input gint
# 			default: 8
# 			min: 8, max: 16
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'icc_export', function(in_, out, pcs=NULL, intent=NULL, output_profile=NULL, depth=NULL) {
  required <- list(in_, out)
  optional <- list(`pcs` = pcs, `intent` = intent, `output-profile` = output_profile, `depth` = depth)
  
  self$set_command('icc_export', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'icc_transform' transform between devices with ICC profiles
# usage:
#    icc_transform in out output-profile [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    output-profile - Filename to load output profile from, input gchararray
# optional arguments:
#    pcs          - Set Profile Connection Space, input VipsPCS
# 			default: lab
# 			allowed: lab, xyz
#    intent       - Rendering intent, input VipsIntent
# 			default: relative
# 			allowed: perceptual, relative, saturation, absolute
#    embedded     - Use embedded input profile, if available, input gboolean
# 			default: false
#    input-profile - Filename to load input profile from, input gchararray
#    depth        - Output device space depth in bits, input gint
# 			default: 8
# 			min: 8, max: 16
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'icc_transform', function(in_, out, output_profile, pcs=NULL, intent=NULL, embedded=NULL, input_profile=NULL, depth=NULL) {
  required <- list(in_, out, output_profile)
  optional <- list(`pcs` = pcs, `intent` = intent, `embedded` = embedded, `input-profile` = input_profile, `depth` = depth)
  for (opt_name in c('embedded')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('icc_transform', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'dE76' calculate dE76
# usage:
#    dE76 left right out [--option-name option-value ...]
# where:
#    left         - Left-hand input image, input VipsImage
#    right        - Right-hand input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'dE76', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('dE76', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'dE00' calculate dE00
# usage:
#    dE00 left right out [--option-name option-value ...]
# where:
#    left         - Left-hand input image, input VipsImage
#    right        - Right-hand input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'dE00', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('dE00', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'dECMC' calculate dECMC
# usage:
#    dECMC left right out [--option-name option-value ...]
# where:
#    left         - Left-hand input image, input VipsImage
#    right        - Right-hand input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'dECMC', function(left, right, out) {
  required <- list(left, right, out)
  optional <- list()
  
  self$set_command('dECMC', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sRGB2scRGB' convert an sRGB image to scRGB
# usage:
#    sRGB2scRGB in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sRGB2scRGB', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('sRGB2scRGB', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'scRGB2BW' convert scRGB to BW
# usage:
#    scRGB2BW in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    depth        - Output device space depth in bits, input gint
# 			default: 8
# 			min: 8, max: 16
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'scRGB2BW', function(in_, out, depth=NULL) {
  required <- list(in_, out)
  optional <- list(`depth` = depth)
  
  self$set_command('scRGB2BW', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'scRGB2sRGB' convert an scRGB image to sRGB
# usage:
#    scRGB2sRGB in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    depth        - Output device space depth in bits, input gint
# 			default: 8
# 			min: 8, max: 16
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'scRGB2sRGB', function(in_, out, depth=NULL) {
  required <- list(in_, out)
  optional <- list(`depth` = depth)
  
  self$set_command('scRGB2sRGB', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'CMYK2XYZ' transform CMYK to XYZ
# usage:
#    CMYK2XYZ in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'CMYK2XYZ', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('CMYK2XYZ', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'XYZ2CMYK' transform XYZ to CMYK
# usage:
#    XYZ2CMYK in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'XYZ2CMYK', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('XYZ2CMYK', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'profile_load' load named ICC profile
# usage:
#    profile_load name [--option-name option-value ...]
# where:
#    name         - Profile name, input gchararray
# outputs:
#    profile      - Loaded profile, output VipsBlob
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'profile_load', function(name, profile) {
  required <- list(name, profile)
  optional <- list()
  
  self$set_command('profile_load', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'maplut' map an image though a lut
# usage:
#    maplut in out lut [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    lut          - Look-up table image, input VipsImage
# optional arguments:
#    band         - apply one-band lut to this band of in, input gint
# 			default: -1
# 			min: -1, max: 10000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'maplut', function(in_, out, lut, band=NULL) {
  required <- list(in_, out, lut)
  optional <- list(`band` = band)
  
  self$set_command('maplut', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'case' use pixel values to pick cases from an array of images
# usage:
#    case index cases out [--option-name option-value ...]
# where:
#    index        - Index image, input VipsImage
#    cases        - Array of case images, input VipsArrayImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'case', function(index, cases, out) {
  required <- list(index, cases, out)
  optional <- list()
  
  self$set_command('case', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'percent' find threshold for percent of pixels
# usage:
#    percent in percent [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    percent      - Percent of pixels, input gdouble
# 			default: 50
# 			min: 0, max: 100
# outputs:
#    threshold    - Threshold above which lie percent of pixels, output gint
# 			default: 0
# 			min: 0, max: 65535
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'percent', function(in_, percent, threshold) {
  required <- list(in_, percent, threshold)
  optional <- list()
  
  self$set_command('percent', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'stdif' statistical difference
# usage:
#    stdif in out width height [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    width        - Window width in pixels, input gint
# 			default: 11
# 			min: 1, max: 256
#    height       - Window height in pixels, input gint
# 			default: 11
# 			min: 1, max: 256
# optional arguments:
#    s0           - New deviation, input gdouble
# 			default: 50
# 			min: -inf, max: inf
#    b            - Weight of new deviation, input gdouble
# 			default: 0.5
# 			min: 0, max: 2
#    m0           - New mean, input gdouble
# 			default: 128
# 			min: -inf, max: inf
#    a            - Weight of new mean, input gdouble
# 			default: 0.5
# 			min: 0, max: 1
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'stdif', function(in_, out, width, height, s0=NULL, b=NULL, m0=NULL, a=NULL) {
  required <- list(in_, out, width, height)
  optional <- list(`s0` = s0, `b` = b, `m0` = m0, `a` = a)
  
  self$set_command('stdif', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_cum' form cumulative histogram
# usage:
#    hist_cum in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_cum', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('hist_cum', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_match' match two histograms
# usage:
#    hist_match in ref out [--option-name option-value ...]
# where:
#    in           - Input histogram, input VipsImage
#    ref          - Reference histogram, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_match', function(in_, ref, out) {
  required <- list(in_, ref, out)
  optional <- list()
  
  self$set_command('hist_match', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_norm' normalise histogram
# usage:
#    hist_norm in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_norm', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('hist_norm', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_equal' histogram equalisation
# usage:
#    hist_equal in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    band         - Equalise with this band, input gint
# 			default: -1
# 			min: -1, max: 100000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_equal', function(in_, out, band=NULL) {
  required <- list(in_, out)
  optional <- list(`band` = band)
  
  self$set_command('hist_equal', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_plot' plot histogram
# usage:
#    hist_plot in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_plot', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('hist_plot', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_local' local histogram equalisation
# usage:
#    hist_local in out width height [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    width        - Window width in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
#    height       - Window height in pixels, input gint
# 			default: 1
# 			min: 1, max: 10000000
# optional arguments:
#    max-slope    - Maximum slope (CLAHE), input gint
# 			default: 0
# 			min: 0, max: 100
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_local', function(in_, out, width, height, max_slope=NULL) {
  required <- list(in_, out, width, height)
  optional <- list(`max-slope` = max_slope)
  
  self$set_command('hist_local', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_ismonotonic' test for monotonicity
# usage:
#    hist_ismonotonic in [--option-name option-value ...]
# where:
#    in           - Input histogram image, input VipsImage
# outputs:
#    monotonic    - true if in is monotonic, output gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_ismonotonic', function(in_, monotonic) {
  required <- list(in_, monotonic)
  optional <- list()
  
  self$set_command('hist_ismonotonic', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'hist_entropy' estimate image entropy
# usage:
#    hist_entropy in [--option-name option-value ...]
# where:
#    in           - Input histogram image, input VipsImage
# outputs:
#    out          - Output value, output gdouble
# 			default: 0
# 			min: -inf, max: inf
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'hist_entropy', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('hist_entropy', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'conv' convolution operation
# usage:
#    conv in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# optional arguments:
#    precision    - Convolve with this precision, input VipsPrecision
# 			default: float
# 			allowed: integer, float, approximate
#    layers       - Use this many layers in approximation, input gint
# 			default: 5
# 			min: 1, max: 1000
#    cluster      - Cluster lines closer than this in approximation, input gint
# 			default: 1
# 			min: 1, max: 100
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'conv', function(in_, out, mask, precision=NULL, layers=NULL, cluster=NULL) {
  required <- list(in_, out, mask)
  optional <- list(`precision` = precision, `layers` = layers, `cluster` = cluster)
  
  self$set_command('conv', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'conva' approximate integer convolution
# usage:
#    conva in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# optional arguments:
#    layers       - Use this many layers in approximation, input gint
# 			default: 5
# 			min: 1, max: 1000
#    cluster      - Cluster lines closer than this in approximation, input gint
# 			default: 1
# 			min: 1, max: 100
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'conva', function(in_, out, mask, layers=NULL, cluster=NULL) {
  required <- list(in_, out, mask)
  optional <- list(`layers` = layers, `cluster` = cluster)
  
  self$set_command('conva', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'convf' float convolution operation
# usage:
#    convf in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'convf', function(in_, out, mask) {
  required <- list(in_, out, mask)
  optional <- list()
  
  self$set_command('convf', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'convi' int convolution operation
# usage:
#    convi in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'convi', function(in_, out, mask) {
  required <- list(in_, out, mask)
  optional <- list()
  
  self$set_command('convi', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'compass' convolve with rotating mask
# usage:
#    compass in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# optional arguments:
#    times        - Rotate and convolve this many times, input gint
# 			default: 2
# 			min: 1, max: 1000
#    angle        - Rotate mask by this much between convolutions, input VipsAngle45
# 			default: d90
# 			allowed: d0, d45, d90, d135, d180, d225, d270, d315
#    combine      - Combine convolution results like this, input VipsCombine
# 			default: max
# 			allowed: max, sum, min
#    precision    - Convolve with this precision, input VipsPrecision
# 			default: float
# 			allowed: integer, float, approximate
#    layers       - Use this many layers in approximation, input gint
# 			default: 5
# 			min: 1, max: 1000
#    cluster      - Cluster lines closer than this in approximation, input gint
# 			default: 1
# 			min: 1, max: 100
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'compass', function(in_, out, mask, times=NULL, angle=NULL, combine=NULL, precision=NULL, layers=NULL, cluster=NULL) {
  required <- list(in_, out, mask)
  optional <- list(`times` = times, `angle` = angle, `combine` = combine, `precision` = precision, `layers` = layers, `cluster` = cluster)
  
  self$set_command('compass', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'convsep' seperable convolution operation
# usage:
#    convsep in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# optional arguments:
#    precision    - Convolve with this precision, input VipsPrecision
# 			default: float
# 			allowed: integer, float, approximate
#    layers       - Use this many layers in approximation, input gint
# 			default: 5
# 			min: 1, max: 1000
#    cluster      - Cluster lines closer than this in approximation, input gint
# 			default: 1
# 			min: 1, max: 100
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'convsep', function(in_, out, mask, precision=NULL, layers=NULL, cluster=NULL) {
  required <- list(in_, out, mask)
  optional <- list(`precision` = precision, `layers` = layers, `cluster` = cluster)
  
  self$set_command('convsep', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'convasep' approximate separable integer convolution
# usage:
#    convasep in out mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
# optional arguments:
#    layers       - Use this many layers in approximation, input gint
# 			default: 5
# 			min: 1, max: 1000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'convasep', function(in_, out, mask, layers=NULL) {
  required <- list(in_, out, mask)
  optional <- list(`layers` = layers)
  
  self$set_command('convasep', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fastcor' fast correlation
# usage:
#    fastcor in ref out [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    ref          - Input reference image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fastcor', function(in_, ref, out) {
  required <- list(in_, ref, out)
  optional <- list()
  
  self$set_command('fastcor', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'spcor' spatial correlation
# usage:
#    spcor in ref out [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    ref          - Input reference image, input VipsImage
#    out          - Output image, output VipsImage
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'spcor', function(in_, ref, out) {
  required <- list(in_, ref, out)
  optional <- list()
  
  self$set_command('spcor', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sharpen' unsharp masking for print
# usage:
#    sharpen in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    sigma        - Sigma of Gaussian, input gdouble
# 			default: 0.5
# 			min: 1e-06, max: 10000
#    x1           - Flat/jaggy threshold, input gdouble
# 			default: 2
# 			min: 0, max: 1e+06
#    y2           - Maximum brightening, input gdouble
# 			default: 10
# 			min: 0, max: 1e+06
#    y3           - Maximum darkening, input gdouble
# 			default: 20
# 			min: 0, max: 1e+06
#    m1           - Slope for flat areas, input gdouble
# 			default: 0
# 			min: 0, max: 1e+06
#    m2           - Slope for jaggy areas, input gdouble
# 			default: 3
# 			min: 0, max: 1e+06
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sharpen', function(in_, out, sigma=NULL, x1=NULL, y2=NULL, y3=NULL, m1=NULL, m2=NULL) {
  required <- list(in_, out)
  optional <- list(`sigma` = sigma, `x1` = x1, `y2` = y2, `y3` = y3, `m1` = m1, `m2` = m2)
  
  self$set_command('sharpen', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'gaussblur' gaussian blur
# usage:
#    gaussblur in out sigma [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#    sigma        - Sigma of Gaussian, input gdouble
# 			default: 1.5
# 			min: 0.01, max: 1000
# optional arguments:
#    min-ampl     - Minimum amplitude of Gaussian, input gdouble
# 			default: 0.2
# 			min: 0.001, max: 1
#    precision    - Convolve with this precision, input VipsPrecision
# 			default: integer
# 			allowed: integer, float, approximate
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'gaussblur', function(in_, out, sigma, min_ampl=NULL, precision=NULL) {
  required <- list(in_, out, sigma)
  optional <- list(`min-ampl` = min_ampl, `precision` = precision)
  
  self$set_command('gaussblur', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'canny' Canny edge detector
# usage:
#    canny in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    sigma        - Sigma of Gaussian, input gdouble
# 			default: 1.4
# 			min: 0.01, max: 1000
#    precision    - Convolve with this precision, input VipsPrecision
# 			default: float
# 			allowed: integer, float, approximate
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'canny', function(in_, out, sigma=NULL, precision=NULL) {
  required <- list(in_, out)
  optional <- list(`sigma` = sigma, `precision` = precision)
  
  self$set_command('canny', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'sobel' Sobel edge detector
# usage:
#    sobel in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'sobel', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('sobel', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fwfft' forward FFT
# usage:
#    fwfft in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fwfft', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('fwfft', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'invfft' inverse FFT
# usage:
#    invfft in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    real         - Output only the real part of the transform, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'invfft', function(in_, out, real=NULL) {
  required <- list(in_, out)
  optional <- list(`real` = real)
  for (opt_name in c('real')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('invfft', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'freqmult' frequency-domain filtering
# usage:
#    freqmult in mask out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    mask         - Input mask image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'freqmult', function(in_, mask, out) {
  required <- list(in_, mask, out)
  optional <- list()
  
  self$set_command('freqmult', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'spectrum' make displayable power spectrum
# usage:
#    spectrum in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'spectrum', function(in_, out) {
  required <- list(in_, out)
  optional <- list()
  
  self$set_command('spectrum', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'phasecor' calculate phase correlation
# usage:
#    phasecor in in2 out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    in2          - Second input image, input VipsImage
#    out          - Output image, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'phasecor', function(in_, in2, out) {
  required <- list(in_, in2, out)
  optional <- list()
  
  self$set_command('phasecor', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'morph' morphology operation
# usage:
#    morph in out mask morph [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    mask         - Input matrix image, input VipsImage
#    morph        - Morphological operation to perform, input VipsOperationMorphology
# 			default: erode
# 			allowed: erode, dilate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'morph', function(in_, out, mask, morph) {
  required <- list(in_, out, mask, morph)
  optional <- list()
  
  self$set_command('morph', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'rank' rank filter
# usage:
#    rank in out width height index [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Output image, output VipsImage
#    width        - Window width in pixels, input gint
# 			default: 11
# 			min: 1, max: 100000
#    height       - Window height in pixels, input gint
# 			default: 11
# 			min: 1, max: 100000
#    index        - Select pixel at index, input gint
# 			default: 50
# 			min: 0, max: 100000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'rank', function(in_, out, width, height, index) {
  required <- list(in_, out, width, height, index)
  optional <- list()
  
  self$set_command('rank', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'countlines' count lines in an image
# usage:
#    countlines in direction [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    direction    - Countlines left-right or up-down, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
# outputs:
#    nolines      - Number of lines, output gdouble
# 			default: 0
# 			min: 0, max: 1e+07
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'countlines', function(in_, direction, nolines) {
  required <- list(in_, direction, nolines)
  optional <- list()
  
  self$set_command('countlines', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'labelregions' label regions in an image
# usage:
#    labelregions in mask [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    mask         - Mask of region labels, output VipsImage
# optional arguments:
#    segments     - Number of discrete contigious regions, output gint
# 			default: 0
# 			min: 0, max: 1000000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'labelregions', function(in_, mask, segments=NULL) {
  required <- list(in_, mask)
  optional <- list(`segments` = segments)
  
  self$set_command('labelregions', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'fill_nearest' fill image zeros with nearest non-zero pixel
# usage:
#    fill_nearest in out [--option-name option-value ...]
# where:
#    in           - Input image argument, input VipsImage
#    out          - Value of nearest non-zero pixel, output VipsImage
# optional arguments:
#    distance     - Distance to nearest non-zero pixel, output VipsImage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'fill_nearest', function(in_, out, distance=NULL) {
  required <- list(in_, out)
  optional <- list(`distance` = distance)
  
  self$set_command('fill_nearest', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_rect' paint a rectangle on an image
# usage:
#    draw_rect image ink left top width height [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    ink          - Color for pixels, input VipsArrayDouble
#    left         - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    top          - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    width        - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    height       - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
# optional arguments:
#    fill         - Draw a solid object, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_rect', function(image, ink, left, top, width, height, fill=NULL) {
  required <- list(image, ink, left, top, width, height)
  optional <- list(`fill` = fill)
  for (opt_name in c('fill')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('draw_rect', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_mask' draw a mask on an image
# usage:
#    draw_mask image ink mask x y [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    ink          - Color for pixels, input VipsArrayDouble
#    mask         - Mask of pixels to draw, input VipsImage
#    x            - Draw mask here, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    y            - Draw mask here, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_mask', function(image, ink, mask, x, y) {
  required <- list(image, ink, mask, x, y)
  optional <- list()
  
  self$set_command('draw_mask', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_line' draw a line on an image
# usage:
#    draw_line image ink x1 y1 x2 y2 [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    ink          - Color for pixels, input VipsArrayDouble
#    x1           - Start of draw_line, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    y1           - Start of draw_line, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    x2           - End of draw_line, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    y2           - End of draw_line, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_line', function(image, ink, x1, y1, x2, y2) {
  required <- list(image, ink, x1, y1, x2, y2)
  optional <- list()
  
  self$set_command('draw_line', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_circle' draw a circle on an image
# usage:
#    draw_circle image ink cx cy radius [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    ink          - Color for pixels, input VipsArrayDouble
#    cx           - Centre of draw_circle, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    cy           - Centre of draw_circle, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    radius       - Radius in pixels, input gint
# 			default: 0
# 			min: 0, max: 1000000000
# optional arguments:
#    fill         - Draw a solid object, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_circle', function(image, ink, cx, cy, radius, fill=NULL) {
  required <- list(image, ink, cx, cy, radius)
  optional <- list(`fill` = fill)
  for (opt_name in c('fill')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('draw_circle', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_flood' flood-fill an area
# usage:
#    draw_flood image ink x y [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    ink          - Color for pixels, input VipsArrayDouble
#    x            - DrawFlood start point, input gint
# 			default: 0
# 			min: 0, max: 1000000000
#    y            - DrawFlood start point, input gint
# 			default: 0
# 			min: 0, max: 1000000000
# optional arguments:
#    test         - Test pixels in this image, input VipsImage
#    equal        - DrawFlood while equal to edge, input gboolean
# 			default: false
#    left         - Left edge of modified area, output gint
# 			default: 0
# 			min: 0, max: 1000000000
#    top          - top edge of modified area, output gint
# 			default: 0
# 			min: 0, max: 1000000000
#    width        - width of modified area, output gint
# 			default: 0
# 			min: 0, max: 1000000000
#    height       - height of modified area, output gint
# 			default: 0
# 			min: 0, max: 1000000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_flood', function(image, ink, x, y, test=NULL, equal=NULL, left=NULL, top=NULL, width=NULL, height=NULL) {
  required <- list(image, ink, x, y)
  optional <- list(`test` = test, `equal` = equal, `left` = left, `top` = top, `width` = width, `height` = height)
  for (opt_name in c('equal')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('draw_flood', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_image' paint an image into another image
# usage:
#    draw_image image sub x y [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    sub          - Sub-image to insert into main image, input VipsImage
#    x            - Draw image here, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    y            - Draw image here, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
# optional arguments:
#    mode         - Combining mode, input VipsCombineMode
# 			default: set
# 			allowed: set, add
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_image', function(image, sub, x, y, mode=NULL) {
  required <- list(image, sub, x, y)
  optional <- list(`mode` = mode)
  
  self$set_command('draw_image', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'draw_smudge' blur a rectangle on an image
# usage:
#    draw_smudge image left top width height [--option-name option-value ...]
# where:
#    image        - Image to draw on, input VipsImage
#    left         - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    top          - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    width        - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#    height       - Rect to fill, input gint
# 			default: 0
# 			min: -1000000000, max: 1000000000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'draw_smudge', function(image, left, top, width, height) {
  required <- list(image, left, top, width, height)
  optional <- list()
  
  self$set_command('draw_smudge', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'merge' merge two images
# usage:
#    merge ref sec out direction dx dy [--option-name option-value ...]
# where:
#    ref          - Reference image, input VipsImage
#    sec          - Secondary image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - Horizontal or vertcial merge, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
#    dx           - Horizontal displacement from sec to ref, input gint
# 			default: 1
# 			min: -100000000, max: 1000000000
#    dy           - Vertical displacement from sec to ref, input gint
# 			default: 1
# 			min: -100000000, max: 1000000000
# optional arguments:
#    mblend       - Maximum blend size, input gint
# 			default: 10
# 			min: 0, max: 10000
# operation flags: sequential 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'merge', function(ref, sec, out, direction, dx, dy, mblend=NULL) {
  required <- list(ref, sec, out, direction, dx, dy)
  optional <- list(`mblend` = mblend)
  
  self$set_command('merge', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mosaic' mosaic two images
# usage:
#    mosaic ref sec out direction xref yref xsec ysec [--option-name option-value ...]
# where:
#    ref          - Reference image, input VipsImage
#    sec          - Secondary image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - Horizontal or vertcial mosaic, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
#    xref         - Position of reference tie-point, input gint
# 			default: 1
# 			min: 0, max: 1000000000
#    yref         - Position of reference tie-point, input gint
# 			default: 1
# 			min: 0, max: 1000000000
#    xsec         - Position of secondary tie-point, input gint
# 			default: 1
# 			min: 0, max: 1000000000
#    ysec         - Position of secondary tie-point, input gint
# 			default: 1
# 			min: 0, max: 1000000000
# optional arguments:
#    hwindow      - Half window size, input gint
# 			default: 5
# 			min: 0, max: 1000000000
#    harea        - Half area size, input gint
# 			default: 15
# 			min: 0, max: 1000000000
#    mblend       - Maximum blend size, input gint
# 			default: 10
# 			min: 0, max: 10000
#    bandno       - Band to search for features on, input gint
# 			default: 0
# 			min: 0, max: 10000
#    dx0          - Detected integer offset, output gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    dy0          - Detected integer offset, output gint
# 			default: 0
# 			min: -10000000, max: 10000000
#    scale1       - Detected scale, output gdouble
# 			default: 1
# 			min: -1e+07, max: 1e+07
#    angle1       - Detected rotation, output gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    dy1          - Detected first-order displacement, output gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#    dx1          - Detected first-order displacement, output gdouble
# 			default: 0
# 			min: -1e+07, max: 1e+07
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mosaic', function(ref, sec, out, direction, xref, yref, xsec, ysec, hwindow=NULL, harea=NULL, mblend=NULL, bandno=NULL, dx0=NULL, dy0=NULL, scale1=NULL, angle1=NULL, dy1=NULL, dx1=NULL) {
  required <- list(ref, sec, out, direction, xref, yref, xsec, ysec)
  optional <- list(`hwindow` = hwindow, `harea` = harea, `mblend` = mblend, `bandno` = bandno, `dx0` = dx0, `dy0` = dy0, `scale1` = scale1, `angle1` = angle1, `dy1` = dy1, `dx1` = dx1)
  
  self$set_command('mosaic', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'mosaic1' first-order mosaic of two images
# usage:
#    mosaic1 ref sec out direction xr1 yr1 xs1 ys1 xr2 yr2 xs2 ys2 [--option-name option-value ...]
# where:
#    ref          - Reference image, input VipsImage
#    sec          - Secondary image, input VipsImage
#    out          - Output image, output VipsImage
#    direction    - Horizontal or vertcial mosaic, input VipsDirection
# 			default: horizontal
# 			allowed: horizontal, vertical
#    xr1          - Position of first reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    yr1          - Position of first reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xs1          - Position of first secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    ys1          - Position of first secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xr2          - Position of second reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    yr2          - Position of second reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xs2          - Position of second secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    ys2          - Position of second secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
# optional arguments:
#    hwindow      - Half window size, input gint
# 			default: 5
# 			min: 0, max: 1000000000
#    harea        - Half area size, input gint
# 			default: 15
# 			min: 0, max: 1000000000
#    search       - Search to improve tie-points, input gboolean
# 			default: false
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#    mblend       - Maximum blend size, input gint
# 			default: 10
# 			min: 0, max: 10000
#    bandno       - Band to search for features on, input gint
# 			default: 0
# 			min: 0, max: 10000
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'mosaic1', function(ref, sec, out, direction, xr1, yr1, xs1, ys1, xr2, yr2, xs2, ys2, hwindow=NULL, harea=NULL, search=NULL, interpolate=NULL, mblend=NULL, bandno=NULL) {
  required <- list(ref, sec, out, direction, xr1, yr1, xs1, ys1, xr2, yr2, xs2, ys2)
  optional <- list(`hwindow` = hwindow, `harea` = harea, `search` = search, `interpolate` = interpolate, `mblend` = mblend, `bandno` = bandno)
  for (opt_name in c('search')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('mosaic1', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'match' first-order match of two images
# usage:
#    match ref sec out xr1 yr1 xs1 ys1 xr2 yr2 xs2 ys2 [--option-name option-value ...]
# where:
#    ref          - Reference image, input VipsImage
#    sec          - Secondary image, input VipsImage
#    out          - Output image, output VipsImage
#    xr1          - Position of first reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    yr1          - Position of first reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xs1          - Position of first secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    ys1          - Position of first secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xr2          - Position of second reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    yr2          - Position of second reference tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    xs2          - Position of second secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
#    ys2          - Position of second secondary tie-point, input gint
# 			default: 1
# 			min: -1000000000, max: 1000000000
# optional arguments:
#    hwindow      - Half window size, input gint
# 			default: 1
# 			min: 0, max: 1000000000
#    harea        - Half area size, input gint
# 			default: 1
# 			min: 0, max: 1000000000
#    search       - Search to improve tie-points, input gboolean
# 			default: false
#    interpolate  - Interpolate pixels with this, input VipsInterpolate
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'match', function(ref, sec, out, xr1, yr1, xs1, ys1, xr2, yr2, xs2, ys2, hwindow=NULL, harea=NULL, search=NULL, interpolate=NULL) {
  required <- list(ref, sec, out, xr1, yr1, xs1, ys1, xr2, yr2, xs2, ys2)
  optional <- list(`hwindow` = hwindow, `harea` = harea, `search` = search, `interpolate` = interpolate)
  for (opt_name in c('search')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('match', required=required, optional=optional)
}) 


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 'globalbalance' global balance an image mosaic
# usage:
#    globalbalance in out [--option-name option-value ...]
# where:
#    in           - Input image, input VipsImage
#    out          - Output image, output VipsImage
# optional arguments:
#    gamma        - Image gamma, input gdouble
# 			default: 1.6
# 			min: 1e-05, max: 10
#    int-output   - Integer output, input gboolean
# 			default: false
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Vips$set('public', 'globalbalance', function(in_, out, gamma=NULL, int_output=NULL) {
  required <- list(in_, out)
  optional <- list(`gamma` = gamma, `int-output` = int_output)
  for (opt_name in c('int-output')) {
  if (!isTRUE(optional[[opt_name]])) {
     optional[[opt_name]] <- NULL
  }
}
  self$set_command('globalbalance', required=required, optional=optional)
}) 



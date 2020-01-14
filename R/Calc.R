#' Hello, world!
#'
#' This is an example function named 'hello'
#' which prints 'Hello, world!'.
#'
#' You can learn more about package authoring with RStudio at:
#'
#'   http://r-pkgs.had.co.nz/
#' @param x arg1
#' @param y arg2
#' Some useful keyboard shortcuts for package authoring:
#'
#'   Build and Reload Package:  'Ctrl + Shift + B'
#'   Check Package:             'Ctrl + Shift + E'
#'   Test Package:              'Ctrl + Shift + T'


sum <-function(x,y){

  if(is.character(x) || is.character(y)){
    stop("input must be numeric")
  }


  result = .C("sum_interface", x = as.integer(x),y = as.integer(y),
                 val = integer(1),
                 PACKAGE="Samplepck")

    result$val
}

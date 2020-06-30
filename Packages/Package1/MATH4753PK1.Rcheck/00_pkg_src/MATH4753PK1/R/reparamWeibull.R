#' @title reparamWeibull
#' @description reparametrizes the variables to fit with R's function for the weibull density function
#' @param a alpha value of Weibull distribution
#' @param b beta value of Weibull distribution
#' @return new values for a and b, reparametrized for R
#' @export
#'
#' @examples reparwbl(2,5) # 2 is the shape, 5 is the scale, use the ar and br values generated from this function for pweibull
reparwbl = function(a,b){ # a,b from text
  list(ar=a,br=b^(1/a)) # ar, br for R
}

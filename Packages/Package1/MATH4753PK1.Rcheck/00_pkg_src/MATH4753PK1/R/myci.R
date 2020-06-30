#' @title 1 Sample Confidence Interval
#' @description Takes in a vector x and alpha (for confidence interval) and calculates the left and right endpoints of the confidence interval
#' @usage myci(x,alpha)
#' @param x a vector
#' @param alpha rejection region of the confidence interval
#'
#' @return A confidence interval
#' @export
#'
#' @examples myci(x=rnorm(30,mean=10,sd=12),alpha = .05)
myci <- function(x,alpha=.05){
  meansam <- mean(x) # Find mean
  n <- length(x) # Find sample size
  s <- sd(x) # Find standard deviation
  tcalc <- qt(alpha/2, df=n-1) # Calculate T statistic given alpha and degrees of freedom
  left <- meansam + tcalc*(s/sqrt(n)) # Left endpoint
  right <- meansam - tcalc*(s/sqrt(n)) # RIght endpoint
  print(paste(left, " - ",right))
}

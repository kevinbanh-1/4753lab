#' @title myncurve
#' @description creates a density plot for a continuous random plot by creating a polygon that fits within the boundary of the probability density within the curve
#' @param mu mean
#' @param sigma standard deviation
#' @param a x max
#' @return a curve plot with the probability area filled in
#' @export
#'
#' @examples
#' myncurve(mu=2,sigma=5,a=6)
#'
myncurve = function(mu, sigma,a){
  # Plot a normal curve
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  # Find the area between x= -infinity to x = a

  # x values corresponding to the x - cords of points on the curve
  xcurve=seq(mu-3*sigma,a,length=1000)

  # Y values corresponding to the x values
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)

  # Fill in the polygon representing probability density with the given vertices
  polygon(c(mu-3*sigma,xcurve,a),c(0,ycurve,0),col="orange")

  # Put in the text with the appropriate area

  # Area
  prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  list <- list(prob)
  print(list)
  # Click to paste the text onto the graph
  text(mu,0.05,paste("Area = ", prob, sep=""))
}


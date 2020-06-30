#' @title Plot of a one sample t-test
#' @description Takes in various parameters to compute the p-values of the sample and create a distribution plot where the rejection region is shown.
#' @usage mypvalue(t0,max=4,n=20,alpha=0.05)
#' @param t0 t statistic
#' @param max maximum value of the x-axis
#' @param n the sample size
#' @param alpha rejection region of the confidence interval
#'
#' @return a plot of the p-value and the rejection region
#' @export
#'
#' @examples t0 <- qt(0.05/2,df=20)
#'           mypvalue(t0,max,n=21,alpha=0.05)
mypvalue=function(t0,max=4,n=20, alpha=0.05){

  #calculate alpha/2
  va=round(pt(-t0,df=n-1),4)
  pv=2*va

  # plot the t dist
  curve(dt(x,df=n-1),xlim=c(neg(max),max),ylab="T Density",xlab=expression(t),
        main=substitute(paste("P-value=", pv, " alpha=", alpha)))


  # set up points on the polygon to the right
  xcurve=seq(t0,max,length=1000)
  ycurve=dt(xcurve,df=n-1)

  # set up points to the left
  xlcurve=seq(-t0,-max,length=1000)
  ylcurve=dt(xcurve,df=n-1)

  # Shade in the polygon defined by the line segments
  polygon(c(t0,xcurve,max),c(0,ycurve,0),col="green")
  polygon(c(-t0,xlcurve,-max),c(0,ylcurve,0),col="green")

  # make quantiles
  q=qt(1-alpha/2,n-1)
  abline( v=c(q,-q),lwd=2) # plot the cut off t value
  axis(3,c(q,-q),c(expression(abs(t[alpha/2])),expression(-abs(t[alpha/2]))))


  # Annotation
  text(0.5*(t0+max),max(ycurve),substitute(paste(area, "=",va)))
  text(-0.5*(t0+max),max(ycurve),expression(area))

  return(list(q=q,pvalue=pv))
}

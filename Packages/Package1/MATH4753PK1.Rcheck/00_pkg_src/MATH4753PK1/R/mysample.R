#' @title mysample
#' @description chooses n number of random samples, turn the sample into a factor then makes a table of the relative frequency and plot the barplot
#' @usage mysample(n,iter,p)
#' @param iter  number of iterations
#' @param n sample size
#' @param p probability
#'
#' @return a barplot of relative frequencies
#' @export
#'
#' @examples mysample(10,1000,1)
#'
mysample=function(n, iter=10,p=0.5){
  for( i in 1:iter){
    #make a sample
    s=sample(1:10,n,replace=TRUE)
    # turn the sample into a factor
    sf=factor(s,levels=1:10)
    #make a barplot
    barplot(table(sf)/n,beside=TRUE,col=rainbow(10),
            main=paste("Example sample()", " iteration ", i, " n= ", n,sep="") ,
            ylim=c(0,0.2)
    )
  }
}

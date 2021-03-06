% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mybootstrap.R
\name{myboot2}
\alias{myboot2}
\title{Bootstrap Function for Calculating Intervals}
\usage{
myboot2(iter,x,fun,alpha,cx,...)
}
\arguments{
\item{iter}{number of iterations the function goes through}

\item{x}{size of population}

\item{fun}{function}

\item{alpha}{significance level}

\item{cx}{size of font}

\item{...}{Other}
}
\value{

}
\description{
Function that takes in a sample size value, number of iterations, and
alpha value to calculate a bootstrap confidence interval along with plotting a histogram.
}
\examples{
set.seed(10); sam=rbeta(20,shape1=3,shape2=4)
myboot2(x=sam,alpha=.09,iter=10000)
}

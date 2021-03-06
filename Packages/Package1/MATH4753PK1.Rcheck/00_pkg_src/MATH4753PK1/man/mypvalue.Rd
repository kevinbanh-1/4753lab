% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mypvalue.R
\name{mypvalue}
\alias{mypvalue}
\title{Plot of a one sample t-test}
\usage{
mypvalue(t0,max=4,n=20,alpha=0.05)
}
\arguments{
\item{t0}{t statistic}

\item{max}{maximum value of the x-axis}

\item{n}{the sample size}

\item{alpha}{rejection region of the confidence interval}
}
\value{
a plot of the p-value and the rejection region
}
\description{
Takes in various parameters to compute the p-values of the sample and create a distribution plot where the rejection region is shown.
}
\examples{
t0 <- qt(0.05/2,df=20)
          mypvalue(t0,max,n=21,alpha=0.05)
}

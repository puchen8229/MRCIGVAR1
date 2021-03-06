% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VARs.R
\name{Type}
\alias{Type}
\title{Check the consistency between type Co and EXOG}
\usage{
Type(Co, EXOG)
}
\arguments{
\item{Co}{: the coefficients of the deterministic components}

\item{EXOG}{: the exogenous variables}
}
\value{
: type
}
\description{
This function will output type according to specification of Co and EXOG.
}
\examples{
Type(Co=matrix(c(0,0,1,1),2,2),EXOG= c(1:10))
Type(Co=matrix(c(1,1,1,1),2,2),EXOG= c(1:10))
Type(Co=matrix(c(1,1,1,1,0,0),2,3),EXOG= c(1:10))
Type(Co=c(1,1),EXOG= NA)
Type(Co=c(0,0),EXOG= NA)
VARData(n=2,p=2,T=100,Co=matrix(c(2,2,1,1),2,2),type="exog0",X=c(1:100))
VARData(n=2,p=2,T=100,Co=matrix(c(1,1,1,1),2,2),type="exog1",X=c(1:100))
}

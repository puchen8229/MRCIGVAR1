% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MRCIVAR.R
\name{MRCIVAR_Selectm}
\alias{MRCIVAR_Selectm}
\title{Calculation of the model selection values for MRVAR models}
\usage{
MRCIVAR_Selectm(res = res_e, L_V = L_v, TH_V = TH_v)
}
\arguments{
\item{res}{: an object generated from CIGVARData or estimated from CIGVARest.}

\item{L_V}{: a 2 components vector containing the maxima of the domestic lag and the foreign lag respectively.}

\item{TH_V}{: a vector containing possible threshold values for the selection.}
}
\value{
: A matrix with different lag specifications and the model selection criteria.
}
\description{
Calculation of the model selection values for MRVAR models
}
\examples{

Sigma = 1:(4*4*2)
dim(Sigma) = c(4,4,2) 
Sigma[,,1] = diag(4)
Sigma[,,2] = diag(4)
p=matrix(0,2,2)
p[,1] = c(3,2)

res_d = MRCIVARDatam(n=4,p=p,T=2610,S=2,SESVI=1,TH=0,Sigmao=Sigma,type="const",r=1)
res_e = MRCIVARestm(res=res_d)

TH_v = c(0,0.1)
L_v = c(6,6)
plot(ts(res_d$Y))

Selm = MRCIVAR_Selectm(res=res_e,L_V=L_v,TH_V=TH_v)
Selm[which.min(Selm[,5]),]
Selm[which.min(Selm[,4]),]
MRVAR_Select_Summary(Selm)

}

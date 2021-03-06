% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MRVARs.R
\name{irf_MRVAR_NM1}
\alias{irf_MRVAR_NM1}
\title{Regime specific impulse response functions of MRVAR(n,p,S)}
\usage{
irf_MRVAR_NM1(res, nstep, comb, irf = c("gen", "chol", "chol1", "gen1",
  "comb1"))
}
\arguments{
\item{res}{an MRVAR object as an output of MRVARest}

\item{nstep}{the length of impulse response function}

\item{comb}{a vector specify the weights used in GVAR models. For MRVAR its value is NA.}

\item{irf}{types of the impulse response function c("gen","chol","chol1","gen1","comb1"), gen for GIRF, gen1 for GIRF with unit impulse, chol for Cholezky decomposition, chol1 for Cholezky decomposition with unit impulse, comb1 for concerted action with unit impulse.}
}
\value{
an (n,n,nstep) array of IRF with colunms respesenting the impulse and rows the responses.
}
\description{
This function calculates the regime specific impulse response functions of an estimated MRVAR(n,p,S), using the Bo[,,,s] and Sigma[,,s] matrices of the estimated MRVAR.
}
\examples{


p = matrix(c(2,1,0,0),2,2)
res_d = MRVARData(n=2,p=p,T=300,S=2,SESVI=1)
max(abs(res_d$Y))
res_e  = MRVARest(res_d)
summary_MRVAR(res_e)

IRF    = irf_MRVAR_NM1(res_e,nstep=10,comb=NA,irf="gen")
IRF_CB = irf_MRVAR_NM1_CB2(res_e,nstep=10,comb=NA,irf="gen",runs=200,conf=c(0.05,0.90))
plott(IRF_CB[,,,,1],1,2)
plott(IRF_CB[,,,,2],1,2)
GIRF_migration    = girf_MRVAR_RM(RES=RESS,shock=c(1,1),R = 1800,nstep=10,state=1,resid_method="parametric")
GIRF_migration_cb = girf_MRVAR_RM_CB(RES=RESS,shock=c(1,1),R = 1800,nstep=10,state=1,resid_method="parametric",conf_level=c(0.1,0.9), N=200)
plott(GIRF_migration_cb,1,2)
}

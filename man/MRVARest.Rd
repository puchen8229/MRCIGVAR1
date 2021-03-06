% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MRVARs.R
\name{MRVARest}
\alias{MRVARest}
\title{Estimation of MRVAR(n,p,S)}
\usage{
MRVARest(res)
}
\arguments{
\item{res}{:a object of MRVAR which is an output of MRVARData including at least: n, S, p, type, Y, SESVI, TH, d, and optionally X.}
}
\value{
list(res, LH_AIC, LH_BIC, LH_P, LH_N, LH_NN,LLH_AIC, LLH_BIC, ORBIC, ORAIC, vars_obj): res is an object of MRVAR containing the estimated parameter values, LH is the estimated likelihood. vars_obj is a list contain S estimated VAR object in order to use the utilities of vars package.
}
\description{
This function estimates the unknown parameters of a specified MRVAR(n,p,S) based on provided data.
}
\examples{

p = matrix(c(2,1,0,0),2,2)
res_d = MRVARData(n=2,p=p,T=300,S=2,SESVI=1,type="none")
max(res_d$Y)
res_e = MRVARest(res=res_d)
res_e$LH_AIC
res_e$LH_BIC
res_e$ORBIC
res_e$ORAIC
res_e$LH_P
res_e$LH_N
summary_MRVAR(res_e)
RESS = res_e
#### IRF without regime migration
IRF = irf_MRVAR_NM1(RESS,nstep=10,comb=NA,irf="gen")
IRF_CB = irf_MRVAR_NM1_CB2(RESS,nstep=20,comb=NA,irf="gen",runs=100,conf=c(0.05,0.90))

par(mfrow=c(4,2))
plott(IRF_CB[,,,,1],1,1)
plott(IRF_CB[,,,,1],1,2)
plott(IRF_CB[,,,,1],2,1)
plott(IRF_CB[,,,,1],2,2)
plott(IRF_CB[,,,,2],1,1)
plott(IRF_CB[,,,,2],1,2)
plott(IRF_CB[,,,,2],2,1)
plott(IRF_CB[,,,,2],2,2)

}

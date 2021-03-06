% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MRCIGVAR.R
\name{irf_MRCIGVAR_CB}
\alias{irf_MRCIGVAR_CB}
\title{Regime specific impulse response functions of MRCIGVAR(m,n,p,S)}
\usage{
irf_MRCIGVAR_CB(res, nstep, comb, state = c(2, 1), irf = c("gen",
  "chol", "chol1", "gen1", "comb1"), runs = 200, conf = c(0.05, 0.95),
  NT = 1)
}
\arguments{
\item{res}{a list of estimated MRGVAR as output of MRGVARest}

\item{nstep}{the length of impulse response function}

\item{comb}{a vector specify the concerted action in policy-simulation impulse response function}

\item{state}{an n vector specifying the speciic state for each country.}

\item{irf}{types of the impulse response function c("gen","chol","chol1","gen1","comb1"), gen for GIRF, gen1 for GIRF with unit impulse, chol cholezky decomposition, chol1 cholezky decomposition with unit impulse, comb1 concerted action with unit impulse.}
}
\value{
a matrix of (mn,mn,nstep) as the IRF colunms respesenting the impulse and rows the responses.
}
\description{
This function calculates the regime specific impulse response functions of an estimated MRCIGVAR(n,p,S). Using G[,,,s] and Sigma[,,s] matrices of the estimated MRCIGVAR, this function can produce impulse response functions for any possible combinations of states.
}
\examples{

}

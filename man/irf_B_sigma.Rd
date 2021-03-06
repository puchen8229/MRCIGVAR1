% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VARs_functions.R
\name{irf_B_sigma}
\alias{irf_B_sigma}
\title{This function generate impulse response functions for VAR,CIVAR,MRVAR MRCIVAR, also for GVAR, CIGVAR, MRGVAR and MRCIGVAR.
For the later four classes of models it also provides the functionalities to calculate the global, regional and country-specific shocks.
It also calculates global and regional responses.}
\usage{
irf_B_sigma(B, sigma, nstep, comb, irf = c("gen", "chol", "chol1",
  "gen1", "genN1", "comb1", "smat"), G = NA, smat = NA)
}
\description{
This function generate impulse response functions for VAR,CIVAR,MRVAR MRCIVAR, also for GVAR, CIGVAR, MRGVAR and MRCIGVAR.
For the later four classes of models it also provides the functionalities to calculate the global, regional and country-specific shocks.
It also calculates global and regional responses.
}

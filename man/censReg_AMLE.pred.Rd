% Generated by roxygen2 (4.0.2): do not edit by hand
\name{censReg_AMLE.pred}
\alias{censReg_AMLE.pred}
\title{Support Functions for Censored Regression}
\usage{
censReg_AMLE.pred(fit, XPRED)
}
\arguments{
\item{fit}{the output from \code{censReg_AMLE.fit}.}

\item{XPRED}{a matrix of the prediction variables.}
}
\value{
A list containing the output from the FORTRAN code.
}
\description{
This is a support function for censored regression. It predicts values from
an AMLE/MLE regression on lcens response data.
}
\seealso{
\code{\link{censReg}},
}


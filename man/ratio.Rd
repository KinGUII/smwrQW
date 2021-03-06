% Generated by roxygen2 (4.0.2): do not edit by hand
\name{ratio}
\alias{ratio}
\title{Compute Ratios}
\usage{
ratio(numerator, denominator)
}
\arguments{
\item{numerator}{any valid vector that can be converted to class "mcens." Missing values
are permitted but result in missing values in the output.}

\item{denominator}{any valid vector that can be converted to class "mcens." Missing values
are permitted but result in missing values in the output.}
}
\value{
An object of class "mcens" that is the result of the requested division.
}
\description{
The \code{ratio} function provide a method for computing ratios from water-quality
or other data and maintain the integrity of the data, as opposed to methods that use
simple substitution
}
\details{
Objects of class "qw" are converted to class "mcens" using the \code{wq2mcens}
function, which preserves the minimum value of 0 for "less than" data rather
than \code{as.mcens}, which converts the to left-censored values.
}


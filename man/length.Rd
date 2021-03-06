% Generated by roxygen2 (4.0.2): do not edit by hand
\name{length.lcens}
\alias{length.lcens}
\alias{length.mcens}
\alias{length.qw}
\title{Length of an Object}
\usage{
\method{length}{lcens}(x)

\method{length}{mcens}(x)

\method{length}{qw}(x)

\method{length}{mcens}(x)

\method{length}{qw}(x)
}
\arguments{
\item{x}{a censored-data or water-quality object.}
}
\value{
An integer of length 1 indicating the number of elements in \code{x}.
}
\description{
Get the length of censored or water-quality data objects.
}
\examples{
length(as.lcens(c(1,3, NA), 2))
}
\keyword{attribute}


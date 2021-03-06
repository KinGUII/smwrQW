% Generated by roxygen2 (4.0.2): do not edit by hand
\name{plot.ppw}
\alias{plot.genWilcox}
\alias{plot.ppw}
\title{Plot}
\usage{
\method{plot}{ppw}(x, which = "All", set.up = TRUE, labels, ...)

\method{plot}{genWilcox}(x, which = "All", set.up = TRUE,
  xaxis.log = TRUE, ...)
}
\arguments{
\item{x}{an object having classes "htest" and some other class for which a
\code{plot} method exists.}

\item{which}{either "All" or an number indicating which plot,
see \bold{Details}.}

\item{set.up}{set up the graphics page?}

\item{labels}{use supplied values for y-axis labels instead of sequence
number.}

\item{xaxis.log}{draw the x-axis on a logarithimic scale?}

\item{\dots}{not used, arguments passed to or from other methods.}
}
\value{
The object \code{x} is returned invisibly.
}
\description{
Create diagnostic plots for selected hypothesis tests.
}
\details{
The \code{ppw} method for \code{plot} creates 2 graphs on a single page.
The first graph is the scaled differences from the PPW test with the mean
difference shown by a blue line. The second
graph is the actual differences in the paired values, assuming that the
true minimum for left-censored data is 0. The median difference is shown
by a blue line.

The \code{genWilcox} method creates a single graph that shows the emprical
cumulative distributions for each group.
}
\keyword{hplot}


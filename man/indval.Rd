% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core.functions.R
\name{indval}
\alias{indval}
\alias{indvals}
\title{IndVal scores based on relative abundance across, and occurrence frequency
within, groups}
\usage{
indval(grp, spp, allscores = FALSE)

indvals(grp, spp, allscores = FALSE)
}
\arguments{
\item{grp}{A binary vector (0,1) indicating group membership for partitioning
of rows in 'spp' according to a ranks of an environmental variable.}

\item{spp}{A site-by-taxon matrix of taxa counts at each sampling location.}

\item{allscores}{A logical indicating whether the list of scores returned by
the function should be truncated.  The default is to return just the
largest IndVal (of two, one for each side of the partition) and on which
side of the partition the score occurs. If allscores is TRUE, IndVals on
both sides of the partition, as well as their relative abundances are also
returned.}
}
\value{
A 2-column matrix with the same nrow as the matrix 'spp'. The first
column consists of a 1 (left) or 2 (right) for each taxon indicating on
which group produced the largest IndVal score, and the second column
contains the actual IndVal score.
}
\description{
Calculates indicator value scores using the original method of Dufrene and
Legendre (1997) for all taxa in a site-by-taxon matrix split into two groups
along an environmental gradient. A modified version (indvals) calculates
indicator value scores using a modification of Dufrene and Legendre (1997),
whereby relative abundance is computed as total relative abundance across
groups rather than as mean relative abundance.
}
\details{
The modified version of the original IndVal method was developed to address
potential for bias in change point identification for highly skewed samples.
This and the function 'indvalps' are run when the argument 'ivTot' in the
original TITAN function call is set to TRUE.  The function 'indval' is
expected to be used more frequently, and 'indvals' is provided largely for
comparative purposes.
}
\references{
Dufrene, M. and P. Legendre. 1997. Species assemblages and
indicator species: the need for a flexible asymmetrical approach.
Ecological Monographs 67:345-366.
}
\seealso{
\code{\link[=indvalp]{indvalp()}}, \code{\link[=indvalps]{indvalps()}}, \code{\link[=getivz]{getivz()}}
}
\author{
M. Baker and R. King
}
\keyword{IndVal}
\keyword{Indicator~Species}
\keyword{TITAN}

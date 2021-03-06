% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_cps.R
\name{plot-cps}
\alias{plot-cps}
\alias{plot_cps}
\alias{plotCPs}
\title{Plots probability densities of empirical distributions of bootstrapped change
points}
\usage{
plot_cps(titan.out, taxa.dist = T, z.weights = T, taxaID = NULL,
  cp.med = F, cp.trace = F, cp.hist = T, stacked = F,
  xlabel = "Environmental Gradient", xmin = min(titan.out$env),
  xmax = max(titan.out$envcls) * 1.25, tck = 0.025, bty = "u",
  ntick = 6, cex = 1.75, cex.axis = 1.75, cex.leg = 1.5,
  cex.lab = 1.75, write = F, leg.x = 0.8, leg.y = 0.8,
  leg = TRUE, ...)

plotCPs(...)
}
\arguments{
\item{titan.out}{A TITAN output object.}

\item{taxa.dist}{A logical specifying whether taxon-specific distributions
should be plotted.}

\item{z.weights}{A logical specifying whether taxon-specific or aggregate
community distributions should be weighted by their median z scores (median
of z-score maxima values across bootstrap replicates).}

\item{taxaID}{An index specifying whether a particular taxon should be
targeted for plotting. A 'NULL' value indicates all taxa should be plotted.
Values >0 will select pure and reliabile taxa by their row number within
the 'sppmax' output table. Character strings may also be used corresponding
to the row name within the 'sppmax' output table.}

\item{cp.med}{A logical specifying whether change point locations should be
plotted using the median value across all bootstrap replicates instead of
the observed value.}

\item{cp.trace}{A logical specifying whether IndVals and z scores across all
candidate change points should be plotted.}

\item{cp.hist}{A logical specifying whether histograms of replicate change
point PDFs should be plotted.}

\item{stacked}{A logical specifying whether community level aggregations of
change point PDFs are stacked or plotted separately.}

\item{xlabel}{A character string for the x axis label.}

\item{xmin}{A graphical argument specifying the value of the x axis minimum.}

\item{xmax}{A graphical argument specifying the value of the x axis maximum.}

\item{tck}{A graphical argument specifying the scale of axis tick marks.}

\item{bty}{A graphical argument.}

\item{ntick}{A graphical argument specifying the default number of axis tick
marks.}

\item{cex}{A graphical argument specifying the scaling of the figure.}

\item{cex.axis}{A graphical argument specifying the scaling of the axes.}

\item{cex.leg}{A graphical argument specifying the scaling of the legend.}

\item{cex.lab}{A graphical argument specifying the scaling of the lables.}

\item{write}{A logical specifying whether taxa subsets are written to screen.}

\item{leg.x}{A graphical argument specifying the x coordinate of the legend.}

\item{leg.y}{A graphical argument specifying the y coordinate of the legend.}

\item{leg}{A logical specifying whether or not to plot the legend.}

\item{...}{An argument for passing generic plotting function parameters.}
}
\value{
Three types of plots are possible outcomes of this function.  The
first (taxa.dist=T, taxID=NULL) is a matrix of histograms showing empirical
distributions of bootstrapped change-point locations (as probability
densities) for all pure and reliable taxa.  The value of the probability
densities can be weighted by the median z score for each taxon
(z.weights=T). The second plot (taxa.dist=T, taxID>0 or a taxon label)
overlays a taxon-specific histogram on an abundance scatter plot and the
observed change-point location.  The third plot (taxa.dist=F) shows the sum
of probability densities across all pure and reliable taxa, optionally
weighted by median z scores (z.weights=T) or stacked (stacked=T).
}
\description{
This function allows more detailed exploration of taxon-specific response
documented by TITAN through analysis of empirical distributions of
bootstrapped change points, comparison of those distributions with observed
counts, and aggregate (optionally weighted) summaries of those distributions
across taxa.
}
\details{
Following the intitial (v1.0) TITAN publications, it was clear that
substantial information regarding taxon-specific change points was lost when
bootstrapped distributions were represented solely as quantiles (i.e., as in
\code{\link[=plot_taxa]{plot_taxa()}} and the 'sppmax' output table).  Empirical probability densities
allow greater detail and more nuanced interpretation associated with this
uncertainty, especially when compared against observed abundance and
occurrence.  Further, comparison of the summed probability densities and the
filtered sum(z) plots with the default sum(z) output provides additional
support of community changes consistent with threshold behavior.
}
\note{
Should not be used with output objects from TITAN v1.0.
}
\examples{

data(glades.titan)
plot_cps(glades.titan,
  taxa.dist = FALSE,
  xlabel = "Surface Water TP (ug/l)",
  stacked = TRUE
)

}
\references{
Baker, ME and RS King.  2010. A new method for detecting and
interpreting biodiversity and ecological community thresholds.  Methods in
Ecology and Evolution 1(1): 25:37.

King, RS and ME Baker  2010. Considerations for identifying and
interpreting ecological community thresholds. Journal of the North American
Benthological Association 29(3):998-1008.
}
\seealso{
\code{\link[=plot_taxa]{plot_taxa()}}, \code{\link[=plot_sumz]{plot_sumz()}}
}
\author{
M. Baker and R. King
}

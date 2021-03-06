% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_taxa_ridges.R
\name{plot_taxa_ridges}
\alias{plot_taxa_ridges}
\title{Taxon change point ridge plots}
\usage{
plot_taxa_ridges(titan.out, z1 = TRUE, z2 = TRUE,
  z1_fill_low = "light blue", z1_fill_high = "black",
  z2_fill_low = "pink", z2_fill_high = "red",
  pur.cut = titan.out$arguments[[7]],
  rel.cut = titan.out$arguments[[8]],
  xlabel = "Environmental Gradient", n_ytaxa = 90, ytxt.sz = 10,
  printspp = FALSE, grid = TRUE, xaxis = !grid, xlim, bw, ...)
}
\arguments{
\item{titan.out}{A TITAN output object.}

\item{z1}{A logical specifying whether decreasing taxa should be plotted.}

\item{z2}{A logical specifying whether increasing taxa should be plotted.}

\item{z1_fill_low, z1_fill_high, z2_fill_low, z2_fill_high}{Respective fill
colors passed to \code{\link[=scale_fill_gradient]{scale_fill_gradient()}}}

\item{pur.cut}{pur.cut}

\item{rel.cut}{rel.cut}

\item{xlabel}{A character string for the x axis label.}

\item{n_ytaxa}{The maximum number of taxa to be plotted.}

\item{ytxt.sz}{The relative size of the taxa label along the y axis.}

\item{printspp}{A logical specifying whether the sppmax table should be
printed.}

\item{grid}{The \code{grid} argument of \code{\link[=theme_ridges]{theme_ridges()}}.}

\item{xaxis}{Logical; should the x-axis be plotted?}

\item{xlim}{x axis limits, e.g. \code{xlim =c(0,10)}}

\item{bw}{The bandwidth of used in the kernel density estimate; see
\code{\link[=density]{density()}}.}

\item{...}{...}
}
\value{
A plot of decreasing and/or increasing taxon-specific change points
along the environmental gradient.
}
\description{
Taxon change point ridge plots
}
\note{
Should not be used with output objects from TITAN v1.0.
}
\examples{

data(glades.titan)

plot_taxa_ridges(glades.titan, ytxt.sz=8)
plot_taxa_ridges(glades.titan, ytxt.sz=8, grid = FALSE)
plot_taxa_ridges(glades.titan, ytxt.sz=8, xaxis = TRUE)

# example with x-axis styling
# plot_taxa_ridges(glades.titan,
#   xlabel = expression(paste("Surface water total phosphorus ("*mu*"g/l)")),
#   z2 = FALSE
# )


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
\code{\link[=plot_sumz]{plot_sumz()}}, \code{\link[=plot_cps]{plot_cps()}}
}
\author{
M. Baker, R. King, D. Kahle
}

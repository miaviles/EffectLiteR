% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elr_plot_condeffects.R
\name{conditionalEffectsPlot}
\alias{conditionalEffectsPlot}
\title{Plot conditional effects}
\usage{
conditionalEffectsPlot(obj, zsel = "id", gxsel = "g1", colour = "",
  show.ci = FALSE, regression = "default", regression.ci = FALSE)
}
\arguments{
\item{obj}{Object of class \code{effectlite} obtained from fitting an effect 
model using \code{\link[EffectLiteR]{effectLite}}}

\item{zsel}{Name of a covariate (character string) plotted on the x-axis. If "id" 
(the default) the subject index is shown on the x-axis, where subjects in the data are
 enumerated as 1:nrow(data).}

\item{gxsel}{Name of an effect function (character string) plotted on the y-axis.}

\item{colour}{Name of a covariate (character string) used as colour variable 
in the plot.}

\item{show.ci}{Logical. Should 95 percent confidence intervals around conditional effects be shown in the plot.}

\item{regression}{Specifies if a regression line should be drawn. Can be one of 
c("default","smooth","linear","none")}

\item{regression.ci}{Logical. Will be passed on to \code{\link[ggplot2]{geom_smooth}} and specifies its \code{se} argument. Notice that the confidence interval shown by \code{\link[ggplot2]{geom_smooth}} does not take uncertainty into account that comes from estimating the values of the conditional effects on the y axis.}
}
\value{
Object of class \code{c("gg", "ggplot")}.
}
\description{
Can be used to make a conditional effects plot with an effect function on the
y axis and a covariate on the x axis. \code{ggplot2} is used to create the plot.
}
\examples{
m1 <- effectLite(y="dv", x="x", k="k1", z="z1", control="control", data=example01)
conditionalEffectsPlot(m1, zsel="z1", gxsel="g1", colour="k1")

}

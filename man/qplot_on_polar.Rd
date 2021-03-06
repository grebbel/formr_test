% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feedback_plotting.R
\name{qplot_on_polar}
\alias{qplot_on_polar}
\title{Time-polar plot}
\usage{
qplot_on_polar(normed_data, ylab = "Your value", title = "")
}
\arguments{
\item{normed_data}{a dataset with a value column containing z-standardised value and a variable column containing labels for those values}

\item{ylab}{Y-axis label, defaults to "Percentage of other people with this value"}

\item{title}{Plot title}
}
\description{
Pass in a data.frame with z-standardised values (x - Mean)/SD,
and variable names, get a bar chart. Getting your data.frame into this shape
probably will mean using tidyr + dplyr.
If the data.frame has an se column or ymax/ymin columns, these will be displayed on top of the bars and the bars will become transparent.
}
\examples{
weekdays = c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
normed_data = data.frame(variable = factor(weekdays, weekdays), 
	value = c(0,1,0.2,0.5,1.5,2,1)) # standardise value
qplot_on_polar(normed_data, title = "Your alcohol consumption across the week")
normed_data = data.frame(variable = factor(1:24,1:24), 
	value = 3+rnorm(24), se = rep(0.2,24)) # standardise value
qplot_on_polar(normed_data, title = "Your mood around the clock")
}

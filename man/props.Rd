% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shorthands.R
\name{props}
\alias{props}
\title{proportions table}
\usage{
props(..., exclude = NULL)
}
\arguments{
\item{...}{passed to crosstabs}

\item{exclude}{defaults to NULL (i.e. includes NA)}
}
\description{
quick and easy function  to show proportions of values of a variable,
defaults to including missings
}
\examples{
x = NA
props(~ x)
}

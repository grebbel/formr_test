% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmarkdown_options.R
\name{pander_handler}
\alias{pander_handler}
\title{pander_handler}
\usage{
pander_handler(x, ..., row.names = FALSE, dont_transform = c("knit_asis"))
}
\arguments{
\item{x}{object to be printed}

\item{...}{passed to pander}

\item{row.names}{row.names argument for pander, defaults to false here}

\item{dont_transform}{classes which aren't to be transformed, defaults to knit_asis}
}
\description{
this is just a utility function that can be more safely assigned to render anything in knitr
using. It won't panderize already panderized objects.
opts_chunk$set(render = formr::pander_handler)
}
\examples{
data(ChickWeight)
pander_handler(xtabs(~ I(Time>10) + Diet, data = ChickWeight))
pander_handler(table(I(ChickWeight$Time>10)))

}

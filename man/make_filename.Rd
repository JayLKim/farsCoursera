% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_functions.R
\name{make_filename}
\alias{make_filename}
\title{Create a file name}
\usage{
make_filename(year)
}
\arguments{
\item{year}{A year used to  make a file name. This should be a numeric.}
}
\value{
This function returns an appropriate file name.
This is implemented for \code{\link{fars_read}}. You should put in a numeric;
otherwise, it leads to an error.
}
\description{
This function creates an appropriate file name for a given year.
}
\examples{
\dontrun{make_filename(2013)} #returns "accident_2013.csv.bz2"

}


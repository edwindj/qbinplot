% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qbin.R
\name{qbin}
\alias{qbin}
\title{Bin a data.frame into quantile bins}
\usage{
qbin(data, x = NULL, n = 100, min_bin_size = NULL, overlap = NULL, ...)
}
\arguments{
\item{data}{a \code{data.frame} to be binned}

\item{x}{\code{character} variable name used for the quantile binning}

\item{n}{\code{integer} number of quantile bins.}

\item{min_bin_size}{\code{integer} minimum number of rows/data points that should be
in a quantile bin. If NULL it is initially \code{sqrt(nrow(data))}}

\item{overlap}{\code{logical} if \code{TRUE} the quantile bins will overlap. Default value will be
\code{FALSE}.}

\item{...}{reserved for future use}
}
\value{
a \code{qbin} object with:
\itemize{
\item $x the variable name used for binning
\item $bin a vector of bin numbers
\item $n the number of bins
\item $num_cols a vector of numeric column names
\item $cat_cols a vector of categorical column names
\item $data a list of data.tables with the collected information
}
}
\description{
Bins a data.frame into quantile bins for variable \code{x} in \code{data}.
}
\details{
Each numeric variable in the data.frame is binned into \code{n} quantile bins, for
which the \code{\link[=fivenum]{fivenum()}} and \code{\link[=mean]{mean()}} is calculated.

When \code{n/nrow(data)} is less than \code{min_bin_size}, \code{qbin} gives a warning and
\code{n} is adjusted to \code{nrow(data)/min_bin_size}.
Each categorical variable is binned into \code{n} quantile bins, for which the
level frequency is calculated.
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pin_reactive.R
\name{pin_reactive}
\alias{pin_reactive}
\title{Reactive Pin (legacy API)}
\usage{
pin_reactive(name, board, interval = 5000, session = NULL, extract = NULL)
}
\arguments{
\item{name}{The name of the pin.}

\item{board}{The board where this pin will be retrieved from.}

\item{interval}{Approximate number of milliseconds to wait to retrieve
updated pin. This can be a numeric value, or a function that returns
a numeric value.}

\item{session}{The user session to associate this file reader with, or NULL if
none. If non-null, the reader will automatically stop when the session ends.}

\item{extract}{Should compressed files be extracted? Each board defines the
deefault behavior.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
}
\details{
Creates a pin that reacts to changes in the given board by
polling \code{pin_get()}, useful when used from the \code{shiny}
package.
}
\keyword{internal}

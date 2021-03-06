% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_list_channels}
\alias{iotanalytics_list_channels}
\title{Retrieves a list of channels}
\usage{
iotanalytics_list_channels(nextToken, maxResults)
}
\arguments{
\item{nextToken}{The token for the next set of results.}

\item{maxResults}{The maximum number of results to return in this request.

The default value is 100.}
}
\description{
Retrieves a list of channels.
}
\section{Request syntax}{
\preformatted{svc$list_channels(
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xray_operations.R
\name{xray_get_service_graph}
\alias{xray_get_service_graph}
\title{Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result}
\usage{
xray_get_service_graph(StartTime, EndTime, GroupName, GroupARN,
  NextToken)
}
\arguments{
\item{StartTime}{[required] The start of the time frame for which to generate a graph.}

\item{EndTime}{[required] The end of the timeframe for which to generate a graph.}

\item{GroupName}{The name of a group to generate a graph based on.}

\item{GroupARN}{The ARN of a group to generate a graph based on.}

\item{NextToken}{Pagination token.}
}
\description{
Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result. Root
services process incoming requests and make calls to downstream
services. Root services are applications that use the \href{https://docs.aws.amazon.com/xray/index.html}{AWS X-Ray SDK}. Downstream services
can be other applications, AWS resources, HTTP web APIs, or SQL
databases.
}
\section{Request syntax}{
\preformatted{svc$get_service_graph(
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  GroupName = "string",
  GroupARN = "string",
  NextToken = "string"
)
}
}

\keyword{internal}

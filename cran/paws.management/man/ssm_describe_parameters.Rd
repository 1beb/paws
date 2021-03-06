% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_parameters}
\alias{ssm_describe_parameters}
\title{Get information about a parameter}
\usage{
ssm_describe_parameters(Filters, ParameterFilters, MaxResults,
  NextToken)
}
\arguments{
\item{Filters}{This data type is deprecated. Instead, use \code{ParameterFilters}.}

\item{ParameterFilters}{Filters to limit the request results.}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}
}
\description{
Get information about a parameter.
}
\details{
Request results are returned on a best-effort basis. If you specify
\code{MaxResults} in the request, the response includes information up to the
limit specified. The number of items returned, however, can be between
zero and the value of \code{MaxResults}. If the service reaches an internal
limit while processing the results, it stops the operation and returns
the matching values up to that point and a \code{NextToken}. You can specify
the \code{NextToken} in a subsequent call to get the next set of results.
}
\section{Request syntax}{
\preformatted{svc$describe_parameters(
  Filters = list(
    list(
      Key = "Name"|"Type"|"KeyId",
      Values = list(
        "string"
      )
    )
  ),
  ParameterFilters = list(
    list(
      Key = "string",
      Option = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}

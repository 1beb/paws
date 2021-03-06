% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_relational_database_log_events}
\alias{lightsail_get_relational_database_log_events}
\title{Returns a list of log events for a database in Amazon Lightsail}
\usage{
lightsail_get_relational_database_log_events(relationalDatabaseName,
  logStreamName, startTime, endTime, startFromHead, pageToken)
}
\arguments{
\item{relationalDatabaseName}{[required] The name of your database for which to get log events.}

\item{logStreamName}{[required] The name of the log stream.

Use the \verb{get relational database log streams} operation to get a list of
available log streams.}

\item{startTime}{The start of the time interval from which to get log events.

Constraints:
\itemize{
\item Specified in Coordinated Universal Time (UTC).
\item Specified in the Unix time format.

For example, if you wish to use a start time of October 1, 2018, at
8 PM UTC, then you input \code{1538424000} as the start time.
}}

\item{endTime}{The end of the time interval from which to get log events.

Constraints:
\itemize{
\item Specified in Coordinated Universal Time (UTC).
\item Specified in the Unix time format.

For example, if you wish to use an end time of October 1, 2018, at 8
PM UTC, then you input \code{1538424000} as the end time.
}}

\item{startFromHead}{Parameter to specify if the log should start from head or tail. If
\code{true} is specified, the log event starts from the head of the log. If
\code{false} is specified, the log event starts from the tail of the log.

For PostgreSQL, the default value of \code{false} is the only option
available.}

\item{pageToken}{A token used for advancing to a specific page of results for your
\verb{get relational database log events} request.}
}
\description{
Returns a list of log events for a database in Amazon Lightsail.
}
\section{Request syntax}{
\preformatted{svc$get_relational_database_log_events(
  relationalDatabaseName = "string",
  logStreamName = "string",
  startTime = as.POSIXct(
    "2015-01-01"
  ),
  endTime = as.POSIXct(
    "2015-01-01"
  ),
  startFromHead = TRUE|FALSE,
  pageToken = "string"
)
}
}

\keyword{internal}

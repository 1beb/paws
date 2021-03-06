% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backup_operations.R
\name{backup_list_restore_jobs}
\alias{backup_list_restore_jobs}
\title{Returns a list of jobs that AWS Backup initiated to restore a saved
resource, including metadata about the recovery process}
\usage{
backup_list_restore_jobs(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{The next item following a partial list of returned items. For example,
if a request is made to return \code{maxResults} number of items, \code{NextToken}
allows you to return more items in your list starting at the location
pointed to by the next token.}

\item{MaxResults}{The maximum number of items to be returned.}
}
\description{
Returns a list of jobs that AWS Backup initiated to restore a saved
resource, including metadata about the recovery process.
}
\section{Request syntax}{
\preformatted{svc$list_restore_jobs(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amplify_operations.R
\name{amplify_list_jobs}
\alias{amplify_list_jobs}
\title{List Jobs for a branch, part of an Amplify App}
\usage{
amplify_list_jobs(appId, branchName, nextToken, maxResults)
}
\arguments{
\item{appId}{[required] Unique Id for an Amplify App.}

\item{branchName}{[required] Name for a branch.}

\item{nextToken}{Pagination token. Set to null to start listing steps from start. If a
non-null pagination token is returned in a result, then pass its value
in here to list more steps.}

\item{maxResults}{Maximum number of records to list in a single response.}
}
\description{
List Jobs for a branch, part of an Amplify App.
}
\section{Request syntax}{
\preformatted{svc$list_jobs(
  appId = "string",
  branchName = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}

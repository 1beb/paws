% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_iam_policy_assignments}
\alias{quicksight_list_iam_policy_assignments}
\title{Lists IAM policy assignments in the current Amazon QuickSight account}
\usage{
quicksight_list_iam_policy_assignments(AwsAccountId, AssignmentStatus,
  Namespace, NextToken, MaxResults)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the AWS account that contains these IAM policy assignments.}

\item{AssignmentStatus}{The status of the assignments.}

\item{Namespace}{[required] The namespace for the assignments.}

\item{NextToken}{The token for the next set of results, or null if there are no more
results.}

\item{MaxResults}{The maximum number of results to be returned per request.}
}
\description{
Lists IAM policy assignments in the current Amazon QuickSight account.
}
\section{Request syntax}{
\preformatted{svc$list_iam_policy_assignments(
  AwsAccountId = "string",
  AssignmentStatus = "ENABLED"|"DRAFT"|"DISABLED",
  Namespace = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}

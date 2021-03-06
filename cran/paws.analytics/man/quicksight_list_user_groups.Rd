% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_user_groups}
\alias{quicksight_list_user_groups}
\title{Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
member of}
\usage{
quicksight_list_user_groups(UserName, AwsAccountId, Namespace,
  NextToken, MaxResults)
}
\arguments{
\item{UserName}{[required] The Amazon QuickSight user name that you want to list group memberships
for.}

\item{AwsAccountId}{[required] The AWS account ID that the user is in. Currently, you use the ID for
the AWS account that contains your Amazon QuickSight account.}

\item{Namespace}{[required] The namespace. Currently, you should set this to \code{default}.}

\item{NextToken}{A pagination token that can be used in a subsequent request.}

\item{MaxResults}{The maximum number of results to return from this request.}
}
\description{
Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
member of.
}
\section{Request syntax}{
\preformatted{svc$list_user_groups(
  UserName = "string",
  AwsAccountId = "string",
  Namespace = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}

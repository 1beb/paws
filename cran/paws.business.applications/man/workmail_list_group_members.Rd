% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workmail_operations.R
\name{workmail_list_group_members}
\alias{workmail_list_group_members}
\title{Returns an overview of the members of a group}
\usage{
workmail_list_group_members(OrganizationId, GroupId, NextToken,
  MaxResults)
}
\arguments{
\item{OrganizationId}{[required] The identifier for the organization under which the group exists.}

\item{GroupId}{[required] The identifier for the group to which the members (users or groups) are
associated.}

\item{NextToken}{The token to use to retrieve the next page of results. The first call
does not contain any tokens.}

\item{MaxResults}{The maximum number of results to return in a single call.}
}
\description{
Returns an overview of the members of a group. Users and groups can be
members of a group.
}
\section{Request syntax}{
\preformatted{svc$list_group_members(
  OrganizationId = "string",
  GroupId = "string",
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}

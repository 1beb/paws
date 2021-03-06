% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workdocs_operations.R
\name{workdocs_update_user}
\alias{workdocs_update_user}
\title{Updates the specified attributes of the specified user, and grants or
revokes administrative privileges to the Amazon WorkDocs site}
\usage{
workdocs_update_user(AuthenticationToken, UserId, GivenName, Surname,
  Type, StorageRule, TimeZoneId, Locale, GrantPoweruserPrivileges)
}
\arguments{
\item{AuthenticationToken}{Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.}

\item{UserId}{[required] The ID of the user.}

\item{GivenName}{The given name of the user.}

\item{Surname}{The surname of the user.}

\item{Type}{The type of the user.}

\item{StorageRule}{The amount of storage for the user.}

\item{TimeZoneId}{The time zone ID of the user.}

\item{Locale}{The locale of the user.}

\item{GrantPoweruserPrivileges}{Boolean value to determine whether the user is granted Poweruser
privileges.}
}
\description{
Updates the specified attributes of the specified user, and grants or
revokes administrative privileges to the Amazon WorkDocs site.
}
\section{Request syntax}{
\preformatted{svc$update_user(
  AuthenticationToken = "string",
  UserId = "string",
  GivenName = "string",
  Surname = "string",
  Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
  StorageRule = list(
    StorageAllocatedInBytes = 123,
    StorageType = "UNLIMITED"|"QUOTA"
  ),
  TimeZoneId = "string",
  Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
  GrantPoweruserPrivileges = "TRUE"|"FALSE"
)
}
}

\keyword{internal}

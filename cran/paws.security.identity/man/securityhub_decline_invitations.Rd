% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_decline_invitations}
\alias{securityhub_decline_invitations}
\title{Declines invitations that are sent to this AWS account (invitee) by the
AWS accounts (inviters) that are specified by the account IDs}
\usage{
securityhub_decline_invitations(AccountIds)
}
\arguments{
\item{AccountIds}{A list of account IDs specifying accounts whose invitations to Security
Hub you want to decline.}
}
\description{
Declines invitations that are sent to this AWS account (invitee) by the
AWS accounts (inviters) that are specified by the account IDs.
}
\section{Request syntax}{
\preformatted{svc$decline_invitations(
  AccountIds = list(
    "string"
  )
)
}
}

\keyword{internal}
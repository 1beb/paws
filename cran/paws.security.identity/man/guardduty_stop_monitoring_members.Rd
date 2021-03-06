% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_stop_monitoring_members}
\alias{guardduty_stop_monitoring_members}
\title{Stops GuardDuty monitoring for the specified member accounnts}
\usage{
guardduty_stop_monitoring_members(DetectorId, AccountIds)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty account that you want to
stop from monitor members\' findings.}

\item{AccountIds}{[required] A list of account IDs of the GuardDuty member accounts whose findings
you want the master account to stop monitoring.}
}
\description{
Stops GuardDuty monitoring for the specified member accounnts. Use the
\code{StartMonitoringMembers} to restart monitoring for those accounts.
}
\section{Request syntax}{
\preformatted{svc$stop_monitoring_members(
  DetectorId = "string",
  AccountIds = list(
    "string"
  )
)
}
}

\keyword{internal}

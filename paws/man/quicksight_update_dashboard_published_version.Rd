% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_update_dashboard_published_version}
\alias{quicksight_update_dashboard_published_version}
\title{Updates the published version of a dashboard}
\usage{
quicksight_update_dashboard_published_version(AwsAccountId, DashboardId,
  VersionNumber)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the AWS account that contains the dashboard that you\'re
updating.}

\item{DashboardId}{[required] The ID for the dashboard.}

\item{VersionNumber}{[required] The version number of the dashboard.}
}
\description{
Updates the published version of a dashboard.
}
\section{Request syntax}{
\preformatted{svc$update_dashboard_published_version(
  AwsAccountId = "string",
  DashboardId = "string",
  VersionNumber = 123
)
}
}

\keyword{internal}

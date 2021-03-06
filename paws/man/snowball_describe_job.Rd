% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snowball_operations.R
\name{snowball_describe_job}
\alias{snowball_describe_job}
\title{Returns information about a specific job including shipping information,
job status, and other important metadata}
\usage{
snowball_describe_job(JobId)
}
\arguments{
\item{JobId}{[required] The automatically generated ID for a job, for example
\verb{JID123e4567-e89b-12d3-a456-426655440000}.}
}
\description{
Returns information about a specific job including shipping information,
job status, and other important metadata.
}
\section{Request syntax}{
\preformatted{svc$describe_job(
  JobId = "string"
)
}
}

\examples{
# This operation describes a job you've created for AWS Snowball.
\donttest{svc$describe_job(
  JobId = "JID123e4567-e89b-12d3-a456-426655440000"
)}

}
\keyword{internal}

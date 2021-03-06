% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_get_offering_status}
\alias{devicefarm_get_offering_status}
\title{Gets the current status and future status of all offerings purchased by
an AWS account}
\usage{
devicefarm_get_offering_status(nextToken)
}
\arguments{
\item{nextToken}{An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.}
}
\description{
Gets the current status and future status of all offerings purchased by
an AWS account. The response indicates how many offerings are currently
available and the offerings that will be available in the next period.
The API returns a \code{NotEligible} error if the user is not permitted to
invoke the operation. If you must be able to invoke this operation,
contact \href{mailto:aws-devicefarm-support@amazon.com}{aws-devicefarm-support@amazon.com}.
}
\section{Request syntax}{
\preformatted{svc$get_offering_status(
  nextToken = "string"
)
}
}

\examples{
# The following example returns information about Device Farm offerings
# available to your account.
\donttest{svc$get_offering_status(
  nextToken = "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
)}

}
\keyword{internal}

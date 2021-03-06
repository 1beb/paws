% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_get_account_sending_enabled}
\alias{ses_get_account_sending_enabled}
\title{Returns the email sending status of the Amazon SES account for the
current region}
\usage{
ses_get_account_sending_enabled()
}
\description{
Returns the email sending status of the Amazon SES account for the
current region.
}
\details{
You can execute this operation no more than once per second.
}
\examples{
# The following example returns if sending status for an account is
# enabled. (true / false):
\donttest{svc$get_account_sending_enabled()}

}
\keyword{internal}

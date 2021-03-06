% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicequotas_operations.R
\name{servicequotas_get_aws_default_service_quota}
\alias{servicequotas_get_aws_default_service_quota}
\title{Retrieves the default service quotas values}
\usage{
servicequotas_get_aws_default_service_quota(ServiceCode, QuotaCode)
}
\arguments{
\item{ServiceCode}{[required] Specifies the service that you want to use.}

\item{QuotaCode}{[required] Identifies the service quota you want to select.}
}
\description{
Retrieves the default service quotas values. The Value returned for each
quota is the AWS default value, even if the quotas have been increased..
}
\section{Request syntax}{
\preformatted{svc$get_aws_default_service_quota(
  ServiceCode = "string",
  QuotaCode = "string"
)
}
}

\keyword{internal}

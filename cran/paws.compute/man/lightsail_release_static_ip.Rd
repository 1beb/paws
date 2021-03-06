% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_release_static_ip}
\alias{lightsail_release_static_ip}
\title{Deletes a specific static IP from your account}
\usage{
lightsail_release_static_ip(staticIpName)
}
\arguments{
\item{staticIpName}{[required] The name of the static IP to delete.}
}
\description{
Deletes a specific static IP from your account.
}
\section{Request syntax}{
\preformatted{svc$release_static_ip(
  staticIpName = "string"
)
}
}

\keyword{internal}

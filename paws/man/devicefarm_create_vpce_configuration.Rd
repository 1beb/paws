% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/devicefarm_operations.R
\name{devicefarm_create_vpce_configuration}
\alias{devicefarm_create_vpce_configuration}
\title{Creates a configuration record in Device Farm for your Amazon Virtual
Private Cloud (VPC) endpoint}
\usage{
devicefarm_create_vpce_configuration(vpceConfigurationName,
  vpceServiceName, serviceDnsName, vpceConfigurationDescription)
}
\arguments{
\item{vpceConfigurationName}{[required] The friendly name you give to your VPC endpoint configuration, to manage
your configurations more easily.}

\item{vpceServiceName}{[required] The name of the VPC endpoint service running in your AWS account that
you want Device Farm to test.}

\item{serviceDnsName}{[required] The DNS name of the service running in your VPC that you want Device
Farm to test.}

\item{vpceConfigurationDescription}{An optional description that provides details about your VPC endpoint
configuration.}
}
\description{
Creates a configuration record in Device Farm for your Amazon Virtual
Private Cloud (VPC) endpoint.
}
\section{Request syntax}{
\preformatted{svc$create_vpce_configuration(
  vpceConfigurationName = "string",
  vpceServiceName = "string",
  serviceDnsName = "string",
  vpceConfigurationDescription = "string"
)
}
}

\keyword{internal}

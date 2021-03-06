% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_attach_network_interface}
\alias{ec2_attach_network_interface}
\title{Attaches a network interface to an instance}
\usage{
ec2_attach_network_interface(DeviceIndex, DryRun, InstanceId,
  NetworkInterfaceId)
}
\arguments{
\item{DeviceIndex}{[required] The index of the device for the network interface attachment.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceId}{[required] The ID of the instance.}

\item{NetworkInterfaceId}{[required] The ID of the network interface.}
}
\description{
Attaches a network interface to an instance.
}
\section{Request syntax}{
\preformatted{svc$attach_network_interface(
  DeviceIndex = 123,
  DryRun = TRUE|FALSE,
  InstanceId = "string",
  NetworkInterfaceId = "string"
)
}
}

\examples{
# This example attaches the specified network interface to the specified
# instance.
\donttest{svc$attach_network_interface(
  DeviceIndex = 1L,
  InstanceId = "i-1234567890abcdef0",
  NetworkInterfaceId = "eni-e5aa89a3"
)}

}
\keyword{internal}

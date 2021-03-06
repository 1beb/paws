% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_reset_instance_attribute}
\alias{ec2_reset_instance_attribute}
\title{Resets an attribute of an instance to its default value}
\usage{
ec2_reset_instance_attribute(Attribute, DryRun, InstanceId)
}
\arguments{
\item{Attribute}{[required] The attribute to reset.

You can only reset the following attributes: \code{kernel} \\| \code{ramdisk} \\|
\code{sourceDestCheck}. To change an instance attribute, use
ModifyInstanceAttribute.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{InstanceId}{[required] The ID of the instance.}
}
\description{
Resets an attribute of an instance to its default value. To reset the
\code{kernel} or \code{ramdisk}, the instance must be in a stopped state. To reset
the \code{sourceDestCheck}, the instance can be either running or stopped.
}
\details{
The \code{sourceDestCheck} attribute controls whether source/destination
checking is enabled. The default value is \code{true}, which means checking
is enabled. This value must be \code{false} for a NAT instance to perform
NAT. For more information, see \href{https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html}{NAT Instances}
in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$reset_instance_attribute(
  Attribute = "instanceType"|"kernel"|"ramdisk"|"userData"|"disableApiTermination"|"instanceInitiatedShutdownBehavior"|"rootDeviceName"|"blockDeviceMapping"|"productCodes"|"sourceDestCheck"|"groupSet"|"ebsOptimized"|"sriovNetSupport"|"enaSupport",
  DryRun = TRUE|FALSE,
  InstanceId = "string"
)
}
}

\examples{
# This example resets the sourceDestCheck attribute for the specified
# instance.
\donttest{svc$reset_instance_attribute(
  Attribute = "sourceDestCheck",
  InstanceId = "i-1234567890abcdef0"
)}

}
\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_network_acl}
\alias{ec2_delete_network_acl}
\title{Deletes the specified network ACL}
\usage{
ec2_delete_network_acl(DryRun, NetworkAclId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkAclId}{[required] The ID of the network ACL.}
}
\description{
Deletes the specified network ACL. You can\'t delete the ACL if it\'s
associated with any subnets. You can\'t delete the default network ACL.
}
\section{Request syntax}{
\preformatted{svc$delete_network_acl(
  DryRun = TRUE|FALSE,
  NetworkAclId = "string"
)
}
}

\examples{
# This example deletes the specified network ACL.
\donttest{svc$delete_network_acl(
  NetworkAclId = "acl-5fb85d36"
)}

}
\keyword{internal}

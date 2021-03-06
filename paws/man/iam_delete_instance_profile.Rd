% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_delete_instance_profile}
\alias{iam_delete_instance_profile}
\title{Deletes the specified instance profile}
\usage{
iam_delete_instance_profile(InstanceProfileName)
}
\arguments{
\item{InstanceProfileName}{[required] The name of the instance profile to delete.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}
}
\description{
Deletes the specified instance profile. The instance profile must not
have an associated role.
}
\details{
Make sure that you do not have any Amazon EC2 instances running with the
instance profile you are about to delete. Deleting a role or instance
profile that is associated with a running instance will break any
applications running on the instance.

For more information about instance profiles, go to \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html}{About Instance Profiles}.
}
\section{Request syntax}{
\preformatted{svc$delete_instance_profile(
  InstanceProfileName = "string"
)
}
}

\examples{
# The following command deletes the instance profile named
# ExampleInstanceProfile
\donttest{svc$delete_instance_profile(
  InstanceProfileName = "ExampleInstanceProfile"
)}

}
\keyword{internal}

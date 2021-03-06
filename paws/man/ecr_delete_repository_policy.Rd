% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_delete_repository_policy}
\alias{ecr_delete_repository_policy}
\title{Deletes the repository policy from a specified repository}
\usage{
ecr_delete_repository_policy(registryId, repositoryName)
}
\arguments{
\item{registryId}{The AWS account ID associated with the registry that contains the
repository policy to delete. If you do not specify a registry, the
default registry is assumed.}

\item{repositoryName}{[required] The name of the repository that is associated with the repository policy
to delete.}
}
\description{
Deletes the repository policy from a specified repository.
}
\section{Request syntax}{
\preformatted{svc$delete_repository_policy(
  registryId = "string",
  repositoryName = "string"
)
}
}

\examples{
# This example deletes the policy associated with the repository named
# ubuntu in the current account.
\donttest{svc$delete_repository_policy(
  repositoryName = "ubuntu"
)}

}
\keyword{internal}

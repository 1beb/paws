% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_get_deployable_patch_snapshot_for_instance}
\alias{ssm_get_deployable_patch_snapshot_for_instance}
\title{Retrieves the current snapshot for the patch baseline the instance uses}
\usage{
ssm_get_deployable_patch_snapshot_for_instance(InstanceId, SnapshotId)
}
\arguments{
\item{InstanceId}{[required] The ID of the instance for which the appropriate patch snapshot should
be retrieved.}

\item{SnapshotId}{[required] The user-defined snapshot ID.}
}
\description{
Retrieves the current snapshot for the patch baseline the instance uses.
This API is primarily used by the AWS-RunPatchBaseline Systems Manager
document.
}
\section{Request syntax}{
\preformatted{svc$get_deployable_patch_snapshot_for_instance(
  InstanceId = "string",
  SnapshotId = "string"
)
}
}

\keyword{internal}

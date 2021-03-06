% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_create_or_update_tags}
\alias{autoscaling_create_or_update_tags}
\title{Creates or updates tags for the specified Auto Scaling group}
\usage{
autoscaling_create_or_update_tags(Tags)
}
\arguments{
\item{Tags}{[required] One or more tags.}
}
\description{
Creates or updates tags for the specified Auto Scaling group.
}
\details{
When you specify a tag with a key that already exists, the operation
overwrites the previous tag definition, and you do not get an error
message.

For more information, see \href{https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html}{Tagging Auto Scaling Groups and Instances}
in the \emph{Amazon EC2 Auto Scaling User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_or_update_tags(
  Tags = list(
    list(
      ResourceId = "string",
      ResourceType = "string",
      Key = "string",
      Value = "string",
      PropagateAtLaunch = TRUE|FALSE
    )
  )
)
}
}

\examples{
# This example adds two tags to the specified Auto Scaling group.
\donttest{svc$create_or_update_tags(
  Tags = list(
    list(
      Key = "Role",
      PropagateAtLaunch = TRUE,
      ResourceId = "my-auto-scaling-group",
      ResourceType = "auto-scaling-group",
      Value = "WebServer"
    ),
    list(
      Key = "Dept",
      PropagateAtLaunch = TRUE,
      ResourceId = "my-auto-scaling-group",
      ResourceType = "auto-scaling-group",
      Value = "Research"
    )
  )
)}

}
\keyword{internal}

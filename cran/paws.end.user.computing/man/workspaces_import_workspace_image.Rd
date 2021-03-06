% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces_operations.R
\name{workspaces_import_workspace_image}
\alias{workspaces_import_workspace_image}
\title{Imports the specified Windows 7 or Windows 10 Bring Your Own License
(BYOL) image into Amazon WorkSpaces}
\usage{
workspaces_import_workspace_image(Ec2ImageId, IngestionProcess,
  ImageName, ImageDescription, Tags)
}
\arguments{
\item{Ec2ImageId}{[required] The identifier of the EC2 image.}

\item{IngestionProcess}{[required] The ingestion process to be used when importing the image.}

\item{ImageName}{[required] The name of the WorkSpace image.}

\item{ImageDescription}{[required] The description of the WorkSpace image.}

\item{Tags}{The tags. Each WorkSpaces resource can have a maximum of 50 tags.}
}
\description{
Imports the specified Windows 7 or Windows 10 Bring Your Own License
(BYOL) image into Amazon WorkSpaces. The image must be an already
licensed EC2 image that is in your AWS account, and you must own the
image.
}
\section{Request syntax}{
\preformatted{svc$import_workspace_image(
  Ec2ImageId = "string",
  IngestionProcess = "BYOL_REGULAR"|"BYOL_GRAPHICS"|"BYOL_GRAPHICSPRO",
  ImageName = "string",
  ImageDescription = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}

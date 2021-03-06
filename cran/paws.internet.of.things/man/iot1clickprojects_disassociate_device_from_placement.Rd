% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot1clickprojects_operations.R
\name{iot1clickprojects_disassociate_device_from_placement}
\alias{iot1clickprojects_disassociate_device_from_placement}
\title{Removes a physical device from a placement}
\usage{
iot1clickprojects_disassociate_device_from_placement(projectName,
  placementName, deviceTemplateName)
}
\arguments{
\item{projectName}{[required] The name of the project that contains the placement.}

\item{placementName}{[required] The name of the placement that the device should be removed from.}

\item{deviceTemplateName}{[required] The device ID that should be removed from the placement.}
}
\description{
Removes a physical device from a placement.
}
\section{Request syntax}{
\preformatted{svc$disassociate_device_from_placement(
  projectName = "string",
  placementName = "string",
  deviceTemplateName = "string"
)
}
}

\keyword{internal}

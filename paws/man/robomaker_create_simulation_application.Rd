% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robomaker_operations.R
\name{robomaker_create_simulation_application}
\alias{robomaker_create_simulation_application}
\title{Creates a simulation application}
\usage{
robomaker_create_simulation_application(name, sources,
  simulationSoftwareSuite, robotSoftwareSuite, renderingEngine, tags)
}
\arguments{
\item{name}{[required] The name of the simulation application.}

\item{sources}{[required] The sources of the simulation application.}

\item{simulationSoftwareSuite}{[required] The simulation software suite used by the simulation application.}

\item{robotSoftwareSuite}{[required] The robot software suite of the simulation application.}

\item{renderingEngine}{The rendering engine for the simulation application.}

\item{tags}{A map that contains tag keys and tag values that are attached to the
simulation application.}
}
\description{
Creates a simulation application.
}
\section{Request syntax}{
\preformatted{svc$create_simulation_application(
  name = "string",
  sources = list(
    list(
      s3Bucket = "string",
      s3Key = "string",
      architecture = "X86_64"|"ARM64"|"ARMHF"
    )
  ),
  simulationSoftwareSuite = list(
    name = "Gazebo"|"RosbagPlay",
    version = "string"
  ),
  robotSoftwareSuite = list(
    name = "ROS"|"ROS2",
    version = "Kinetic"|"Melodic"|"Dashing"
  ),
  renderingEngine = list(
    name = "OGRE",
    version = "string"
  ),
  tags = list(
    "string"
  )
)
}
}

\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_runtime_configuration}
\alias{gamelift_describe_runtime_configuration}
\title{Retrieves the current runtime configuration for the specified fleet}
\usage{
gamelift_describe_runtime_configuration(FleetId)
}
\arguments{
\item{FleetId}{[required] A unique identifier for a fleet to get the runtime configuration for.
You can use either the fleet ID or ARN value.}
}
\description{
Retrieves the current runtime configuration for the specified fleet. The
runtime configuration tells Amazon GameLift how to launch server
processes on instances in the fleet.
}
\details{
\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Working with Fleets}.

\strong{Related operations}
\itemize{
\item CreateFleet
\item ListFleets
\item DeleteFleet
\item Describe fleets:
\itemize{
\item DescribeFleetAttributes
\item DescribeFleetCapacity
\item DescribeFleetPortSettings
\item DescribeFleetUtilization
\item DescribeRuntimeConfiguration
\item DescribeEC2InstanceLimits
\item DescribeFleetEvents
}
\item UpdateFleetAttributes
\item Manage fleet actions:
\itemize{
\item StartFleetActions
\item StopFleetActions
}
}
}
\section{Request syntax}{
\preformatted{svc$describe_runtime_configuration(
  FleetId = "string"
)
}
}

\keyword{internal}

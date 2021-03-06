% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoscaling_operations.R
\name{autoscaling_describe_scheduled_actions}
\alias{autoscaling_describe_scheduled_actions}
\title{Describes the actions scheduled for your Auto Scaling group that haven't
run or that have not reached their end time}
\usage{
autoscaling_describe_scheduled_actions(AutoScalingGroupName,
  ScheduledActionNames, StartTime, EndTime, NextToken, MaxRecords)
}
\arguments{
\item{AutoScalingGroupName}{The name of the Auto Scaling group.}

\item{ScheduledActionNames}{The names of one or more scheduled actions. You can specify up to 50
actions. If you omit this parameter, all scheduled actions are
described. If you specify an unknown scheduled action, it is ignored
with no error.}

\item{StartTime}{The earliest scheduled start time to return. If scheduled action names
are provided, this parameter is ignored.}

\item{EndTime}{The latest scheduled start time to return. If scheduled action names are
provided, this parameter is ignored.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}

\item{MaxRecords}{The maximum number of items to return with this call. The default value
is \code{50} and the maximum value is \code{100}.}
}
\description{
Describes the actions scheduled for your Auto Scaling group that
haven\'t run or that have not reached their end time. To describe the
actions that have already run, use DescribeScalingActivities.
}
\section{Request syntax}{
\preformatted{svc$describe_scheduled_actions(
  AutoScalingGroupName = "string",
  ScheduledActionNames = list(
    "string"
  ),
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  NextToken = "string",
  MaxRecords = 123
)
}
}

\examples{
# This example describes the scheduled actions for the specified Auto
# Scaling group.
\donttest{svc$describe_scheduled_actions(
  AutoScalingGroupName = "my-auto-scaling-group"
)}

}
\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_flow_logs}
\alias{ec2_create_flow_logs}
\title{Creates one or more flow logs to capture information about IP traffic
for a specific network interface, subnet, or VPC}
\usage{
ec2_create_flow_logs(DryRun, ClientToken, DeliverLogsPermissionArn,
  LogGroupName, ResourceIds, ResourceType, TrafficType,
  LogDestinationType, LogDestination, LogFormat)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html}{How to Ensure Idempotency}.}

\item{DeliverLogsPermissionArn}{The ARN for the IAM role that permits Amazon EC2 to publish flow logs to
a CloudWatch Logs log group in your account.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.}

\item{LogGroupName}{The name of a new or existing CloudWatch Logs log group where Amazon EC2
publishes your flow logs.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.}

\item{ResourceIds}{[required] The ID of the subnet, network interface, or VPC for which you want to
create a flow log.

Constraints: Maximum of 1000 resources}

\item{ResourceType}{[required] The type of resource for which to create the flow log. For example, if
you specified a VPC ID for the \code{ResourceId} property, specify \code{VPC} for
this property.}

\item{TrafficType}{[required] The type of traffic to log. You can log traffic that the resource
accepts or rejects, or all traffic.}

\item{LogDestinationType}{Specifies the type of destination to which the flow log data is to be
published. Flow log data can be published to CloudWatch Logs or Amazon
S3. To publish flow log data to CloudWatch Logs, specify
\code{cloud-watch-logs}. To publish flow log data to Amazon S3, specify \code{s3}.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.

Default: \code{cloud-watch-logs}}

\item{LogDestination}{Specifies the destination to which the flow log data is to be published.
Flow log data can be published to a CloudWatch Logs log group or an
Amazon S3 bucket. The value specified for this parameter depends on the
value specified for \code{LogDestinationType}.

If \code{LogDestinationType} is not specified or \code{cloud-watch-logs}, specify
the Amazon Resource Name (ARN) of the CloudWatch Logs log group. For
example, to publish to a log group called \code{my-logs}, specify
\code{arn:aws:logs:us-east-1:123456789012:log-group:my-logs}. Alternatively,
use \code{LogGroupName} instead.

If LogDestinationType is \code{s3}, specify the ARN of the Amazon S3 bucket.
You can also specify a subfolder in the bucket. To specify a subfolder
in the bucket, use the following ARN format:
\verb{bucket_ARN/subfolder_name/}. For example, to specify a subfolder named
\code{my-logs} in a bucket named \code{my-bucket}, use the following ARN:
\verb{arn:aws:s3:::my-bucket/my-logs/}. You cannot use \code{AWSLogs} as a
subfolder name. This is a reserved term.}

\item{LogFormat}{The fields to include in the flow log record, in the order in which they
should appear. For a list of available fields, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records}{Flow Log Records}.
If you omit this parameter, the flow log is created using the default
format. If you specify this parameter, you must specify at least one
field.

Specify the fields using the \verb{$\\\{field-id\\\}} format, separated by spaces.
For the AWS CLI, use single quotation marks (\' \') to surround the
parameter value.

Only applicable to flow logs that are published to an Amazon S3 bucket.}
}
\description{
Creates one or more flow logs to capture information about IP traffic
for a specific network interface, subnet, or VPC.
}
\details{
Flow log data for a monitored network interface is recorded as flow log
records, which are log events consisting of fields that describe the
traffic flow. For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records}{Flow Log Records}
in the \emph{Amazon Virtual Private Cloud User Guide}.

When publishing to CloudWatch Logs, flow log records are published to a
log group, and each network interface has a unique log stream in the log
group. When publishing to Amazon S3, flow log records for all of the
monitored network interfaces are published to a single log file object
that is stored in the specified bucket.

For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html}{VPC Flow Logs}
in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_flow_logs(
  DryRun = TRUE|FALSE,
  ClientToken = "string",
  DeliverLogsPermissionArn = "string",
  LogGroupName = "string",
  ResourceIds = list(
    "string"
  ),
  ResourceType = "VPC"|"Subnet"|"NetworkInterface",
  TrafficType = "ACCEPT"|"REJECT"|"ALL",
  LogDestinationType = "cloud-watch-logs"|"s3",
  LogDestination = "string",
  LogFormat = "string"
)
}
}

\keyword{internal}

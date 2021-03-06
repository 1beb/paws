% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_modify_event_subscription}
\alias{rds_modify_event_subscription}
\title{Modifies an existing RDS event notification subscription}
\usage{
rds_modify_event_subscription(SubscriptionName, SnsTopicArn, SourceType,
  EventCategories, Enabled)
}
\arguments{
\item{SubscriptionName}{[required] The name of the RDS event notification subscription.}

\item{SnsTopicArn}{The Amazon Resource Name (ARN) of the SNS topic created for event
notification. The ARN is created by Amazon SNS when you create a topic
and subscribe to it.}

\item{SourceType}{The type of source that is generating the events. For example, if you
want to be notified of events generated by a DB instance, you would set
this parameter to db-instance. If this value isn\'t specified, all
events are returned.

Valid values: db-instance \\| db-parameter-group \\| db-security-group \\|
db-snapshot}

\item{EventCategories}{A list of event categories for a SourceType that you want to subscribe
to. You can see a list of the categories for a given SourceType in the
\href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html}{Events}
topic in the \emph{Amazon RDS User Guide} or by using the
\strong{DescribeEventCategories} action.}

\item{Enabled}{A value that indicates whether to activate the subscription.}
}
\description{
Modifies an existing RDS event notification subscription. Note that you
can\'t modify the source identifiers using this call; to change source
identifiers for a subscription, use the
\code{AddSourceIdentifierToSubscription} and
\code{RemoveSourceIdentifierFromSubscription} calls.
}
\details{
You can see a list of the event categories for a given SourceType in the
\href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html}{Events}
topic in the \emph{Amazon RDS User Guide} or by using the
\strong{DescribeEventCategories} action.
}
\section{Request syntax}{
\preformatted{svc$modify_event_subscription(
  SubscriptionName = "string",
  SnsTopicArn = "string",
  SourceType = "string",
  EventCategories = list(
    "string"
  ),
  Enabled = TRUE|FALSE
)
}
}

\keyword{internal}

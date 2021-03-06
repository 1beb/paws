% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_update_auth_event_feedback}
\alias{cognitoidentityprovider_admin_update_auth_event_feedback}
\title{Provides feedback for an authentication event as to whether it was from
a valid user}
\usage{
cognitoidentityprovider_admin_update_auth_event_feedback(UserPoolId,
  Username, EventId, FeedbackValue)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID.}

\item{Username}{[required] The user pool username.}

\item{EventId}{[required] The authentication event ID.}

\item{FeedbackValue}{[required] The authentication event feedback value.}
}
\description{
Provides feedback for an authentication event as to whether it was from
a valid user. This feedback is used for improving the risk evaluation
decision for the user pool as part of Amazon Cognito advanced security.
}
\section{Request syntax}{
\preformatted{svc$admin_update_auth_event_feedback(
  UserPoolId = "string",
  Username = "string",
  EventId = "string",
  FeedbackValue = "Valid"|"Invalid"
)
}
}

\keyword{internal}

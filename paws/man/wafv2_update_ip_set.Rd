% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_update_ip_set}
\alias{wafv2_update_ip_set}
\title{This is the latest version of AWS WAF, named AWS WAFV2, released in
November, 2019}
\usage{
wafv2_update_ip_set(Name, Scope, Id, Description, Addresses, LockToken)
}
\arguments{
\item{Name}{[required] A friendly name of the IP set. You cannot change the name of an \code{IPSet}
after you create it.}

\item{Scope}{[required] Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB) or an API Gateway stage.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:
\itemize{
\item CLI - Specify the region when you use the CloudFront scope:
\code{--scope=CLOUDFRONT --region=us-east-1}.
\item API and SDKs - For all calls, use the Region endpoint us-east-1.
}}

\item{Id}{[required] A unique identifier for the set. This ID is returned in the responses to
create and list commands. You provide it to operations like update and
delete.}

\item{Description}{A friendly description of the IP set. You cannot change the description
of an IP set after you create it.}

\item{Addresses}{[required] Contains an array of strings that specify one or more IP addresses or
blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
notation. AWS WAF supports all address ranges for IP versions IPv4 and
IPv6.

Examples:
\itemize{
\item To configure AWS WAF to allow, block, or count requests that
originated from the IP address 192.0.2.44, specify \verb{192.0.2.44/32}.
\item To configure AWS WAF to allow, block, or count requests that
originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
\verb{192.0.2.0/24}.
\item To configure AWS WAF to allow, block, or count requests that
originated from the IP address
1111:0000:0000:0000:0000:0000:0000:0111, specify
\code{1111:0000:0000:0000:0000:0000:0000:0111/128}.
\item To configure AWS WAF to allow, block, or count requests that
originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000
to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
\code{1111:0000:0000:0000:0000:0000:0000:0000/64}.
}

For more information about CIDR notation, see the Wikipedia entry
\href{https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing}{Classless Inter-Domain Routing}.}

\item{LockToken}{[required] A token used for optimistic locking. AWS WAF returns a token to your get
and list requests, to mark the state of the entity at the time of the
request. To make changes to the entity associated with the token, you
provide the token to operations like update and delete. AWS WAF uses the
token to ensure that no changes have been made to the entity since you
last retrieved it. If a change has been made, the update fails with a
\code{WAFOptimisticLockException}. If this happens, perform another get, and
use the new token returned by that operation.}
}
\description{
This is the latest version of \strong{AWS WAF}, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the \href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
}
\details{
Updates the specified IPSet.
}
\section{Request syntax}{
\preformatted{svc$update_ip_set(
  Name = "string",
  Scope = "CLOUDFRONT"|"REGIONAL",
  Id = "string",
  Description = "string",
  Addresses = list(
    "string"
  ),
  LockToken = "string"
)
}
}

\keyword{internal}

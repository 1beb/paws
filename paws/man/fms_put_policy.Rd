% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fms_operations.R
\name{fms_put_policy}
\alias{fms_put_policy}
\title{Creates an AWS Firewall Manager policy}
\usage{
fms_put_policy(Policy, TagList)
}
\arguments{
\item{Policy}{[required] The details of the AWS Firewall Manager policy to be created.}

\item{TagList}{The tags to add to the AWS resource.}
}
\description{
Creates an AWS Firewall Manager policy.
}
\details{
Firewall Manager provides the following types of policies:
\itemize{
\item A Shield Advanced policy, which applies Shield Advanced protection
to specified accounts and resources
\item An AWS WAF policy, which contains a rule group and defines which
resources are to be protected by that rule group
\item A security group policy, which manages VPC security groups across
your AWS organization.
}

Each policy is specific to one of the three types. If you want to
enforce more than one policy type across accounts, you can create
multiple policies. You can create multiple policies for each type.

You must be subscribed to Shield Advanced to create a Shield Advanced
policy. For more information about subscribing to Shield Advanced, see
\href{https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html}{CreateSubscription}.
}
\section{Request syntax}{
\preformatted{svc$put_policy(
  Policy = list(
    PolicyId = "string",
    PolicyName = "string",
    PolicyUpdateToken = "string",
    SecurityServicePolicyData = list(
      Type = "WAF"|"SHIELD_ADVANCED"|"SECURITY_GROUPS_COMMON"|"SECURITY_GROUPS_CONTENT_AUDIT"|"SECURITY_GROUPS_USAGE_AUDIT",
      ManagedServiceData = "string"
    ),
    ResourceType = "string",
    ResourceTypeList = list(
      "string"
    ),
    ResourceTags = list(
      list(
        Key = "string",
        Value = "string"
      )
    ),
    ExcludeResourceTags = TRUE|FALSE,
    RemediationEnabled = TRUE|FALSE,
    IncludeMap = list(
      list(
        "string"
      )
    ),
    ExcludeMap = list(
      list(
        "string"
      )
    )
  ),
  TagList = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}

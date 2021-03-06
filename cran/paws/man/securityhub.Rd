% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{securityhub}
\alias{securityhub}
\title{AWS SecurityHub}
\usage{
securityhub(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.}
}
\description{
Security Hub provides you with a comprehensive view of the security
state of your AWS environment and resources. It also provides you with
the compliance status of your environment based on CIS AWS Foundations
compliance checks. Security Hub collects security data from AWS
accounts, services, and integrated third-party products and helps you
analyze security trends in your environment to identify the highest
priority security issues. For more information about Security Hub, see
the \emph{\href{https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html}{AWS Security Hub User Guide}}
.

When you use operations in the Security Hub API, the requests are
executed only in the AWS Region that is currently active or in the
specific AWS Region that you specify in your request. Any configuration
or settings change that results from the operation is applied only to
that Region. To make the same change in other Regions, execute the same
command for each Region to apply the change to. For example, if your
Region is set to \code{us-west-2}, when you use \code{CreateMembers} to add a
member account to Security Hub, the association of the member account
with the master account is created only in the us-west-2 Region.
Security Hub must be enabled for the member account in the same Region
that the invite was sent from.

The following throttling limits apply to using Security Hub API
operations:
\itemize{
\item \code{GetFindings} - RateLimit of 3 requests per second, and a BurstLimit
of 6 requests per second.
\item \code{UpdateFindings} - RateLimit of 1 request per second, and a
BurstLimit of 5 requests per second.
\item All other operations - RateLimit of 10 request per second, and a
BurstLimit of 30 requests per second.
}
}
\section{Service syntax}{
\preformatted{svc <- securityhub(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string"
    ),
    endpoint = "string",
    region = "string"
  )
)
}
}

\section{Operations}{

\tabular{ll}{
\link[=securityhub_accept_invitation]{accept_invitation} \tab Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from \cr
\link[=securityhub_batch_disable_standards]{batch_disable_standards} \tab Disables the standards specified by the provided StandardsSubscriptionArns \cr
\link[=securityhub_batch_enable_standards]{batch_enable_standards} \tab Enables the standards specified by the provided standardsArn \cr
\link[=securityhub_batch_import_findings]{batch_import_findings} \tab Imports security findings generated from an integrated third-party product into Security Hub \cr
\link[=securityhub_create_action_target]{create_action_target} \tab Creates a custom action target in Security Hub \cr
\link[=securityhub_create_insight]{create_insight} \tab Creates a custom insight in Security Hub \cr
\link[=securityhub_create_members]{create_members} \tab Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account \cr
\link[=securityhub_decline_invitations]{decline_invitations} \tab Declines invitations to become a member account \cr
\link[=securityhub_delete_action_target]{delete_action_target} \tab Deletes a custom action target from Security Hub \cr
\link[=securityhub_delete_insight]{delete_insight} \tab Deletes the insight specified by the InsightArn \cr
\link[=securityhub_delete_invitations]{delete_invitations} \tab Deletes invitations received by the AWS account to become a member account \cr
\link[=securityhub_delete_members]{delete_members} \tab Deletes the specified member accounts from Security Hub \cr
\link[=securityhub_describe_action_targets]{describe_action_targets} \tab Returns a list of the custom action targets in Security Hub in your account \cr
\link[=securityhub_describe_hub]{describe_hub} \tab Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub \cr
\link[=securityhub_describe_products]{describe_products} \tab Returns information about the products available that you can subscribe to and integrate with Security Hub to consolidate findings \cr
\link[=securityhub_disable_import_findings_for_product]{disable_import_findings_for_product} \tab Disables the integration of the specified product with Security Hub \cr
\link[=securityhub_disable_security_hub]{disable_security_hub} \tab Disables Security Hub in your account only in the current Region \cr
\link[=securityhub_disassociate_from_master_account]{disassociate_from_master_account} \tab Disassociates the current Security Hub member account from the associated master account \cr
\link[=securityhub_disassociate_members]{disassociate_members} \tab Disassociates the specified member accounts from the associated master account \cr
\link[=securityhub_enable_import_findings_for_product]{enable_import_findings_for_product} \tab Enables the integration of a partner product with Security Hub \cr
\link[=securityhub_enable_security_hub]{enable_security_hub} \tab Enables Security Hub for your account in the current Region or the Region you specify in the request \cr
\link[=securityhub_get_enabled_standards]{get_enabled_standards} \tab Returns a list of the standards that are currently enabled \cr
\link[=securityhub_get_findings]{get_findings} \tab Returns a list of findings that match the specified criteria \cr
\link[=securityhub_get_insight_results]{get_insight_results} \tab Lists the results of the Security Hub insight that the insight ARN specifies \cr
\link[=securityhub_get_insights]{get_insights} \tab Lists and describes insights that insight ARNs specify \cr
\link[=securityhub_get_invitations_count]{get_invitations_count} \tab Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation\cr
\link[=securityhub_get_master_account]{get_master_account} \tab Provides the details for the Security Hub master account to the current member account \cr
\link[=securityhub_get_members]{get_members} \tab Returns the details on the Security Hub member accounts that the account IDs specify \cr
\link[=securityhub_invite_members]{invite_members} \tab Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from \cr
\link[=securityhub_list_enabled_products_for_import]{list_enabled_products_for_import} \tab Lists all findings-generating solutions (products) whose findings you have subscribed to receive in Security Hub \cr
\link[=securityhub_list_invitations]{list_invitations} \tab Lists all Security Hub membership invitations that were sent to the current AWS account \cr
\link[=securityhub_list_members]{list_members} \tab Lists details about all member accounts for the current Security Hub master account \cr
\link[=securityhub_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags associated with a resource \cr
\link[=securityhub_tag_resource]{tag_resource} \tab Adds one or more tags to a resource \cr
\link[=securityhub_untag_resource]{untag_resource} \tab Removes one or more tags from a resource \cr
\link[=securityhub_update_action_target]{update_action_target} \tab Updates the name and description of a custom action target in Security Hub \cr
\link[=securityhub_update_findings]{update_findings} \tab Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify \cr
\link[=securityhub_update_insight]{update_insight} \tab Updates the Security Hub insight that the insight ARN specifies
}
}

\examples{
\donttest{svc <- securityhub()
svc$accept_invitation(
  Foo = 123
)}

}

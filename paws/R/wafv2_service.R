# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS WAFV2
#'
#' @description
#' This is the latest version of the **AWS WAF** API, released in November,
#' 2019. The names of the entities that you use to access this API, like
#' endpoints and namespaces, all have the versioning information added,
#' like \"V2\" or \"v2\", to distinguish from the prior version. We
#' recommend migrating your resources to this version, because it has a
#' number of significant improvements.
#' 
#' If you used AWS WAF prior to this release, you can\'t use this AWS WAFV2
#' API to access any AWS WAF resources that you created before. You can
#' access your old rules, web ACLs, and other AWS WAF resources only
#' through the AWS WAF Classic APIs. The AWS WAF Classic APIs have retained
#' the prior names, endpoints, and namespaces.
#' 
#' For information, including how to migrate your AWS WAF resources to this
#' version, see the [AWS WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
#' 
#' AWS WAF is a web application firewall that lets you monitor the HTTP and
#' HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API
#' Gateway API, or an Application Load Balancer. AWS WAF also lets you
#' control access to your content. Based on conditions that you specify,
#' such as the IP addresses that requests originate from or the values of
#' query strings, API Gateway, CloudFront, or the Application Load Balancer
#' responds to requests either with the requested content or with an HTTP
#' 403 status code (Forbidden). You also can configure CloudFront to return
#' a custom error page when a request is blocked.
#' 
#' This API guide is for developers who need detailed information about AWS
#' WAF API actions, data types, and errors. For detailed information about
#' AWS WAF features and an overview of how to use AWS WAF, see the [AWS WAF
#' Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
#' 
#' You can make API calls using the endpoints listed in [AWS Service
#' Endpoints for AWS
#' WAF](https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).
#' 
#' -   For regional applications, you can use any of the endpoints in the
#'     list. A regional application can be an Application Load Balancer
#'     (ALB) or an API Gateway stage.
#' 
#' -   For AWS CloudFront applications, you must use the API endpoint
#'     listed for US East (N. Virginia): us-east-1.
#' 
#' Alternatively, you can use one of the AWS SDKs to access an API that\'s
#' tailored to the programming language or platform that you\'re using. For
#' more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
#' 
#' We currently provide two versions of the AWS WAF API: this API and the
#' prior versions, the classic AWS WAF APIs. This new API provides the same
#' functionality as the older versions, with the following major
#' improvements:
#' 
#' -   You use one API for both global and regional applications. Where you
#'     need to distinguish the scope, you specify a `Scope` parameter and
#'     set it to `CLOUDFRONT` or `REGIONAL`.
#' 
#' -   You can define a Web ACL or rule group with a single API call, and
#'     update it with a single call. You define all rule specifications in
#'     JSON format, and pass them to your rule group or Web ACL API calls.
#' 
#' -   The limits AWS WAF places on the use of rules more closely reflects
#'     the cost of running each type of rule. Rule groups include capacity
#'     settings, so you know the maximum cost of a rule group when you use
#'     it.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- wafv2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \donttest{svc <- wafv2()
#' svc$associate_web_acl(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=wafv2_associate_web_acl]{associate_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_check_capacity]{check_capacity} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_create_ip_set]{create_ip_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_create_regex_pattern_set]{create_regex_pattern_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_create_rule_group]{create_rule_group} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_create_web_acl]{create_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_delete_ip_set]{delete_ip_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_delete_logging_configuration]{delete_logging_configuration} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_delete_regex_pattern_set]{delete_regex_pattern_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_delete_rule_group]{delete_rule_group} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_delete_web_acl]{delete_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_describe_managed_rule_group]{describe_managed_rule_group} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_disassociate_web_acl]{disassociate_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_ip_set]{get_ip_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_logging_configuration]{get_logging_configuration} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_rate_based_statement_managed_keys]{get_rate_based_statement_managed_keys} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_regex_pattern_set]{get_regex_pattern_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_rule_group]{get_rule_group} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_sampled_requests]{get_sampled_requests} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_web_acl]{get_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_get_web_acl_for_resource]{get_web_acl_for_resource} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_available_managed_rule_groups]{list_available_managed_rule_groups} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_ip_sets]{list_ip_sets} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_logging_configurations]{list_logging_configurations} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_regex_pattern_sets]{list_regex_pattern_sets} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_resources_for_web_acl]{list_resources_for_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_rule_groups]{list_rule_groups} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_tags_for_resource]{list_tags_for_resource} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_list_web_ac_ls]{list_web_ac_ls} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_put_logging_configuration]{put_logging_configuration} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_tag_resource]{tag_resource} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_untag_resource]{untag_resource} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_update_ip_set]{update_ip_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_update_regex_pattern_set]{update_regex_pattern_set} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_update_rule_group]{update_rule_group} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019\cr
#'  \link[=wafv2_update_web_acl]{update_web_acl} \tab This is the latest version of AWS WAF, named AWS WAFV2, released in November, 2019
#' }
#'
#' @rdname wafv2
#' @export
wafv2 <- function(config = list()) {
  svc <- .wafv2$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.wafv2 <- list()

.wafv2$operations <- list()

.wafv2$metadata <- list(
  service_name = "wafv2",
  endpoints = list("*" = list(endpoint = "wafv2.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "wafv2.{region}.amazonaws.com.cn", global = FALSE)),
  service_id = "WAFV2",
  api_version = "2019-07-29",
  signing_name = NULL,
  json_version = "1.1",
  target_prefix = "AWSWAF_20190729"
)

.wafv2$handlers <- new_handlers("jsonrpc", "v4")

.wafv2$service <- function(config = list()) {
  new_service(.wafv2$metadata, .wafv2$handlers, config)
}

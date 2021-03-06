# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include mediapackagevod_service.R
NULL

#' Creates a new MediaPackage VOD Asset resource
#'
#' Creates a new MediaPackage VOD Asset resource.
#'
#' @usage
#' mediapackagevod_create_asset(Id, PackagingGroupId, ResourceId,
#'   SourceArn, SourceRoleArn)
#'
#' @param Id &#91;required&#93; The unique identifier for the Asset.
#' @param PackagingGroupId &#91;required&#93; The ID of the PackagingGroup for the Asset.
#' @param ResourceId The resource ID to include in SPEKE key requests.
#' @param SourceArn &#91;required&#93; ARN of the source object in S3.
#' @param SourceRoleArn &#91;required&#93; The IAM role ARN used to access the source S3 bucket.
#'
#' @section Request syntax:
#' ```
#' svc$create_asset(
#'   Id = "string",
#'   PackagingGroupId = "string",
#'   ResourceId = "string",
#'   SourceArn = "string",
#'   SourceRoleArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_create_asset
mediapackagevod_create_asset <- function(Id, PackagingGroupId, ResourceId = NULL, SourceArn, SourceRoleArn) {
  op <- new_operation(
    name = "CreateAsset",
    http_method = "POST",
    http_path = "/assets",
    paginator = list()
  )
  input <- .mediapackagevod$create_asset_input(Id = Id, PackagingGroupId = PackagingGroupId, ResourceId = ResourceId, SourceArn = SourceArn, SourceRoleArn = SourceRoleArn)
  output <- .mediapackagevod$create_asset_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$create_asset <- mediapackagevod_create_asset

#' Creates a new MediaPackage VOD PackagingConfiguration resource
#'
#' Creates a new MediaPackage VOD PackagingConfiguration resource.
#'
#' @usage
#' mediapackagevod_create_packaging_configuration(CmafPackage, DashPackage,
#'   HlsPackage, Id, MssPackage, PackagingGroupId)
#'
#' @param CmafPackage 
#' @param DashPackage 
#' @param HlsPackage 
#' @param Id &#91;required&#93; The ID of the PackagingConfiguration.
#' @param MssPackage 
#' @param PackagingGroupId &#91;required&#93; The ID of a PackagingGroup.
#'
#' @section Request syntax:
#' ```
#' svc$create_packaging_configuration(
#'   CmafPackage = list(
#'     Encryption = list(
#'       SpekeKeyProvider = list(
#'         RoleArn = "string",
#'         SystemIds = list(
#'           "string"
#'         ),
#'         Url = "string"
#'       )
#'     ),
#'     HlsManifests = list(
#'       list(
#'         AdMarkers = "NONE"|"SCTE35_ENHANCED"|"PASSTHROUGH",
#'         IncludeIframeOnlyStream = TRUE|FALSE,
#'         ManifestName = "string",
#'         ProgramDateTimeIntervalSeconds = 123,
#'         RepeatExtXKey = TRUE|FALSE,
#'         StreamSelection = list(
#'           MaxVideoBitsPerSecond = 123,
#'           MinVideoBitsPerSecond = 123,
#'           StreamOrder = "ORIGINAL"|"VIDEO_BITRATE_ASCENDING"|"VIDEO_BITRATE_DESCENDING"
#'         )
#'       )
#'     ),
#'     SegmentDurationSeconds = 123
#'   ),
#'   DashPackage = list(
#'     DashManifests = list(
#'       list(
#'         ManifestName = "string",
#'         MinBufferTimeSeconds = 123,
#'         Profile = "NONE"|"HBBTV_1_5",
#'         StreamSelection = list(
#'           MaxVideoBitsPerSecond = 123,
#'           MinVideoBitsPerSecond = 123,
#'           StreamOrder = "ORIGINAL"|"VIDEO_BITRATE_ASCENDING"|"VIDEO_BITRATE_DESCENDING"
#'         )
#'       )
#'     ),
#'     Encryption = list(
#'       SpekeKeyProvider = list(
#'         RoleArn = "string",
#'         SystemIds = list(
#'           "string"
#'         ),
#'         Url = "string"
#'       )
#'     ),
#'     SegmentDurationSeconds = 123
#'   ),
#'   HlsPackage = list(
#'     Encryption = list(
#'       ConstantInitializationVector = "string",
#'       EncryptionMethod = "AES_128"|"SAMPLE_AES",
#'       SpekeKeyProvider = list(
#'         RoleArn = "string",
#'         SystemIds = list(
#'           "string"
#'         ),
#'         Url = "string"
#'       )
#'     ),
#'     HlsManifests = list(
#'       list(
#'         AdMarkers = "NONE"|"SCTE35_ENHANCED"|"PASSTHROUGH",
#'         IncludeIframeOnlyStream = TRUE|FALSE,
#'         ManifestName = "string",
#'         ProgramDateTimeIntervalSeconds = 123,
#'         RepeatExtXKey = TRUE|FALSE,
#'         StreamSelection = list(
#'           MaxVideoBitsPerSecond = 123,
#'           MinVideoBitsPerSecond = 123,
#'           StreamOrder = "ORIGINAL"|"VIDEO_BITRATE_ASCENDING"|"VIDEO_BITRATE_DESCENDING"
#'         )
#'       )
#'     ),
#'     SegmentDurationSeconds = 123,
#'     UseAudioRenditionGroup = TRUE|FALSE
#'   ),
#'   Id = "string",
#'   MssPackage = list(
#'     Encryption = list(
#'       SpekeKeyProvider = list(
#'         RoleArn = "string",
#'         SystemIds = list(
#'           "string"
#'         ),
#'         Url = "string"
#'       )
#'     ),
#'     MssManifests = list(
#'       list(
#'         ManifestName = "string",
#'         StreamSelection = list(
#'           MaxVideoBitsPerSecond = 123,
#'           MinVideoBitsPerSecond = 123,
#'           StreamOrder = "ORIGINAL"|"VIDEO_BITRATE_ASCENDING"|"VIDEO_BITRATE_DESCENDING"
#'         )
#'       )
#'     ),
#'     SegmentDurationSeconds = 123
#'   ),
#'   PackagingGroupId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_create_packaging_configuration
mediapackagevod_create_packaging_configuration <- function(CmafPackage = NULL, DashPackage = NULL, HlsPackage = NULL, Id, MssPackage = NULL, PackagingGroupId) {
  op <- new_operation(
    name = "CreatePackagingConfiguration",
    http_method = "POST",
    http_path = "/packaging_configurations",
    paginator = list()
  )
  input <- .mediapackagevod$create_packaging_configuration_input(CmafPackage = CmafPackage, DashPackage = DashPackage, HlsPackage = HlsPackage, Id = Id, MssPackage = MssPackage, PackagingGroupId = PackagingGroupId)
  output <- .mediapackagevod$create_packaging_configuration_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$create_packaging_configuration <- mediapackagevod_create_packaging_configuration

#' Creates a new MediaPackage VOD PackagingGroup resource
#'
#' Creates a new MediaPackage VOD PackagingGroup resource.
#'
#' @usage
#' mediapackagevod_create_packaging_group(Id)
#'
#' @param Id &#91;required&#93; The ID of the PackagingGroup.
#'
#' @section Request syntax:
#' ```
#' svc$create_packaging_group(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_create_packaging_group
mediapackagevod_create_packaging_group <- function(Id) {
  op <- new_operation(
    name = "CreatePackagingGroup",
    http_method = "POST",
    http_path = "/packaging_groups",
    paginator = list()
  )
  input <- .mediapackagevod$create_packaging_group_input(Id = Id)
  output <- .mediapackagevod$create_packaging_group_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$create_packaging_group <- mediapackagevod_create_packaging_group

#' Deletes an existing MediaPackage VOD Asset resource
#'
#' Deletes an existing MediaPackage VOD Asset resource.
#'
#' @usage
#' mediapackagevod_delete_asset(Id)
#'
#' @param Id &#91;required&#93; The ID of the MediaPackage VOD Asset resource to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_asset(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_delete_asset
mediapackagevod_delete_asset <- function(Id) {
  op <- new_operation(
    name = "DeleteAsset",
    http_method = "DELETE",
    http_path = "/assets/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$delete_asset_input(Id = Id)
  output <- .mediapackagevod$delete_asset_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$delete_asset <- mediapackagevod_delete_asset

#' Deletes a MediaPackage VOD PackagingConfiguration resource
#'
#' Deletes a MediaPackage VOD PackagingConfiguration resource.
#'
#' @usage
#' mediapackagevod_delete_packaging_configuration(Id)
#'
#' @param Id &#91;required&#93; The ID of the MediaPackage VOD PackagingConfiguration resource to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_packaging_configuration(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_delete_packaging_configuration
mediapackagevod_delete_packaging_configuration <- function(Id) {
  op <- new_operation(
    name = "DeletePackagingConfiguration",
    http_method = "DELETE",
    http_path = "/packaging_configurations/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$delete_packaging_configuration_input(Id = Id)
  output <- .mediapackagevod$delete_packaging_configuration_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$delete_packaging_configuration <- mediapackagevod_delete_packaging_configuration

#' Deletes a MediaPackage VOD PackagingGroup resource
#'
#' Deletes a MediaPackage VOD PackagingGroup resource.
#'
#' @usage
#' mediapackagevod_delete_packaging_group(Id)
#'
#' @param Id &#91;required&#93; The ID of the MediaPackage VOD PackagingGroup resource to delete.
#'
#' @section Request syntax:
#' ```
#' svc$delete_packaging_group(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_delete_packaging_group
mediapackagevod_delete_packaging_group <- function(Id) {
  op <- new_operation(
    name = "DeletePackagingGroup",
    http_method = "DELETE",
    http_path = "/packaging_groups/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$delete_packaging_group_input(Id = Id)
  output <- .mediapackagevod$delete_packaging_group_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$delete_packaging_group <- mediapackagevod_delete_packaging_group

#' Returns a description of a MediaPackage VOD Asset resource
#'
#' Returns a description of a MediaPackage VOD Asset resource.
#'
#' @usage
#' mediapackagevod_describe_asset(Id)
#'
#' @param Id &#91;required&#93; The ID of an MediaPackage VOD Asset resource.
#'
#' @section Request syntax:
#' ```
#' svc$describe_asset(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_describe_asset
mediapackagevod_describe_asset <- function(Id) {
  op <- new_operation(
    name = "DescribeAsset",
    http_method = "GET",
    http_path = "/assets/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$describe_asset_input(Id = Id)
  output <- .mediapackagevod$describe_asset_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$describe_asset <- mediapackagevod_describe_asset

#' Returns a description of a MediaPackage VOD PackagingConfiguration
#' resource
#'
#' Returns a description of a MediaPackage VOD PackagingConfiguration resource.
#'
#' @usage
#' mediapackagevod_describe_packaging_configuration(Id)
#'
#' @param Id &#91;required&#93; The ID of a MediaPackage VOD PackagingConfiguration resource.
#'
#' @section Request syntax:
#' ```
#' svc$describe_packaging_configuration(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_describe_packaging_configuration
mediapackagevod_describe_packaging_configuration <- function(Id) {
  op <- new_operation(
    name = "DescribePackagingConfiguration",
    http_method = "GET",
    http_path = "/packaging_configurations/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$describe_packaging_configuration_input(Id = Id)
  output <- .mediapackagevod$describe_packaging_configuration_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$describe_packaging_configuration <- mediapackagevod_describe_packaging_configuration

#' Returns a description of a MediaPackage VOD PackagingGroup resource
#'
#' Returns a description of a MediaPackage VOD PackagingGroup resource.
#'
#' @usage
#' mediapackagevod_describe_packaging_group(Id)
#'
#' @param Id &#91;required&#93; The ID of a MediaPackage VOD PackagingGroup resource.
#'
#' @section Request syntax:
#' ```
#' svc$describe_packaging_group(
#'   Id = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_describe_packaging_group
mediapackagevod_describe_packaging_group <- function(Id) {
  op <- new_operation(
    name = "DescribePackagingGroup",
    http_method = "GET",
    http_path = "/packaging_groups/{id}",
    paginator = list()
  )
  input <- .mediapackagevod$describe_packaging_group_input(Id = Id)
  output <- .mediapackagevod$describe_packaging_group_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$describe_packaging_group <- mediapackagevod_describe_packaging_group

#' Returns a collection of MediaPackage VOD Asset resources
#'
#' Returns a collection of MediaPackage VOD Asset resources.
#'
#' @usage
#' mediapackagevod_list_assets(MaxResults, NextToken, PackagingGroupId)
#'
#' @param MaxResults Upper bound on number of records to return.
#' @param NextToken A token used to resume pagination from the end of a previous request.
#' @param PackagingGroupId Returns Assets associated with the specified PackagingGroup.
#'
#' @section Request syntax:
#' ```
#' svc$list_assets(
#'   MaxResults = 123,
#'   NextToken = "string",
#'   PackagingGroupId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_list_assets
mediapackagevod_list_assets <- function(MaxResults = NULL, NextToken = NULL, PackagingGroupId = NULL) {
  op <- new_operation(
    name = "ListAssets",
    http_method = "GET",
    http_path = "/assets",
    paginator = list()
  )
  input <- .mediapackagevod$list_assets_input(MaxResults = MaxResults, NextToken = NextToken, PackagingGroupId = PackagingGroupId)
  output <- .mediapackagevod$list_assets_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$list_assets <- mediapackagevod_list_assets

#' Returns a collection of MediaPackage VOD PackagingConfiguration
#' resources
#'
#' Returns a collection of MediaPackage VOD PackagingConfiguration resources.
#'
#' @usage
#' mediapackagevod_list_packaging_configurations(MaxResults, NextToken,
#'   PackagingGroupId)
#'
#' @param MaxResults Upper bound on number of records to return.
#' @param NextToken A token used to resume pagination from the end of a previous request.
#' @param PackagingGroupId Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.
#'
#' @section Request syntax:
#' ```
#' svc$list_packaging_configurations(
#'   MaxResults = 123,
#'   NextToken = "string",
#'   PackagingGroupId = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_list_packaging_configurations
mediapackagevod_list_packaging_configurations <- function(MaxResults = NULL, NextToken = NULL, PackagingGroupId = NULL) {
  op <- new_operation(
    name = "ListPackagingConfigurations",
    http_method = "GET",
    http_path = "/packaging_configurations",
    paginator = list()
  )
  input <- .mediapackagevod$list_packaging_configurations_input(MaxResults = MaxResults, NextToken = NextToken, PackagingGroupId = PackagingGroupId)
  output <- .mediapackagevod$list_packaging_configurations_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$list_packaging_configurations <- mediapackagevod_list_packaging_configurations

#' Returns a collection of MediaPackage VOD PackagingGroup resources
#'
#' Returns a collection of MediaPackage VOD PackagingGroup resources.
#'
#' @usage
#' mediapackagevod_list_packaging_groups(MaxResults, NextToken)
#'
#' @param MaxResults Upper bound on number of records to return.
#' @param NextToken A token used to resume pagination from the end of a previous request.
#'
#' @section Request syntax:
#' ```
#' svc$list_packaging_groups(
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mediapackagevod_list_packaging_groups
mediapackagevod_list_packaging_groups <- function(MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListPackagingGroups",
    http_method = "GET",
    http_path = "/packaging_groups",
    paginator = list()
  )
  input <- .mediapackagevod$list_packaging_groups_input(MaxResults = MaxResults, NextToken = NextToken)
  output <- .mediapackagevod$list_packaging_groups_output()
  config <- get_config()
  svc <- .mediapackagevod$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mediapackagevod$operations$list_packaging_groups <- mediapackagevod_list_packaging_groups

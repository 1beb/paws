# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS IoT Data Plane
#'
#' @description
#' AWS IoT
#' 
#' AWS IoT-Data enables secure, bi-directional communication between
#' Internet-connected things (such as sensors, actuators, embedded devices,
#' or smart appliances) and the AWS cloud. It implements a broker for
#' applications and things to publish messages over HTTP (Publish) and
#' retrieve, update, and delete thing shadows. A thing shadow is a
#' persistent representation of your things and their state in the AWS
#' cloud.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- iotdataplane(
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
#' \donttest{svc <- iotdataplane()
#' svc$delete_thing_shadow(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=iotdataplane_delete_thing_shadow]{delete_thing_shadow} \tab Deletes the thing shadow for the specified thing\cr
#'  \link[=iotdataplane_get_thing_shadow]{get_thing_shadow} \tab Gets the thing shadow for the specified thing \cr
#'  \link[=iotdataplane_publish]{publish} \tab Publishes state information \cr
#'  \link[=iotdataplane_update_thing_shadow]{update_thing_shadow} \tab Updates the thing shadow for the specified thing
#' }
#'
#' @rdname iotdataplane
#' @export
iotdataplane <- function(config = list()) {
  svc <- .iotdataplane$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.iotdataplane <- list()

.iotdataplane$operations <- list()

.iotdataplane$metadata <- list(
  service_name = "data.iot",
  endpoints = list("*" = list(endpoint = "data.iot.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "data.iot.{region}.amazonaws.com.cn", global = FALSE)),
  service_id = "IoT Data Plane",
  api_version = "2015-05-28",
  signing_name = "iotdata",
  json_version = "",
  target_prefix = ""
)

.iotdataplane$handlers <- new_handlers("restjson", "v4")

.iotdataplane$service <- function(config = list()) {
  new_service(.iotdataplane$metadata, .iotdataplane$handlers, config)
}

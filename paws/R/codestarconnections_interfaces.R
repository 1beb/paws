# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include codestarconnections_service.R
NULL

.codestarconnections$create_connection_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ProviderType = structure(logical(0), tags = list(type = "string")), ConnectionName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$create_connection_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ConnectionArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$delete_connection_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ConnectionArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$delete_connection_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$get_connection_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ConnectionArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$get_connection_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Connection = structure(list(ConnectionName = structure(logical(0), tags = list(type = "string")), ConnectionArn = structure(logical(0), tags = list(type = "string")), ProviderType = structure(logical(0), tags = list(type = "string")), OwnerAccountId = structure(logical(0), tags = list(type = "string")), ConnectionStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$list_connections_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ProviderTypeFilter = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.codestarconnections$list_connections_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Connections = structure(list(structure(list(ConnectionName = structure(logical(0), tags = list(type = "string")), ConnectionArn = structure(logical(0), tags = list(type = "string")), ProviderType = structure(logical(0), tags = list(type = "string")), OwnerAccountId = structure(logical(0), tags = list(type = "string")), ConnectionStatus = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

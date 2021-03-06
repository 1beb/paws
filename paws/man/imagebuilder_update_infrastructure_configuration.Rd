% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagebuilder_operations.R
\name{imagebuilder_update_infrastructure_configuration}
\alias{imagebuilder_update_infrastructure_configuration}
\title{Updates a new infrastructure configuration}
\usage{
imagebuilder_update_infrastructure_configuration(
  infrastructureConfigurationArn, description, instanceTypes,
  instanceProfileName, securityGroupIds, subnetId, logging, keyPair,
  terminateInstanceOnFailure, snsTopicArn, clientToken)
}
\arguments{
\item{infrastructureConfigurationArn}{[required] The Amazon Resource Name (ARN) of the infrastructure configuration that
you wish to update.}

\item{description}{The description of the infrastructure configuration.}

\item{instanceTypes}{The instance types of the infrastructure configuration. You may specify
one or more instance types to use for this build, the service will pick
one of these instance types based on availability.}

\item{instanceProfileName}{The instance profile to associate with the instance used to customize
your EC2 AMI.}

\item{securityGroupIds}{The security group IDs to associate with the instance used to customize
your EC2 AMI.}

\item{subnetId}{The subnet ID to place the instance used to customize your EC2 AMI in.}

\item{logging}{The logging configuration of the infrastructure configuration.}

\item{keyPair}{The key pair of the infrastructure configuration. This can be used to
log onto and debug the instance used to create your image.}

\item{terminateInstanceOnFailure}{The terminate instance on failure setting of the infrastructure
configuration. Set to false if you wish for Image Builder to retain the
instance used to configure your AMI in the event that the build or test
phase of your workflow failed.}

\item{snsTopicArn}{The SNS topic on which to send image build events.}

\item{clientToken}{[required] The idempotency token used to make this request idempotent.}
}
\description{
Updates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.
}
\section{Request syntax}{
\preformatted{svc$update_infrastructure_configuration(
  infrastructureConfigurationArn = "string",
  description = "string",
  instanceTypes = list(
    "string"
  ),
  instanceProfileName = "string",
  securityGroupIds = list(
    "string"
  ),
  subnetId = "string",
  logging = list(
    s3Logs = list(
      s3BucketName = "string",
      s3KeyPrefix = "string"
    )
  ),
  keyPair = "string",
  terminateInstanceOnFailure = TRUE|FALSE,
  snsTopicArn = "string",
  clientToken = "string"
)
}
}

\keyword{internal}

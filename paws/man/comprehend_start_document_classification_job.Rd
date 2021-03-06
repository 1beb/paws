% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_start_document_classification_job}
\alias{comprehend_start_document_classification_job}
\title{Starts an asynchronous document classification job}
\usage{
comprehend_start_document_classification_job(JobName,
  DocumentClassifierArn, InputDataConfig, OutputDataConfig,
  DataAccessRoleArn, ClientRequestToken, VolumeKmsKeyId, VpcConfig)
}
\arguments{
\item{JobName}{The identifier of the job.}

\item{DocumentClassifierArn}{[required] The Amazon Resource Name (ARN) of the document classifier to use to
process the job.}

\item{InputDataConfig}{[required] Specifies the format and location of the input data for the job.}

\item{OutputDataConfig}{[required] Specifies where to send the output files.}

\item{DataAccessRoleArn}{[required] The Amazon Resource Name (ARN) of the AWS Identity and Access Management
(IAM) role that grants Amazon Comprehend read access to your input data.}

\item{ClientRequestToken}{A unique identifier for the request. If you do not set the client
request token, Amazon Comprehend generates one.}

\item{VolumeKmsKeyId}{ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt data on the storage volume attached to the ML compute
instance(s) that process the analysis job. The VolumeKmsKeyId can be
either of the following formats:
\itemize{
\item KMS Key ID: \code{"1234abcd-12ab-34cd-56ef-1234567890ab"}
\item Amazon Resource Name (ARN) of a KMS Key:
\code{"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"}
}}

\item{VpcConfig}{Configuration parameters for an optional private Virtual Private Cloud
(VPC) containing the resources you are using for your document
classification job. For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html}{Amazon VPC}.}
}
\description{
Starts an asynchronous document classification job. Use the operation to
track the progress of the job.
}
\section{Request syntax}{
\preformatted{svc$start_document_classification_job(
  JobName = "string",
  DocumentClassifierArn = "string",
  InputDataConfig = list(
    S3Uri = "string",
    InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE"
  ),
  OutputDataConfig = list(
    S3Uri = "string",
    KmsKeyId = "string"
  ),
  DataAccessRoleArn = "string",
  ClientRequestToken = "string",
  VolumeKmsKeyId = "string",
  VpcConfig = list(
    SecurityGroupIds = list(
      "string"
    ),
    Subnets = list(
      "string"
    )
  )
)
}
}

\keyword{internal}

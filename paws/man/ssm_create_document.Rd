% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_create_document}
\alias{ssm_create_document}
\title{Creates a Systems Manager document}
\usage{
ssm_create_document(Content, Requires, Attachments, Name, VersionName,
  DocumentType, DocumentFormat, TargetType, Tags)
}
\arguments{
\item{Content}{[required] A valid JSON or YAML string.}

\item{Requires}{A list of SSM documents required by a document. For example, an
\code{ApplicationConfiguration} document requires an
\code{ApplicationConfigurationSchema} document.}

\item{Attachments}{A list of key and value pairs that describe attachments to a version of
a document.}

\item{Name}{[required] A name for the Systems Manager document.

Do not use the following to begin the names of documents you create.
They are reserved by AWS for use as document prefixes:
\itemize{
\item \code{aws}
\item \code{amazon}
\item \code{amzn}
}}

\item{VersionName}{An optional field specifying the version of the artifact you are
creating with the document. For example, \"Release 12, Update 6\". This
value is unique across all versions of a document, and cannot be
changed.}

\item{DocumentType}{The type of document to create. Valid document types include: \code{Command},
\code{Policy}, \code{Automation}, \code{Session}, and \code{Package}.}

\item{DocumentFormat}{Specify the document format for the request. The document format can be
JSON, YAML, or TEXT. JSON is the default format.}

\item{TargetType}{Specify a target type to define the kinds of resources the document can
run on. For example, to run a document on EC2 instances, specify the
following value: /AWS::EC2::Instance. If you specify a value of \'/\'
the document can run on all types of resources. If you don\'t specify a
value, the document can\'t run on any resources. For a list of valid
resource types, see \href{http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html}{AWS Resource Types Reference}
in the \emph{AWS CloudFormation User Guide}.}

\item{Tags}{Optional metadata that you assign to a resource. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag an SSM document to
identify the types of targets or the environment where it will run. In
this case, you could specify the following key name/value pairs:
\itemize{
\item \verb{Key=OS,Value=Windows}
\item \verb{Key=Environment,Value=Production}
}

To add tags to an existing SSM document, use the AddTagsToResource
action.}
}
\description{
Creates a Systems Manager document.
}
\details{
After you create a document, you can use CreateAssociation to associate
it with one or more running instances.
}
\section{Request syntax}{
\preformatted{svc$create_document(
  Content = "string",
  Requires = list(
    list(
      Name = "string",
      Version = "string"
    )
  ),
  Attachments = list(
    list(
      Key = "SourceUrl"|"S3FileUrl"|"AttachmentReference",
      Values = list(
        "string"
      ),
      Name = "string"
    )
  ),
  Name = "string",
  VersionName = "string",
  DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar",
  DocumentFormat = "YAML"|"JSON"|"TEXT",
  TargetType = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}

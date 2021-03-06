% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_app}
\alias{sagemaker_describe_app}
\title{Describes the app}
\usage{
sagemaker_describe_app(DomainId, UserProfileName, AppType, AppName)
}
\arguments{
\item{DomainId}{[required] The domain ID.}

\item{UserProfileName}{[required] The user profile name.}

\item{AppType}{[required] The type of app.}

\item{AppName}{[required] The name of the app.}
}
\description{
Describes the app.
}
\section{Request syntax}{
\preformatted{svc$describe_app(
  DomainId = "string",
  UserProfileName = "string",
  AppType = "JupyterServer"|"KernelGateway"|"TensorBoard",
  AppName = "string"
)
}
}

\keyword{internal}

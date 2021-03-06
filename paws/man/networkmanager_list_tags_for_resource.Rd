% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkmanager_operations.R
\name{networkmanager_list_tags_for_resource}
\alias{networkmanager_list_tags_for_resource}
\title{Lists the tags for a specified resource}
\usage{
networkmanager_list_tags_for_resource(ResourceArn)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the resource.}
}
\description{
Lists the tags for a specified resource.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  ResourceArn = "string"
)
}
}

\keyword{internal}

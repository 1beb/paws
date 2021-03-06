% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataexchange_operations.R
\name{dataexchange_get_asset}
\alias{dataexchange_get_asset}
\title{This operation returns information about an asset}
\usage{
dataexchange_get_asset(AssetId, DataSetId, RevisionId)
}
\arguments{
\item{AssetId}{[required] The unique identifier for an asset.}

\item{DataSetId}{[required] The unique identifier for a data set.}

\item{RevisionId}{[required] The unique identifier for a revision.}
}
\description{
This operation returns information about an asset.
}
\section{Request syntax}{
\preformatted{svc$get_asset(
  AssetId = "string",
  DataSetId = "string",
  RevisionId = "string"
)
}
}

\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_delete_bucket}
\alias{s3_delete_bucket}
\title{Deletes the bucket}
\usage{
s3_delete_bucket(Bucket)
}
\arguments{
\item{Bucket}{[required] Specifies the bucket being deleted.}
}
\description{
Deletes the bucket. All objects (including all object versions and
delete markers) in the bucket must be deleted before the bucket itself
can be deleted.
}
\details{
\strong{Related Resources}
\itemize{
\item 
\itemize{
\item 
}
}
}
\section{Request syntax}{
\preformatted{svc$delete_bucket(
  Bucket = "string"
)
}
}

\examples{
# The following example deletes the specified bucket.
\donttest{svc$delete_bucket(
  Bucket = "forrandall2"
)}

}
\keyword{internal}

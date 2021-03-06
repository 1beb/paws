% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_list_tags}
\alias{lambda_list_tags}
\title{Returns a function's tags}
\usage{
lambda_list_tags(Resource)
}
\arguments{
\item{Resource}{[required] The function\'s Amazon Resource Name (ARN).}
}
\description{
Returns a function\'s
\href{https://docs.aws.amazon.com/lambda/latest/dg/tagging.html}{tags}. You
can also view tags with GetFunction.
}
\section{Request syntax}{
\preformatted{svc$list_tags(
  Resource = "string"
)
}
}

\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elastictranscoder_operations.R
\name{elastictranscoder_list_presets}
\alias{elastictranscoder_list_presets}
\title{The ListPresets operation gets a list of the default presets included
with Elastic Transcoder and the presets that you've added in an AWS
region}
\usage{
elastictranscoder_list_presets(Ascending, PageToken)
}
\arguments{
\item{Ascending}{To list presets in chronological order by the date and time that they
were created, enter \code{true}. To list presets in reverse chronological
order, enter \code{false}.}

\item{PageToken}{When Elastic Transcoder returns more than one page of results, use
\code{pageToken} in subsequent \code{GET} requests to get each successive page of
results.}
}
\description{
The ListPresets operation gets a list of the default presets included
with Elastic Transcoder and the presets that you\'ve added in an AWS
region.
}
\section{Request syntax}{
\preformatted{svc$list_presets(
  Ascending = "string",
  PageToken = "string"
)
}
}

\keyword{internal}

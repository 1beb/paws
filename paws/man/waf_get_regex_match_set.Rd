% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/waf_operations.R
\name{waf_get_regex_match_set}
\alias{waf_get_regex_match_set}
\title{Returns the RegexMatchSet specified by RegexMatchSetId}
\usage{
waf_get_regex_match_set(RegexMatchSetId)
}
\arguments{
\item{RegexMatchSetId}{[required] The \code{RegexMatchSetId} of the RegexMatchSet that you want to get.
\code{RegexMatchSetId} is returned by CreateRegexMatchSet and by
ListRegexMatchSets.}
}
\description{
Returns the RegexMatchSet specified by \code{RegexMatchSetId}.
}
\section{Request syntax}{
\preformatted{svc$get_regex_match_set(
  RegexMatchSetId = "string"
)
}
}

\keyword{internal}

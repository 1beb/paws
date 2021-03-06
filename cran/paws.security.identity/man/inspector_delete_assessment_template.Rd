% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspector_operations.R
\name{inspector_delete_assessment_template}
\alias{inspector_delete_assessment_template}
\title{Deletes the assessment template that is specified by the ARN of the
assessment template}
\usage{
inspector_delete_assessment_template(assessmentTemplateArn)
}
\arguments{
\item{assessmentTemplateArn}{[required] The ARN that specifies the assessment template that you want to delete.}
}
\description{
Deletes the assessment template that is specified by the ARN of the
assessment template.
}
\section{Request syntax}{
\preformatted{svc$delete_assessment_template(
  assessmentTemplateArn = "string"
)
}
}

\examples{
# Deletes the assessment template that is specified by the ARN of the
# assessment template.
\donttest{svc$delete_assessment_template(
  assessmentTemplateArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/templa..."
)}

}
\keyword{internal}

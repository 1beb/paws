% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_enable_import_findings_for_product}
\alias{securityhub_enable_import_findings_for_product}
\title{Enables the integration of a partner product with Security Hub}
\usage{
securityhub_enable_import_findings_for_product(ProductArn)
}
\arguments{
\item{ProductArn}{[required] The ARN of the product to enable the integration for.}
}
\description{
Enables the integration of a partner product with Security Hub.
Integrated products send findings to Security Hub. When you enable a
product integration, a permission policy that grants permission for the
product to send findings to Security Hub is applied.
}
\section{Request syntax}{
\preformatted{svc$enable_import_findings_for_product(
  ProductArn = "string"
)
}
}

\keyword{internal}

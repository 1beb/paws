% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_update_certificate}
\alias{iot_update_certificate}
\title{Updates the status of the specified certificate}
\usage{
iot_update_certificate(certificateId, newStatus)
}
\arguments{
\item{certificateId}{[required] The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)}

\item{newStatus}{[required] The new status.

\strong{Note:} Setting the status to PENDING\\_TRANSFER will result in an
exception being thrown. PENDING\\_TRANSFER is a status used internally by
AWS IoT. It is not intended for developer use.

\strong{Note:} The status value REGISTER\\_INACTIVE is deprecated and should
not be used.}
}
\description{
Updates the status of the specified certificate. This operation is
idempotent.
}
\details{
Moving a certificate from the ACTIVE state (including REVOKED) will not
disconnect currently connected devices, but these devices will be unable
to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS
IoT using a certificate.
}
\section{Request syntax}{
\preformatted{svc$update_certificate(
  certificateId = "string",
  newStatus = "ACTIVE"|"INACTIVE"|"REVOKED"|"PENDING_TRANSFER"|"REGISTER_INACTIVE"|"PENDING_ACTIVATION"
)
}
}

\keyword{internal}

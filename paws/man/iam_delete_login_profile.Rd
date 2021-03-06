% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_delete_login_profile}
\alias{iam_delete_login_profile}
\title{Deletes the password for the specified IAM user, which terminates the
user's ability to access AWS services through the AWS Management Console}
\usage{
iam_delete_login_profile(UserName)
}
\arguments{
\item{UserName}{[required] The name of the user whose password you want to delete.

This parameter allows (through its \href{http://wikipedia.org/wiki/regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: \\_+=,.@-}
}
\description{
Deletes the password for the specified IAM user, which terminates the
user\'s ability to access AWS services through the AWS Management
Console.
}
\details{
Deleting a user\'s password does not prevent a user from accessing AWS
through the command line interface or the API. To prevent all user
access, you must also either make any access keys inactive or delete
them. For more information about making keys inactive or deleting them,
see UpdateAccessKey and DeleteAccessKey.
}
\section{Request syntax}{
\preformatted{svc$delete_login_profile(
  UserName = "string"
)
}
}

\examples{
# The following command deletes the password for the IAM user named Bob.
\donttest{svc$delete_login_profile(
  UserName = "Bob"
)}

}
\keyword{internal}

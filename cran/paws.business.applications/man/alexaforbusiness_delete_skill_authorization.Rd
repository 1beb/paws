% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_delete_skill_authorization}
\alias{alexaforbusiness_delete_skill_authorization}
\title{Unlinks a third-party account from a skill}
\usage{
alexaforbusiness_delete_skill_authorization(SkillId, RoomArn)
}
\arguments{
\item{SkillId}{[required] The unique identifier of a skill.}

\item{RoomArn}{The room that the skill is authorized for.}
}
\description{
Unlinks a third-party account from a skill.
}
\section{Request syntax}{
\preformatted{svc$delete_skill_authorization(
  SkillId = "string",
  RoomArn = "string"
)
}
}

\keyword{internal}

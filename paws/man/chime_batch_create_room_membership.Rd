% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_batch_create_room_membership}
\alias{chime_batch_create_room_membership}
\title{Adds up to 50 members to a chat room}
\usage{
chime_batch_create_room_membership(AccountId, RoomId,
  MembershipItemList)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{RoomId}{[required] The room ID.}

\item{MembershipItemList}{[required] The list of membership items.}
}
\description{
Adds up to 50 members to a chat room. Members can be either users or
bots. The member role designates whether the member is a chat room
administrator or a general chat room member.
}
\section{Request syntax}{
\preformatted{svc$batch_create_room_membership(
  AccountId = "string",
  RoomId = "string",
  MembershipItemList = list(
    list(
      MemberId = "string",
      Role = "Administrator"|"Member"
    )
  )
)
}
}

\keyword{internal}

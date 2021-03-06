% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsx_operations.R
\name{fsx_create_file_system_from_backup}
\alias{fsx_create_file_system_from_backup}
\title{Creates a new Amazon FSx file system from an existing Amazon FSx for
Windows File Server backup}
\usage{
fsx_create_file_system_from_backup(BackupId, ClientRequestToken,
  SubnetIds, SecurityGroupIds, Tags, WindowsConfiguration)
}
\arguments{
\item{BackupId}{[required]}

\item{ClientRequestToken}{(Optional) A string of up to 64 ASCII characters that Amazon FSx uses to
ensure idempotent creation. This string is automatically filled on your
behalf when you use the AWS Command Line Interface (AWS CLI) or an AWS
SDK.}

\item{SubnetIds}{[required] A list of IDs for the subnets that the file system will be accessible
from. Currently, you can specify only one subnet. The file server is
also launched in that subnet\'s Availability Zone.}

\item{SecurityGroupIds}{A list of IDs for the security groups that apply to the specified
network interfaces created for file system access. These security groups
apply to all network interfaces. This value isn\'t returned in later
describe requests.}

\item{Tags}{The tags to be applied to the file system at file system creation. The
key value of the \code{Name} tag appears in the console as the file system
name.}

\item{WindowsConfiguration}{The configuration for this Microsoft Windows file system.}
}
\description{
Creates a new Amazon FSx file system from an existing Amazon FSx for
Windows File Server backup.
}
\details{
If a file system with the specified client request token exists and the
parameters match, this operation returns the description of the file
system. If a client request token specified by the file system exists
and the parameters don\'t match, this call returns
\code{IncompatibleParameterError}. If a file system with the specified client
request token doesn\'t exist, this operation does the following:
\itemize{
\item Creates a new Amazon FSx file system from backup with an assigned
ID, and an initial lifecycle state of \code{CREATING}.
\item Returns the description of the file system.
}

Parameters like Active Directory, default share name, automatic backup,
and backup settings default to the parameters of the file system that
was backed up, unless overridden. You can explicitly supply other
settings.

By using the idempotent operation, you can retry a
\code{CreateFileSystemFromBackup} call without the risk of creating an extra
file system. This approach can be useful when an initial call fails in a
way that makes it unclear whether a file system was created. Examples
are if a transport level timeout occurred, or your connection was reset.
If you use the same client request token and the initial call created a
file system, the client receives success as long as the parameters are
the same.

The \code{CreateFileSystemFromBackup} call returns while the file system\'s
lifecycle state is still \code{CREATING}. You can check the file-system
creation status by calling the DescribeFileSystems operation, which
returns the file system state along with other information.
}
\section{Request syntax}{
\preformatted{svc$create_file_system_from_backup(
  BackupId = "string",
  ClientRequestToken = "string",
  SubnetIds = list(
    "string"
  ),
  SecurityGroupIds = list(
    "string"
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  WindowsConfiguration = list(
    ActiveDirectoryId = "string",
    SelfManagedActiveDirectoryConfiguration = list(
      DomainName = "string",
      OrganizationalUnitDistinguishedName = "string",
      FileSystemAdministratorsGroup = "string",
      UserName = "string",
      Password = "string",
      DnsIps = list(
        "string"
      )
    ),
    DeploymentType = "MULTI_AZ_1"|"SINGLE_AZ_1",
    PreferredSubnetId = "string",
    ThroughputCapacity = 123,
    WeeklyMaintenanceStartTime = "string",
    DailyAutomaticBackupStartTime = "string",
    AutomaticBackupRetentionDays = 123,
    CopyTagsToBackups = TRUE|FALSE
  )
)
}
}

\examples{
# This operation creates a new file system from backup.
\donttest{svc$create_file_system_from_backup(
  BackupId = "backup-03e3c82e0183b7b6b",
  ClientRequestToken = "f4c94ed7-238d-4c46-93db-48cd62ec33b7",
  SecurityGroupIds = list(
    "sg-edcd9784"
  ),
  SubnetIds = list(
    "subnet-1234abcd"
  ),
  Tags = list(
    list(
      Key = "Name",
      Value = "MyFileSystem"
    )
  ),
  WindowsConfiguration = list(
    ThroughputCapacity = 8L
  )
)}

}
\keyword{internal}

CREATE TABLE [dbo].[EligibilityStatus]
(
[EligibilityStatusID] [tinyint] NOT NULL,
[EligibilityStatusName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_EligibilityStatus_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_EligibilityStatus_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_EligibilityStatus_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_EligibilityStatus_CreatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EligibilityStatus] ADD CONSTRAINT [PK_EligibilityStatus] PRIMARY KEY CLUSTERED  ([EligibilityStatusID]) ON [PRIMARY]
GO

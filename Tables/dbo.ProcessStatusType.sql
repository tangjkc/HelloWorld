CREATE TABLE [dbo].[ProcessStatusType]
(
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ProcessStatusType_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdateBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ProcessStatusType_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ProcessStatusType_CreateDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [ProcessStatusType_CreatedBy] DEFAULT ('SysAdmin'),
[ProcessStatusTypeID] [tinyint] NOT NULL,
[ProcessStatusDescription] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProcessStatusType] ADD CONSTRAINT [PK_ProcessStatusType_ID] PRIMARY KEY CLUSTERED  ([ProcessStatusTypeID]) ON [PRIMARY]
GO

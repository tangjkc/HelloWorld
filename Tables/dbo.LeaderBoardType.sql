CREATE TABLE [dbo].[LeaderBoardType]
(
[LeaderBoardTypeID] [tinyint] NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_LeaderBoardType_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardType_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_LeaderBoardType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardType_CreatedBy] DEFAULT ('SysAdmin'),
[LeaderBoardTypeDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_LeaderBoardType_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LeaderBoardType] ADD CONSTRAINT [PK_LeaderBoardType_LeaderBoardTypeID] PRIMARY KEY CLUSTERED  ([LeaderBoardTypeID]) ON [PRIMARY]
GO

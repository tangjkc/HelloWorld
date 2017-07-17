CREATE TABLE [dbo].[LeaderBoardEventTypeCode]
(
[EventTypeCode] [tinyint] NOT NULL,
[EventTypeDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_LeaderBoardEventTypeCode_LastUpdatedDate] DEFAULT (sysdatetime()),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_LeaderBoardEventTypeCode_CreatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardEventTypeCode_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardEventTypeCode_CreatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LeaderBoardEventTypeCode] ADD CONSTRAINT [PK_LeaderBoardEventTypeCode] PRIMARY KEY CLUSTERED  ([EventTypeCode]) ON [PRIMARY]
GO

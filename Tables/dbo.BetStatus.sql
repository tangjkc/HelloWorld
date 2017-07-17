CREATE TABLE [dbo].[BetStatus]
(
[BetStatusID] [tinyint] NOT NULL,
[BetStatusName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BetStatusCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BetStatus_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BetStatus_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BetStatus] ADD CONSTRAINT [PK_BetStatus] PRIMARY KEY CLUSTERED  ([BetStatusID]) ON [PRIMARY]
GO

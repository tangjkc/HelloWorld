CREATE TABLE [dbo].[BetType]
(
[BetTypeID] [smallint] NOT NULL,
[BetTypeName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BetTypeCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BetType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BetType_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BetType_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BetType_LastUpdatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BetType] ADD CONSTRAINT [PK_BetType_BetTypeID] PRIMARY KEY CLUSTERED  ([BetTypeID]) ON [PRIMARY]
GO

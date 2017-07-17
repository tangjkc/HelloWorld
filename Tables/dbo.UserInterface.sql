CREATE TABLE [dbo].[UserInterface]
(
[UserInterfaceID] [smallint] NOT NULL,
[SiteID] [smallint] NOT NULL,
[AgentID] [smallint] NULL,
[UserInterfaceName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_UserInterface_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_UserInterface_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_UserInterface_LastUpdatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_UserInterface_LastUpdatedDate] DEFAULT (sysdatetime()),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_UserInterface_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserInterface] ADD CONSTRAINT [PK_UserInterface_UserInterfaceID] PRIMARY KEY CLUSTERED  ([UserInterfaceID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserInterface_ID] ON [dbo].[UserInterface] ([UserInterfaceID], [SiteID], [AgentID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO

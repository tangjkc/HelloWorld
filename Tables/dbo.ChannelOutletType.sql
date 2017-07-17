CREATE TABLE [dbo].[ChannelOutletType]
(
[ChannelOutletTypeID] [smallint] NOT NULL,
[ChannelOutletTypeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_ChannelOutletType_IsActive] DEFAULT ((0)),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_ChannelOutletType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ChannelOutletType_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_ChannelOutletType_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ChannelOutletType_LastUpdatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChannelOutletType] ADD CONSTRAINT [PK_ChannelOutletType] PRIMARY KEY CLUSTERED  ([ChannelOutletTypeID]) ON [PRIMARY]
GO

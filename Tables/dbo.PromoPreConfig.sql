CREATE TABLE [dbo].[PromoPreConfig]
(
[PromoPreConfigID] [int] NOT NULL IDENTITY(1, 1),
[PromoPreConfigName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoPreConfig_IsActive] DEFAULT ((1)),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPreConfig_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPreConfig_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPreConfig_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPreConfig_CreatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoPreConfig] ADD CONSTRAINT [PK_PromoPreConfig_PromoPreConfigID] PRIMARY KEY CLUSTERED  ([PromoPreConfigID]) ON [PRIMARY]
GO

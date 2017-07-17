CREATE TABLE [dbo].[PromoType]
(
[PromoTypeID] [tinyint] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoType_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoTypes_IsActive] DEFAULT ((1)),
[PromoTypeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromoTypeDescription] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrdinalPosition] [int] NOT NULL CONSTRAINT [DF_PromoTypes_OrdinalPosition] DEFAULT ((0)),
[PromoSQL] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoTypes_PromoSQL] DEFAULT (''),
[MarketingCategoryID] [tinyint] NOT NULL CONSTRAINT [DF_PromoType_MarketingCategoryID] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoType] ADD CONSTRAINT [PK_PromoType_PromoTypeID] PRIMARY KEY CLUSTERED  ([PromoTypeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoType] ADD CONSTRAINT [FK_PromoType_MarketingCategory] FOREIGN KEY ([MarketingCategoryID]) REFERENCES [dbo].[MarketingCategory] ([MarketingCategoryID])
GO
ALTER TABLE [dbo].[PromoType] NOCHECK CONSTRAINT [FK_PromoType_MarketingCategory]
GO

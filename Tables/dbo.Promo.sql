CREATE TABLE [dbo].[Promo]
(
[PromoID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Promo_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Promo_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentPromoID] [int] NOT NULL,
[PromoTypeID] [tinyint] NOT NULL,
[PayoutSegmentMovePermissionTypeID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_PayoutSegmentMovePermissionTypeID] DEFAULT ((0)),
[BatchPayoutTypeID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_BatchPayoutTypeID] DEFAULT ((1)),
[MarketingCategoryID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_MarketingCategoryID] DEFAULT ((1)),
[PromoName] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromoDescription] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BeginDate] [datetime2] NOT NULL,
[EndDate] [datetime2] NOT NULL,
[OrdinalPosition] [tinyint] NOT NULL CONSTRAINT [DF_Promo_OrdinalPosition] DEFAULT ((0)),
[ProcessingBeginDate] [datetime2] NOT NULL,
[ProcessingEndDate] [datetime2] NOT NULL,
[ActivityBeginDate] [datetime2] NOT NULL,
[ActivityEndDate] [datetime2] NOT NULL,
[OptInActivityOverrideTypeID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_OptInActivityOverrideTypeID] DEFAULT ((0)),
[WagerDaysActivityOverrideTypeID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_IsWagerDaysActivityOverrideEnabled] DEFAULT ((0)),
[PromoEntryTypeID] [tinyint] NOT NULL CONSTRAINT [DF_Promo_PromoEntryTypeID] DEFAULT ((0)),
[IsCallCenterVisible] [bit] NOT NULL CONSTRAINT [DF_Promo_IsCallCenterVisible] DEFAULT ((0)),
[RebateLimit] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_RebateLimit] DEFAULT ((0)),
[MatchAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_MatchAmount] DEFAULT ((0)),
[BatchPayoutMaxAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_BatchPayoutMaxAmount] DEFAULT ((0)),
[PromoPayoutMaxAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_PromoPayoutMaxAmount] DEFAULT ((0)),
[DailyPayoutMaxAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_DailyPayoutMaxAmount] DEFAULT ((0)),
[ActivityLimit] [int] NOT NULL CONSTRAINT [DF_Promo_ActivityLimit] DEFAULT ((50000)),
[WagerDays] [smallint] NOT NULL CONSTRAINT [DF_Promo_WagerDays] DEFAULT ((0)),
[PromoDailyMaxAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_Promo_PromoDailyMaxAmount] DEFAULT ((0)),
[PromoCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromoSQL] [varchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OptInBeginDate] [datetime] NOT NULL CONSTRAINT [DF_Promo_OptInBeginDate] DEFAULT (getdate()),
[OptInEndDate] [datetime] NOT NULL CONSTRAINT [DF_Promo_OptInEndDate] DEFAULT (getdate()),
[ChannelOutletTypeID] [smallint] NOT NULL CONSTRAINT [DF_Promo_ChannelOutletID] DEFAULT ((0)),
[AdditionalTags] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Promo_AdditionalTags] DEFAULT (''),
[PromoFriendlyName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Promo_PromoFriendlyName] DEFAULT (''),
[ExternalSystemCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Promo_ExternalSystemCode] DEFAULT ('MP-XXX'),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_Promo_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [PK_Promo] PRIMARY KEY CLUSTERED  ([PromoID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_ChannelOutletType] FOREIGN KEY ([ChannelOutletTypeID]) REFERENCES [dbo].[ChannelOutletType] ([ChannelOutletTypeID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_MarketingCategory] FOREIGN KEY ([MarketingCategoryID]) REFERENCES [dbo].[MarketingCategory] ([MarketingCategoryID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_OptInActivityOverrideType] FOREIGN KEY ([OptInActivityOverrideTypeID]) REFERENCES [dbo].[OptInActivityOverrideType] ([OptInActivityOverrideTypeID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_Promo] FOREIGN KEY ([ParentPromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_PromoType] FOREIGN KEY ([PromoTypeID]) REFERENCES [dbo].[PromoType] ([PromoTypeID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promo_WagerDaysActivityOverrideTypeID] FOREIGN KEY ([WagerDaysActivityOverrideTypeID]) REFERENCES [dbo].[WagerDaysActivityOverrideType] ([WagerDaysActivityOverrideTypeID])
GO
ALTER TABLE [dbo].[Promo] ADD CONSTRAINT [FK_Promoions_PromoEntryTypeID] FOREIGN KEY ([PromoEntryTypeID]) REFERENCES [dbo].[PromoEntryType] ([PromoEntryTypeID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'Marketing promotion information. All common fields for all promotion types', 'SCHEMA', N'dbo', 'TABLE', N'Promo', NULL, NULL
GO

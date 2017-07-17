CREATE TABLE [dbo].[PromoRewards]
(
[PromoID] [int] NOT NULL,
[PointsMultiplier] [decimal] (5, 4) NOT NULL CONSTRAINT [DF_PromoRewards_PointsMultiplier] DEFAULT ((1)),
[Points] [int] NOT NULL CONSTRAINT [DF_PromoRewards_Points] DEFAULT ((0)),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoRewards_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PromoRewards_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoRewards_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PromoRewards_LastUpdatedBy] DEFAULT ('SysAdmin'),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoRewards_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoRewards] ADD CONSTRAINT [PK_PromoRewards] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoRewards] ADD CONSTRAINT [FK_PromoRewards_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

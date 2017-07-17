CREATE TABLE [dbo].[PromoSecondChance]
(
[PromoID] [int] NOT NULL,
[HorsePlacement] [tinyint] NOT NULL,
[PlacementMaxPayoutAmount] [decimal] (11, 2) NOT NULL,
[DeadHeatMaxPayoutAmount] [decimal] (11, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoSecondChance] ADD CONSTRAINT [PK_PromoSecondChance_PromoID] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoSecondChance] ADD CONSTRAINT [FK_PromoSecondChance_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

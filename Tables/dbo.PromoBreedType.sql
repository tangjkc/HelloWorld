CREATE TABLE [dbo].[PromoBreedType]
(
[PromoBreedTypeID] [int] NOT NULL,
[PromoID] [int] NOT NULL,
[BreedTypeID] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoBreedType] ADD CONSTRAINT [PK_PromoBreedType] PRIMARY KEY CLUSTERED  ([PromoBreedTypeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_PromoBreedType] ON [dbo].[PromoBreedType] ([PromoID], [BreedTypeID]) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoBreedType] ADD CONSTRAINT [FK_PromoBreedType_BreedType] FOREIGN KEY ([BreedTypeID]) REFERENCES [dbo].[BreedType] ([BreedTypeID])
GO
ALTER TABLE [dbo].[PromoBreedType] ADD CONSTRAINT [FK_PromoBreedType_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

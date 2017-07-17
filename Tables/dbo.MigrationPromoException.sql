CREATE TABLE [dbo].[MigrationPromoException]
(
[PromoID] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_MigrationPromoException_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_MigrationPromoException_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MigrationPromoException] ADD CONSTRAINT [PK_MigrationPromoException] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MigrationPromoException] ADD CONSTRAINT [FK_Promo_PromoID] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

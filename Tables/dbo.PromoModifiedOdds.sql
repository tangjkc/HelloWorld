CREATE TABLE [dbo].[PromoModifiedOdds]
(
[PromoID] [int] NOT NULL,
[CreatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PromoModifiedOdds_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoModifiedOdds_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [smalldatetime] NOT NULL CONSTRAINT [DF_PromoModifiedOdds_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoModifiedOdds_LastUpdatedBy] DEFAULT ('SysAdmin'),
[OddsModifier] [decimal] (5, 3) NULL CONSTRAINT [DF_PromoModifiedOdds_OddsModifier] DEFAULT ((0)),
[OddsFractionalDisplay] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoModifiedOdds_OddsFractionalDisplay] DEFAULT ((0)),
[QualifyingOddsMin] [decimal] (7, 4) NOT NULL CONSTRAINT [DF_PromoModifiedOdds_QualifyingOddsMin] DEFAULT ((0)),
[QualifyingOddsMax] [decimal] (7, 4) NOT NULL CONSTRAINT [DF_PromoModifiedOdds_QualifyingOddsMax] DEFAULT ((100))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoModifiedOdds] ADD CONSTRAINT [PK_PromoModifiedOdds_PromoID] PRIMARY KEY CLUSTERED  ([PromoID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoModifiedOdds] ADD CONSTRAINT [FK_PromoModifiedOdds_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

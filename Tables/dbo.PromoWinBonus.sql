CREATE TABLE [dbo].[PromoWinBonus]
(
[PromoID] [int] NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoWinBonus_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoWinBonus_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoWinBonus_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoWinBonus_LastUpdatedBy] DEFAULT ('SysAdmin'),
[WinBonusPercent] [decimal] (5, 4) NOT NULL CONSTRAINT [DF_PromoWinBonus_WinBonusPercent] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoWinBonus] ADD CONSTRAINT [PK_PromoWinBonus_PromoID] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PromoWinBonus_Bonus] ON [dbo].[PromoWinBonus] ([PromoID], [WinBonusPercent]) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoWinBonus] ADD CONSTRAINT [FK_PromoWinBonus_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

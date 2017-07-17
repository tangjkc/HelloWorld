CREATE TABLE [dbo].[PromoWagerRebate]
(
[PromoID] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoWagerRebate_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoWagerRebate_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoWagerRebate_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoWagerRebate_LastUpdatedBy] DEFAULT ('SysAdmin'),
[RebatePercent] [decimal] (4, 3) NOT NULL CONSTRAINT [DF_PromoWagerRebate_RebatePercent] DEFAULT ((0)),
[MaxPayoutAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoWagerRebate_MaxPayoutAmount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoWagerRebate] ADD CONSTRAINT [PK_PromoWagerRebate_PromoID] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PromoWagerRebate_ID] ON [dbo].[PromoWagerRebate] ([PromoID]) INCLUDE ([MaxPayoutAmount], [RebatePercent]) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoWagerRebate] ADD CONSTRAINT [FK_PromoWagerRebate_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

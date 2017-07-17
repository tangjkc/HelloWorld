CREATE TABLE [dbo].[PromoBetGet]
(
[PromoId] [int] NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoBetGet_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoBetGet_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoBetGet_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoBetGet_CreatedBy] DEFAULT ('SysAdmin'),
[BetAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoBetGet_BetAmount] DEFAULT ((0)),
[GetAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoBetGet_GetAmount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoBetGet] ADD CONSTRAINT [PK_PromoDepositBetGet_PromoID] PRIMARY KEY CLUSTERED  ([PromoId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoBetGet] ADD CONSTRAINT [FK_PromoBetGet_Promo] FOREIGN KEY ([PromoId]) REFERENCES [dbo].[Promo] ([PromoID])
GO

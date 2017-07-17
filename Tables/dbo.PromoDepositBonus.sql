CREATE TABLE [dbo].[PromoDepositBonus]
(
[PromoID] [int] NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoDepositBonus_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoDepositBonus_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoDepositBonus_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoDepositBonus_CreatedBy] DEFAULT ('SysAdmin'),
[QualifyingDepositNumber] [tinyint] NOT NULL CONSTRAINT [DF_PromoDepositBonus_QualifyingDepositNumber] DEFAULT ((0)),
[MaxParticipantCount] [int] NOT NULL CONSTRAINT [DF_PromoDepositBonus_MaxParticipantCount] DEFAULT ((0)),
[MaxDepositAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoDepositBonus_MaxDepositAmount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoDepositBonus] ADD CONSTRAINT [PK_PromoDepositBonus] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoDepositBonus] ADD CONSTRAINT [FK_PromoDepositBonus_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

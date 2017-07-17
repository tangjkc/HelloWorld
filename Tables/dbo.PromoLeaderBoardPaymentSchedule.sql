CREATE TABLE [dbo].[PromoLeaderBoardPaymentSchedule]
(
[PromoLeaderBoardPaymentScheduleID] [int] NOT NULL IDENTITY(1, 1),
[PromoID] [int] NOT NULL,
[RankingPayoutMin] [int] NOT NULL,
[RankingPayoutMax] [int] NOT NULL,
[PayoutAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoLeaderBoardPaymentSchedule_PayoutAmount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoLeaderBoardPaymentSchedule] ADD CONSTRAINT [PK_PromoLeaderBoardPaymentSchedule] PRIMARY KEY CLUSTERED  ([PromoLeaderBoardPaymentScheduleID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PromoLeaderBoardPaymentSchedule_PromoID] ON [dbo].[PromoLeaderBoardPaymentSchedule] ([PromoID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoLeaderBoardPaymentSchedule] ADD CONSTRAINT [FK_PromoLeaderBoardPaymentSchedule_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

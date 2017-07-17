CREATE TABLE [dbo].[PromoPayoutJournal]
(
[PromoPayoutJournalID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPayoutJournal_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutJournal_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPayoutJournal_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutJournal_LastUpdatedBy] DEFAULT ('SysAdmin'),
[PromoPayoutBatchID] [int] NOT NULL,
[AccountID] [int] NOT NULL,
[PayoutAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournal_PayoutAmount] DEFAULT ((0)),
[PayoutPoints] [int] NOT NULL CONSTRAINT [DF_PromoPayoutJournal_PayoutPoints] DEFAULT ((0)),
[EmailReportRunnerRequestID] [int] NULL,
[PromoPayoutGUID] [uniqueidentifier] NULL ROWGUIDCOL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoPayoutJournal] ADD CONSTRAINT [PK_PromoPayoutJournal] PRIMARY KEY CLUSTERED  ([PromoPayoutJournalID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_PromoPayoutJournal_AccountID] ON [dbo].[PromoPayoutJournal] ([AccountID]) INCLUDE ([PayoutAmount], [PromoPayoutBatchID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PromoIndex]
GO
CREATE NONCLUSTERED INDEX [IDX_PromoPayoutJournal_CreatedDate] ON [dbo].[PromoPayoutJournal] ([CreatedDate]) INCLUDE ([AccountID], [PayoutAmount], [PromoPayoutBatchID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PromoIndex]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PromoPayoutJournal_PromotionPayoutBatchID_AccountID] ON [dbo].[PromoPayoutJournal] ([PromoPayoutBatchID], [AccountID]) INCLUDE ([PayoutAmount]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoPayoutJournal] ADD CONSTRAINT [FK_PromoPayoutJournal_PromoPayoutBatch] FOREIGN KEY ([PromoPayoutBatchID]) REFERENCES [dbo].[PromoPayoutBatch] ([PromoPayoutBatchID])
GO

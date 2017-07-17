CREATE TABLE [dbo].[PromoPayoutJournalStaging]
(
[PromoPayoutJournalStagingID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_LastUpdatedBy] DEFAULT ('SysAdmin'),
[PromoPayoutBatchID] [int] NOT NULL,
[PromoID] [int] NOT NULL,
[PromoName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountID] [int] NOT NULL,
[RebateLimit] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_RebateLimit] DEFAULT ((0)),
[RebateAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_RebateAmount] DEFAULT ((0)),
[WagerRebateAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_WagerRebateAmount] DEFAULT ((0)),
[PaidAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_PaidAmount] DEFAULT ((0)),
[Payout] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_Payout] DEFAULT ((0)),
[WagerNetAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_WagerNetAmount] DEFAULT ((0)),
[WinningsAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_WinningsAmount] DEFAULT ((0)),
[AdjustmentType] [int] NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_AdjustmentType] DEFAULT ((1)),
[DepositAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_DepositAmount] DEFAULT ((0)),
[AccountCreatedDate] [datetime2] NULL,
[PromoOptindate] [datetime2] NULL,
[PayoutPoints] [int] NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_PayoutPoints] DEFAULT ((0)),
[PaidPoints] [int] NOT NULL CONSTRAINT [DF_PromoPayoutJournalStaging_PaidPoints] DEFAULT ((0)),
[PromoPayoutGUID] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_PromoPayoutJournalStaging_PromoPayoutGUID] DEFAULT (newsequentialid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoPayoutJournalStaging] ADD CONSTRAINT [PK_PromoPayoutJournalStaging_PromoPayoutJournalStagingID] PRIMARY KEY CLUSTERED  ([PromoPayoutJournalStagingID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoPayoutJournalStaging] ADD CONSTRAINT [FK_PromoPayoutJournalStaging_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[PromoPayoutJournalStaging] ADD CONSTRAINT [FK_PromoPayoutJournalStaging_PromoPayoutBatch] FOREIGN KEY ([PromoPayoutBatchID]) REFERENCES [dbo].[PromoPayoutBatch] ([PromoPayoutBatchID])
GO

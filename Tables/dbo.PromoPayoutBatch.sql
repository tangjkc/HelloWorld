CREATE TABLE [dbo].[PromoPayoutBatch]
(
[PromoPayoutBatchID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPayoutBatch_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutBatch_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoPayoutBatch_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoPayoutBatch_LastUpdatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[PromoPayoutBatchName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsNegativeAdjustment] [bit] NOT NULL CONSTRAINT [DF_PromoPayoutBatch_IsNegativeAdjustment] DEFAULT ((0)),
[PayoutApprovedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSuccessfullyPosted] [bit] NOT NULL,
[IsEmailSent] [tinyint] NOT NULL CONSTRAINT [DF_PromoPayoutBatch_IsEmailSent] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoPayoutBatch] ADD CONSTRAINT [PK_PromoPayoutBatch] PRIMARY KEY CLUSTERED  ([PromoPayoutBatchID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PromoPayoutBatch_PromoID] ON [dbo].[PromoPayoutBatch] ([PromoID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoPayoutBatch] ADD CONSTRAINT [FK_PromoPayoutBatch_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

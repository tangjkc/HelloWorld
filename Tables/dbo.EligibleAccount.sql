CREATE TABLE [dbo].[EligibleAccount]
(
[EligibleAccountID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_EligibleAccount_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_EligibleAccount_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_EligibleAccount_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_EligibleAccount_CreatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[AccountID] [int] NOT NULL,
[EligibleDate] [datetime] NOT NULL,
[OptInDate] [datetime] NULL,
[SegmentPromoID] [int] NOT NULL,
[EligibilityStatusID] [tinyint] NOT NULL CONSTRAINT [DF_EligibleAccount_EligibilityStatusID] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EligibleAccount] ADD CONSTRAINT [PK_EligibleAccount] PRIMARY KEY CLUSTERED  ([EligibleAccountID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EligibleAccount_LastUpdatedDate] ON [dbo].[EligibleAccount] ([LastUpdatedDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EligibleAccount_PromoID_SegmentPromoID] ON [dbo].[EligibleAccount] ([PromoID], [SegmentPromoID]) INCLUDE ([EligibilityStatusID], [OptInDate]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EligibleAccount_SegmentPromoID_AccountID_PromoID] ON [dbo].[EligibleAccount] ([SegmentPromoID], [AccountID], [PromoID]) INCLUDE ([EligibilityStatusID], [OptInDate]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EligibleAccount] ADD CONSTRAINT [FK_EligibleAccount_EligibilityStatus] FOREIGN KEY ([EligibilityStatusID]) REFERENCES [dbo].[EligibilityStatus] ([EligibilityStatusID])
GO
ALTER TABLE [dbo].[EligibleAccount] ADD CONSTRAINT [FK_EligibleAccount_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[EligibleAccount] ADD CONSTRAINT [FK_EligibleAccount_SegmentPromo] FOREIGN KEY ([SegmentPromoID]) REFERENCES [dbo].[SegmentPromo] ([SegmentPromoID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Listing of Eligible Accounts for promotions.', 'SCHEMA', N'dbo', 'TABLE', N'EligibleAccount', NULL, NULL
GO

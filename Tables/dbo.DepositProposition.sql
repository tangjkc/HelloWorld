CREATE TABLE [dbo].[DepositProposition]
(
[DepositPropositionID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_DepositProposition_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_DepositProposition_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_DepositProposition_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_DepositProposition_CreatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[DepositTypeID] [tinyint] NOT NULL CONSTRAINT [DF_DepositProposition_DepositTypeID] DEFAULT ((0)),
[BonusAmount] [decimal] (5, 2) NOT NULL CONSTRAINT [DF_DepositProposition_BonusAmount] DEFAULT ((0)),
[BonusPercentage] [decimal] (4, 3) NOT NULL CONSTRAINT [DF_DepositProposition_BonusPercentage] DEFAULT ((1)),
[MinimumDepositAmount] [decimal] (11, 2) NOT NULL CONSTRAINT [DF_DepositProposition_DepositAmount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DepositProposition] ADD CONSTRAINT [PK_DepositProposition] PRIMARY KEY CLUSTERED  ([DepositPropositionID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DepositProposition] ADD CONSTRAINT [FK_DepositProposition_DepositType] FOREIGN KEY ([DepositTypeID]) REFERENCES [dbo].[DepositType] ([DepositTypeID])
GO
ALTER TABLE [dbo].[DepositProposition] ADD CONSTRAINT [FK_DepositProposition_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

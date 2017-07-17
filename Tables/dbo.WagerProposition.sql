CREATE TABLE [dbo].[WagerProposition]
(
[WagerPropositionID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_WagerProposition_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerProposition_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_WagerProposition_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerProposition_CreatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[TVGTrackCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerProposition_TVGTrackCode] DEFAULT ('ALL'),
[BetTypeID] [smallint] NOT NULL CONSTRAINT [DF_WagerProposition_BetTypeID] DEFAULT ((0)),
[BreedTypeID] [tinyint] NOT NULL CONSTRAINT [DF_WagerProposition_BreedTypeID] DEFAULT ((0)),
[RaceDate] [date] NULL,
[RaceNumber] [tinyint] NOT NULL CONSTRAINT [DF_WagerProposition_RaceNumber] DEFAULT ((0)),
[BettingInterest] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerProposition_BettingInterest] DEFAULT ('00'),
[BetStatusID] [tinyint] NOT NULL CONSTRAINT [DF_WagerProposition_BetStatusID] DEFAULT ('0'),
[FinishingPosition] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerProposition_FinishingPosition] DEFAULT ((0)),
[MinBettingInterests] [tinyint] NOT NULL CONSTRAINT [DF_WagerProposition_MinBettingInterests] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WagerProposition] ADD CONSTRAINT [PK_WagerProposition] PRIMARY KEY CLUSTERED  ([WagerPropositionID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_WagerProposition_PromoID] ON [dbo].[WagerProposition] ([PromoID]) INCLUDE ([BetStatusID], [BettingInterest], [BetTypeID], [FinishingPosition], [RaceDate], [RaceNumber], [TVGTrackCode]) ON [PromoIndex]
GO
ALTER TABLE [dbo].[WagerProposition] ADD CONSTRAINT [FK_WagerProposition_BetStatus] FOREIGN KEY ([BetStatusID]) REFERENCES [dbo].[BetStatus] ([BetStatusID])
GO
ALTER TABLE [dbo].[WagerProposition] ADD CONSTRAINT [FK_WagerProposition_BetType] FOREIGN KEY ([BetTypeID]) REFERENCES [dbo].[BetType] ([BetTypeID])
GO
ALTER TABLE [dbo].[WagerProposition] ADD CONSTRAINT [FK_WagerProposition_BreedType] FOREIGN KEY ([BreedTypeID]) REFERENCES [dbo].[BreedType] ([BreedTypeID])
GO
ALTER TABLE [dbo].[WagerProposition] ADD CONSTRAINT [FK_WagerProposition_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

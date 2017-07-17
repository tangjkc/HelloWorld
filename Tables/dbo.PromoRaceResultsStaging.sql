CREATE TABLE [dbo].[PromoRaceResultsStaging]
(
[PromoID] [int] NOT NULL,
[TVGCardID] [bigint] NULL,
[TVGRaceID] [bigint] NULL,
[RaceCardDate] [smalldatetime] NULL,
[TrackCode] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Race] [tinyint] NULL,
[BettingInterest] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BaseAmount] [decimal] (11, 2) NULL,
[ProbAmount] [decimal] (11, 2) NULL,
[OddsValue] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FinishPosition] [tinyint] NULL,
[IsDeadHeat] [bit] NULL,
[RaceOdds] [decimal] (11, 2) NULL,
[GuaranteedOdds] [decimal] (5, 3) NULL,
[TrackCodeAdvanced] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BetType] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BetStatus] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RunningBettingInterests] [tinyint] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_PromoRaceResultsStaging_PromoID] ON [dbo].[PromoRaceResultsStaging] ([PromoID]) ON [PRIMARY]
GO

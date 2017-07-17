CREATE TABLE [dbo].[LeaderBoardResults]
(
[LeaderBoardResultsID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_LeaderBoardResults_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardResults_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_LeaderBoardResults_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_LeaderBoardResults_CreatedBy] DEFAULT ('SysAdmin'),
[PromoId] [int] NOT NULL,
[PromoName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentPromoID] [int] NULL,
[OrdinalPosition] [smallint] NOT NULL,
[SegmentName] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountID] [int] NOT NULL,
[OptinDate] [datetime] NULL,
[FirstName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActivityBeginDate] [datetime] NOT NULL,
[MatchAmount] [decimal] (12, 2) NOT NULL CONSTRAINT [DF_LeaderBoardResults_MatchAmount] DEFAULT ((0)),
[ContestWager] [decimal] (12, 2) NOT NULL CONSTRAINT [DF_LeaderBoardResults_ContestWager] DEFAULT ((0)),
[WinningsAmount] [decimal] (12, 2) NOT NULL CONSTRAINT [DF_LeaderBoardResults_WinningsAmount] DEFAULT ((0)),
[ROIPct] [decimal] (5, 3) NOT NULL CONSTRAINT [DF_LeaderBoardResults_ROIPct] DEFAULT ((0)),
[ContestPoints] [smallint] NOT NULL CONSTRAINT [DF_LeaderBoardResults_ContestPoints] DEFAULT ((0)),
[ContestRound] [tinyint] NOT NULL CONSTRAINT [DF_LeaderBoardResults_ContestRound] DEFAULT ((1)),
[Place] [smallint] NOT NULL CONSTRAINT [DF_LeaderBoardResults_Place] DEFAULT ((0)),
[LeaderCheckSum] [int] NOT NULL CONSTRAINT [DF_LeaderBoardResults_LeaderCheckSum] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LeaderBoardResults] ADD CONSTRAINT [PK_LeaderBoardResults_LeaderBoardResultsID] PRIMARY KEY CLUSTERED  ([LeaderBoardResultsID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_LeaderBoardResults_PromoID_AccountID] ON [dbo].[LeaderBoardResults] ([PromoId], [AccountID]) INCLUDE ([ActivityBeginDate], [ContestPoints], [ContestRound], [ContestWager], [FirstName], [LastName], [LastUpdatedBy], [LastUpdatedDate], [LeaderCheckSum], [Location], [MatchAmount], [OptinDate], [OrdinalPosition], [ParentPromoID], [Place], [PromoName], [ROIPct], [SegmentName], [WinningsAmount]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO

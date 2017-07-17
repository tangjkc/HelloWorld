CREATE TABLE [dbo].[PromoLeaderBoard]
(
[PromoID] [int] NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoLeaderBoard_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoLeaderBoard_CreatedBy] DEFAULT ('SysAdmin'),
[LeaderBoardTypeID] [tinyint] NOT NULL,
[RequiredMinWagers] [smallint] NULL CONSTRAINT [DF_PromoLeaderBoard_MinWagers] DEFAULT ((0)),
[RequiredMaxWagers] [smallint] NULL CONSTRAINT [DF_PromoLeaderBoard_MaxWagers] DEFAULT ((0)),
[WagersPerRace] [tinyint] NULL CONSTRAINT [DF_PromoLeaderBoard_WagersPerRace] DEFAULT ((0)),
[IncludeScratches] [bit] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_IncludeScratches] DEFAULT ((0)),
[IsMustWin] [bit] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_IsMustWin] DEFAULT ((0)),
[IsMustWager] [bit] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_IsMustWager] DEFAULT ((0)),
[ContestWeek] [tinyint] NOT NULL CONSTRAINT [DF_PromoLeaderBoard_ContestWeek] DEFAULT ((1)),
[MaxWagerAmountTotal] [decimal] (12, 2) NOT NULL CONSTRAINT [DF_PromoLeaderBoard_MaxWagerAmountTotal] DEFAULT ((1000000))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoLeaderBoard] ADD CONSTRAINT [PK_PromoLeaderBoard_PromoID] PRIMARY KEY CLUSTERED  ([PromoID]) ON [PRIMARY]
GO
CREATE STATISTICS [ST_PromoLeaderBoard_ContestWeek] ON [dbo].[PromoLeaderBoard] ([ContestWeek])
GO
ALTER TABLE [dbo].[PromoLeaderBoard] ADD CONSTRAINT [FK_PromoLeaderBoard_LeaderBoardType] FOREIGN KEY ([LeaderBoardTypeID]) REFERENCES [dbo].[LeaderBoardType] ([LeaderBoardTypeID])
GO
ALTER TABLE [dbo].[PromoLeaderBoard] ADD CONSTRAINT [FK_PromoLeaderBoard_Promotions] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

CREATE TABLE [dbo].[WagerPropositionLeaderBoard]
(
[WagerPropositionID] [int] NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_CreatedBy] DEFAULT ('SysAdmin'),
[LeaderBoardTypeID] [tinyint] NOT NULL,
[RequiredMinWagers] [smallint] NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_MinWagers] DEFAULT ((0)),
[RequiredMaxWagers] [smallint] NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_MaxWagers] DEFAULT ((0)),
[IsMustWin] [bit] NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_IsMustWin] DEFAULT ((0)),
[IsMustWager] [bit] NOT NULL CONSTRAINT [DF_WagerPropositionLeaderBoard_IsMustWager] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WagerPropositionLeaderBoard] ADD CONSTRAINT [PK_WagerPropositionLeaderBoard_ID] PRIMARY KEY CLUSTERED  ([WagerPropositionID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WagerPropositionLeaderBoard] ADD CONSTRAINT [FK_WagerPropositionLeaderBoard_LeaderBoardType] FOREIGN KEY ([LeaderBoardTypeID]) REFERENCES [dbo].[LeaderBoardType] ([LeaderBoardTypeID])
GO
ALTER TABLE [dbo].[WagerPropositionLeaderBoard] ADD CONSTRAINT [FK_WagerPropositionLeaderBoard_WagerProposition] FOREIGN KEY ([WagerPropositionID]) REFERENCES [dbo].[WagerProposition] ([WagerPropositionID])
GO

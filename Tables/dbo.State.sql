CREATE TABLE [dbo].[State]
(
[StateID] [tinyint] NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_State_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_State_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_State_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_State_LastUpdatedBy] DEFAULT ('SysAdmin'),
[StateCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StateName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsBettingAllowed] [bit] NOT NULL CONSTRAINT [DF_State_BettingAllowed] DEFAULT ((0)),
[IsRewardPointsAllowed] [bit] NOT NULL CONSTRAINT [DF_State_RewardPointsAllowed] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[State] ADD CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED  ([StateID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO

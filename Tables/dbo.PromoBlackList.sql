CREATE TABLE [dbo].[PromoBlackList]
(
[PromoBlackListID] [int] NOT NULL IDENTITY(1, 1),
[AccountID] [int] NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoBlackList_IsActive] DEFAULT ((1)),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoBlackList_CreatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoBlackList_LastUpdatedDate] DEFAULT (sysdatetime())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoBlackList] ADD CONSTRAINT [PK_PromoBlackList] PRIMARY KEY CLUSTERED  ([PromoBlackListID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_PromoBlackList_AccountID] ON [dbo].[PromoBlackList] ([AccountID]) WHERE ([IsActive]=(1)) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CustEmailKeyWords]
(
[CustEmailKeyWordsID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailKeyWords_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailKeyWords_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailKeyWords_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailKeyWords_CreatedBy] DEFAULT ('SysAdmin'),
[KeyWord] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_CustEmailKeyWords_IsActive] DEFAULT ((1)),
[KeyField] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailKeyWords_KeyField] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailKeyWords] ADD CONSTRAINT [PK_CustEmailKeyWords_CustEmailKeyWordsID] PRIMARY KEY CLUSTERED  ([CustEmailKeyWordsID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailKeyWords] ADD CONSTRAINT [UQ_CustEmailKeyWords_KeyWord] UNIQUE NONCLUSTERED  ([KeyWord]) ON [PRIMARY]
GO

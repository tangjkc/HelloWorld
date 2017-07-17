CREATE TABLE [dbo].[CustEmailTemplateKeyWords]
(
[CustEmailTemplateKeyWordsID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailTemplateKeyWords_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplateKeyWords_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailTemplateKeyWords_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplateKeyWords_CreatedBy] DEFAULT ('SysAdmin'),
[CustEmailTemplateID] [int] NOT NULL,
[CustEmailKeyWordsID] [int] NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_CustEmailTemplateKeyWords_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailTemplateKeyWords] ADD CONSTRAINT [PK_CustEmailTemplate_CustEmailTemplateKeyWordsID] PRIMARY KEY CLUSTERED  ([CustEmailTemplateKeyWordsID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailTemplateKeyWords] ADD CONSTRAINT [UQ_CustEmailTemplateKeyWords_CustEmailKeyWords] UNIQUE NONCLUSTERED  ([CustEmailTemplateID], [CustEmailKeyWordsID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailTemplateKeyWords] ADD CONSTRAINT [FK_CustEmailTemplateKeyWords_CustEmailTemplate] FOREIGN KEY ([CustEmailTemplateID]) REFERENCES [dbo].[CustEmailTemplate] ([CustEmailTemplateID])
GO
ALTER TABLE [dbo].[CustEmailTemplateKeyWords] ADD CONSTRAINT [FK_PromoCustEmailTemplate_CustEmailKeyWords] FOREIGN KEY ([CustEmailKeyWordsID]) REFERENCES [dbo].[CustEmailKeyWords] ([CustEmailKeyWordsID])
GO

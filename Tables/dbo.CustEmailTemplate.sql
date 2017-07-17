CREATE TABLE [dbo].[CustEmailTemplate]
(
[CustEmailTemplateID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailTemplate_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplate_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_CustEmailTemplate_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplate_CreatedBy] DEFAULT ('SysAdmin'),
[CustEmailTemplateName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplate_CustEmailName] DEFAULT ('TVG DEFAULT'),
[EmailSubject] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_CustEmailTemplate_EmailSubject] DEFAULT ('[TVG] Payout Notification'),
[EmailFrom] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailReplyTo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailText] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_CustEmailTemplate_IsActive] DEFAULT ((1))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustEmailTemplate] ADD CONSTRAINT [PK_CustEmailTemplate_CustEmailTemplateID] PRIMARY KEY CLUSTERED  ([CustEmailTemplateID]) ON [PRIMARY]
GO

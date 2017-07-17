CREATE TABLE [dbo].[PromoCustEmailTemplate]
(
[PromoCustEmailTemplateID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoCustEmailTemplate_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoCustEmailTemplate_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoCustEmailTemplate_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoCustEmailTemplate_CreatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[CustEmailTemplateID] [int] NOT NULL,
[EmailSubject] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailFrom] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailReplyTo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoCustEmailTemplate_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoCustEmailTemplate] ADD CONSTRAINT [PK_PromoCustEmailTemplate_PromoCustEmailTemplateID] PRIMARY KEY CLUSTERED  ([PromoCustEmailTemplateID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoCustEmailTemplate] ADD CONSTRAINT [UQ_CustEmailTemplateKeyWords_PromoID] UNIQUE NONCLUSTERED  ([CustEmailTemplateID], [PromoID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PromoCustEmailTemplate_CustEmailTemplateID_PromoID] ON [dbo].[PromoCustEmailTemplate] ([PromoID], [CustEmailTemplateID]) INCLUDE ([IsActive]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoCustEmailTemplate] ADD CONSTRAINT [FK_PromoCustEmailTemplate_CustEmailTemplate] FOREIGN KEY ([CustEmailTemplateID]) REFERENCES [dbo].[CustEmailTemplate] ([CustEmailTemplateID])
GO
ALTER TABLE [dbo].[PromoCustEmailTemplate] ADD CONSTRAINT [FK_PromoCustEmailTemplate_Promotions] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

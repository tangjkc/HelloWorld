CREATE TABLE [dbo].[MarketingCategory]
(
[MarketingCategoryID] [tinyint] NOT NULL,
[MarketingCategoryName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_MarketingCategory_LastUpdated] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_MarketingCategory_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MarketingCategory] ADD CONSTRAINT [PK_MarketingCategory_MarketingCategoryID] PRIMARY KEY CLUSTERED  ([MarketingCategoryID]) ON [PRIMARY]
GO

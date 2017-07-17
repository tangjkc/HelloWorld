CREATE TABLE [dbo].[PromoEntryType]
(
[PromoEntryTypeID] [tinyint] NOT NULL,
[PromoEntryTypeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromoEntryTypeDescription] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoEntryType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoEntryType_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoEntryType] ADD CONSTRAINT [PK_PromoEntryTypeID] PRIMARY KEY CLUSTERED  ([PromoEntryTypeID]) ON [PRIMARY]
GO

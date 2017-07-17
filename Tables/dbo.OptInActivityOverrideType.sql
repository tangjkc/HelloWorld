CREATE TABLE [dbo].[OptInActivityOverrideType]
(
[OptInActivityOverrideTypeID] [tinyint] NOT NULL,
[OptInActivityOverrideTypeName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OptInActivityOverrideTypeDescription] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_OptInActivityOverrideType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdtatedDate] [datetime2] NOT NULL CONSTRAINT [DF_OptInActivityOverrideType_LastUpdtatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OptInActivityOverrideType] ADD CONSTRAINT [PK_OptInActivityOverrideType] PRIMARY KEY CLUSTERED  ([OptInActivityOverrideTypeID]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[BreedType]
(
[BreedTypeID] [tinyint] NOT NULL,
[BreedTypeName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BreedTypeCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_BreedType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BreedType_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_BreedType_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BreedType_LastUpdatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BreedType] ADD CONSTRAINT [PK_BreedType] PRIMARY KEY CLUSTERED  ([BreedTypeID]) ON [PRIMARY]
GO

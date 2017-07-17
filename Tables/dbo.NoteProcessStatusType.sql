CREATE TABLE [dbo].[NoteProcessStatusType]
(
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_NoteProcessStatusType_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdateBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_NoteProcessStatusType_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_NoteProcessStatusType_CreateDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_NoteProcessStatusType_CreatedBy] DEFAULT ('SysAdmin'),
[NoteProcessStatusTypeID] [tinyint] NOT NULL,
[NoteProcessStatusDescription] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NoteProcessStatusType] ADD CONSTRAINT [PK_NoteProcessStatusType_ID] PRIMARY KEY CLUSTERED  ([NoteProcessStatusTypeID]) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PromoAccountNote]
(
[PromoAccountNoteID] [bigint] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoAccountNote_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoAccountNote_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoAccountNote_CreateDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoAccountNote_CreatedBy] DEFAULT ('SysAdmin'),
[PromoNoteID] [int] NULL,
[PromoID] [int] NOT NULL,
[NoteID] [bigint] NULL,
[AccountID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoAccountNote] ADD CONSTRAINT [PK_PromoAccountNote_PromoAccountNoteID] PRIMARY KEY CLUSTERED  ([PromoAccountNoteID]) WITH (PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoAccountNote] ADD CONSTRAINT [FK_PromoAccountNote_PromoNote] FOREIGN KEY ([PromoNoteID]) REFERENCES [dbo].[PromoNote] ([PromoNoteID])
GO
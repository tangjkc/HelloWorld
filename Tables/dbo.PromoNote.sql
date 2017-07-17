CREATE TABLE [dbo].[PromoNote]
(
[PromoNoteID] [int] NOT NULL IDENTITY(1, 1),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoNote_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoNote_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoNote_CreateDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoNote_CreatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[SegmentID] [int] NOT NULL CONSTRAINT [DF_PromoNote_SegmentID] DEFAULT ((0)),
[NoteText] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NoteType] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LoadDate] [date] NULL,
[LastProcessedDate] [datetime2] NULL,
[NotedAccountsTotal] [int] NULL,
[NoteProcessStatusTypeID] [tinyint] NOT NULL CONSTRAINT [DF_PromoNote_ProcessStatusTypeID] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoNote] ADD CONSTRAINT [PK_promoNote] PRIMARY KEY CLUSTERED  ([PromoNoteID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PromoNote_PromoID] ON [dbo].[PromoNote] ([PromoID], [SegmentID], [CreatedDate]) INCLUDE ([LastProcessedDate], [LoadDate], [NoteText], [NoteType]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoNote] ADD CONSTRAINT [FK_PromoNote_ProcessStatusTypeID] FOREIGN KEY ([NoteProcessStatusTypeID]) REFERENCES [dbo].[NoteProcessStatusType] ([NoteProcessStatusTypeID])
GO
ALTER TABLE [dbo].[PromoNote] ADD CONSTRAINT [FK_PromoNote_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[PromoNote] ADD CONSTRAINT [FK_PromoNote_Segment] FOREIGN KEY ([SegmentID]) REFERENCES [dbo].[Segment] ([SegmentID])
GO

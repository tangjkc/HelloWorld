CREATE TABLE [dbo].[Track]
(
[TrackID] [int] NOT NULL,
[TrackName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TrackCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LocationCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Track] ADD CONSTRAINT [PK_Track_TrackID] PRIMARY KEY CLUSTERED  ([TrackID]) ON [PRIMARY]
GO

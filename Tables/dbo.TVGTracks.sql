CREATE TABLE [dbo].[TVGTracks]
(
[tvgTrackCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[trackName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[trackCode] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[chrimsCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[chrimsTrackName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[chrimsOldCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TrackOwnerID] [tinyint] NULL,
[CHRFile] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TVGTracks] ADD CONSTRAINT [PK_TvgTracks] PRIMARY KEY CLUSTERED  ([tvgTrackCode]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO

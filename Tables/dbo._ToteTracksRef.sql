CREATE TABLE [dbo].[_ToteTracksRef]
(
[toteSystemID] [tinyint] NOT NULL,
[toteTrackCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[tvgTrackCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[toteTrackName] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CSVFile]
(
[CSVFileID] [int] NOT NULL IDENTITY(1, 1),
[NumberOfBytes] [int] NOT NULL,
[FileName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UploadedDateTime] [datetime] NOT NULL CONSTRAINT [DF__CSVFile__Uploade__4944D3CA] DEFAULT (getdate()),
[UploadedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CSVFile] ADD CONSTRAINT [PK_CSVFile_CSVFileID] PRIMARY KEY CLUSTERED  ([CSVFileID]) ON [PRIMARY]
GO

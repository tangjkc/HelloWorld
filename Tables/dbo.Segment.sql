CREATE TABLE [dbo].[Segment]
(
[SegmentID] [int] NOT NULL IDENTITY(1, 1),
[SegmentName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SegmentDescription] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Segment_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Segment_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_Segment_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_Segment_CreatedBy] DEFAULT ('SysAdmin'),
[OrdinalPosition] [smallint] NOT NULL CONSTRAINT [DF_Segment_OrdinalPosition] DEFAULT ((0)),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_Segment_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Segment] ADD CONSTRAINT [PK_Segment_SegmentID] PRIMARY KEY CLUSTERED  ([SegmentID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Segmentation for Eligible Accounts', 'SCHEMA', N'dbo', 'TABLE', N'Segment', NULL, NULL
GO

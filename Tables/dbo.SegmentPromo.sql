CREATE TABLE [dbo].[SegmentPromo]
(
[SegmentPromoID] [int] NOT NULL IDENTITY(1, 1),
[SegmentID] [int] NOT NULL,
[PromoID] [int] NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_SegmentPromo_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_SegmentPromo_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_SegmentPromo_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_SegmentPromo_CreatedBy] DEFAULT ('SysAdmin'),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_SegmentPromo_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SegmentPromo] ADD CONSTRAINT [PK_SegmentPromo] PRIMARY KEY CLUSTERED  ([SegmentPromoID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_SegmentPromo_SegmentID_PromoID] ON [dbo].[SegmentPromo] ([SegmentID], [PromoID]) INCLUDE ([SegmentPromoID]) ON [PromoIndex]
GO
ALTER TABLE [dbo].[SegmentPromo] ADD CONSTRAINT [FK_SegmentPromo_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[SegmentPromo] ADD CONSTRAINT [FK_SegmentPromo_Segment] FOREIGN KEY ([SegmentID]) REFERENCES [dbo].[Segment] ([SegmentID])
GO

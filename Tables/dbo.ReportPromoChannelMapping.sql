CREATE TABLE [dbo].[ReportPromoChannelMapping]
(
[ReportPromoChannelMappingID] [int] NOT NULL IDENTITY(1, 1),
[ReportControlID] [int] NOT NULL,
[PromoTypeID] [tinyint] NOT NULL,
[ChannelOutletTypeID] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportPromoChannelMapping] ADD CONSTRAINT [PK_ReportPromoChannelMapping_ID] PRIMARY KEY CLUSTERED  ([ReportPromoChannelMappingID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ReportPromoChannelMapping] ON [dbo].[ReportPromoChannelMapping] ([PromoTypeID], [ChannelOutletTypeID], [ReportControlID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportPromoChannelMapping] ADD CONSTRAINT [FK_ReportPromoChannelMapping_ChannelOutletTypeID] FOREIGN KEY ([ChannelOutletTypeID]) REFERENCES [dbo].[ChannelOutletType] ([ChannelOutletTypeID])
GO
ALTER TABLE [dbo].[ReportPromoChannelMapping] ADD CONSTRAINT [FK_ReportPromoChannelMapping_PromoTypeID] FOREIGN KEY ([PromoTypeID]) REFERENCES [dbo].[PromoType] ([PromoTypeID])
GO
ALTER TABLE [dbo].[ReportPromoChannelMapping] ADD CONSTRAINT [FK_ReportPromoChannelMapping_ReportControlID] FOREIGN KEY ([ReportControlID]) REFERENCES [dbo].[ReportControl] ([ReportControlID])
GO

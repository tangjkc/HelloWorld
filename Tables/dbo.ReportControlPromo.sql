CREATE TABLE [dbo].[ReportControlPromo]
(
[ReportControlPromoID] [int] NOT NULL IDENTITY(1, 1),
[LastRunDate] [datetime2] NOT NULL CONSTRAINT [DF_ReportControlPromo_LastRunDate] DEFAULT (sysdatetime()),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ReportControlPromo_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControlPromo_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ReportControlPromo_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControlPromo_LastUpdatedBy] DEFAULT ('SysAdmin'),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_ReportControlPromo_IsActive] DEFAULT ((1)),
[ReportControlID] [int] NOT NULL,
[PromoID] [int] NOT NULL,
[EmailTo] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControlPromo_EmailTo] DEFAULT ('dba@tvg.com'),
[EmailCC] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailBCC] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReportFlags] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReportLocation] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FrequencyIntervalInMinutes] [int] NOT NULL CONSTRAINT [DF_ReportControlPromo_FrequencyIntervalMinutes] DEFAULT ((0)),
[ProcessingStartDate] [datetime2] NULL CONSTRAINT [DF_ReportControlPromo_ProcessingStartDate] DEFAULT (sysdatetime()),
[ProcessingEndDate] [datetime2] NULL CONSTRAINT [DF_ReportControlPromo_ProcessingEndDate] DEFAULT (sysdatetime()),
[ReportSQL] [varchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControlPromo_ReportSQL] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportControlPromo] ADD CONSTRAINT [PK_ReportControlPromo_ID] PRIMARY KEY CLUSTERED  ([ReportControlPromoID]) WITH (PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_ReportControlPromo_PromoID] ON [dbo].[ReportControlPromo] ([PromoID], [ReportControlID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportControlPromo] ADD CONSTRAINT [FK_ReportControlPromo_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[ReportControlPromo] ADD CONSTRAINT [FK_ReportControlPromo_ReportControl] FOREIGN KEY ([ReportControlID]) REFERENCES [dbo].[ReportControl] ([ReportControlID])
GO

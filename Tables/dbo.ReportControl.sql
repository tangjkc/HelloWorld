CREATE TABLE [dbo].[ReportControl]
(
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ReportControl_Createddate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControl_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ReportControl_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControl_LastUpdatedBy] DEFAULT ('SysAdmin'),
[ReportControlID] [int] NOT NULL IDENTITY(1, 1),
[ReportName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReportCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReportSQL] [varchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_ReportControl_IsActive] DEFAULT ((1)),
[DefaultEmailTo] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControl_DefaultEmailTo] DEFAULT ('marketing@tvg.com;TVG_CRRSupervisors@betfair.com'),
[DefaultEmailCC] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ReportControl_DefaultEmailCC] DEFAULT ('dba@tvg.com'),
[DefaultEmailBCC] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_ReportControl_DefaultEmailBCC] DEFAULT ('')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportControl] ADD CONSTRAINT [PK_ReportControl_ID] PRIMARY KEY CLUSTERED  ([ReportControlID]) WITH (PAD_INDEX=ON) ON [PRIMARY]
GO

CREATE TABLE [dbo].[WagerDaysActivityOverrideType]
(
[WagerDaysActivityOverrideTypeID] [tinyint] NOT NULL,
[WagerDaysActivityOverrideTypeName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_WagerDaysActivityOverrideType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdtatedDate] [datetime2] NOT NULL CONSTRAINT [DF_WagerDaysActivityOverrideType_LastUpdtatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WagerDaysActivityOverrideType] ADD CONSTRAINT [PK_WagerDaysActivityOverrideType] PRIMARY KEY NONCLUSTERED  ([WagerDaysActivityOverrideTypeID]) ON [PRIMARY]
GO

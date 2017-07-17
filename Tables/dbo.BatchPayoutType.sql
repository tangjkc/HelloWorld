CREATE TABLE [dbo].[BatchPayoutType]
(
[BatchPayoutTypeID] [tinyint] NOT NULL,
[Name] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BatchPayoutType_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BatchPayoutType_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_BatchPayoutType_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_BatchPayoutType_CreatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchPayoutType] ADD CONSTRAINT [PK_PayoutType] PRIMARY KEY CLUSTERED  ([BatchPayoutTypeID]) ON [PRIMARY]
GO

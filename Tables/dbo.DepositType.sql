CREATE TABLE [dbo].[DepositType]
(
[DepositTypeID] [tinyint] NOT NULL,
[DepositTypeName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DepositTypeCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DepositType_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_DepositType_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_DepositType_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_DepositType_LastUpdatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DepositType] ADD CONSTRAINT [PK_DepositType] PRIMARY KEY CLUSTERED  ([DepositTypeID]) ON [PRIMARY]
GO

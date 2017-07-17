CREATE TABLE [dbo].[ProcessMsgLog]
(
[ProcessMsgLogID] [bigint] NOT NULL IDENTITY(1, 1),
[PromoID] [int] NULL,
[AccountID] [int] NULL,
[ProcessName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProcessMsg] [varchar] (750) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RecordCnt] [int] NULL CONSTRAINT [DF_ProcessMsgLog_recordCnt] DEFAULT ((0)),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_ProcessMsgLog_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_ProcessMsgLog_LastUpdatedBy] DEFAULT ('SysAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProcessMsgLog] ADD CONSTRAINT [PK_ProcessMsgLog_ID] PRIMARY KEY CLUSTERED  ([ProcessMsgLogID]) ON [PRIMARY]
GO

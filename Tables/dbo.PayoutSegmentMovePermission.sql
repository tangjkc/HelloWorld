CREATE TABLE [dbo].[PayoutSegmentMovePermission]
(
[PayoutSegmentMovePermissionTypeID] [smallint] NOT NULL,
[PayoutSegmentMovePermissionDescription] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PayoutSegmentMovePermission_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PayoutSegmentMovePermission_LastUpdatedBy] DEFAULT ('SysAdmin'),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PayoutSegmentMovePermission_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PayoutSegmentMovePermission_CreatedBy] DEFAULT ('SysteAdmin')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PayoutSegmentMovePermission] ADD CONSTRAINT [PK_PromoSegmentRef_ID] PRIMARY KEY CLUSTERED  ([PayoutSegmentMovePermissionTypeID]) ON [PRIMARY]
GO

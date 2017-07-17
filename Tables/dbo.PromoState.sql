CREATE TABLE [dbo].[PromoState]
(
[PromoStateID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoState_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoState_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromoID] [int] NOT NULL,
[StateID] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoState] ADD CONSTRAINT [PK_PromoState] PRIMARY KEY CLUSTERED  ([PromoStateID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoState] ADD CONSTRAINT [FK_PromoState_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[PromoState] ADD CONSTRAINT [FK_PromoState_State] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Allowed State by Promotion', 'SCHEMA', N'dbo', 'TABLE', N'PromoState', NULL, NULL
GO

CREATE TABLE [dbo].[PromoUserInterface]
(
[PromoUserInterfaceID] [int] NOT NULL IDENTITY(1, 1),
[CreatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoUserInterface_CreatedDate] DEFAULT (sysdatetime()),
[CreatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoUserInterface_CreatedBy] DEFAULT ('SysAdmin'),
[LastUpdatedDate] [datetime2] NOT NULL CONSTRAINT [DF_PromoUserInterface_LastUpdatedDate] DEFAULT (sysdatetime()),
[LastUpdatedBy] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PromoUserInterface_LastUpdatedBy] DEFAULT ('SysAdmin'),
[PromoID] [int] NOT NULL,
[UserInterfaceID] [smallint] NOT NULL,
[IsActive] [bit] NOT NULL CONSTRAINT [DF_PromoUserInterface_IsActive] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromoUserInterface] ADD CONSTRAINT [PK_PromoSite_PromoSiteID] PRIMARY KEY CLUSTERED  ([PromoUserInterfaceID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PromoUserInterface_PromoID] ON [dbo].[PromoUserInterface] ([PromoID], [UserInterfaceID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PromoIndex]
GO
ALTER TABLE [dbo].[PromoUserInterface] ADD CONSTRAINT [FK_PromoSite_Promo] FOREIGN KEY ([PromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[PromoUserInterface] ADD CONSTRAINT [FK_PromoUserInterface_UserInterface] FOREIGN KEY ([UserInterfaceID]) REFERENCES [dbo].[UserInterface] ([UserInterfaceID])
GO

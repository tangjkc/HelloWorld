CREATE TABLE [dbo].[OptInCopyMapping]
(
[OptInCopyMappingID] [int] NOT NULL IDENTITY(1, 1),
[FromRootPromoID] [int] NOT NULL,
[ToRootPromoID] [int] NOT NULL,
[CopyTypeID] [tinyint] NOT NULL CONSTRAINT [DF_OptInCopyMapping_CopyTypeID] DEFAULT ((0)),
[IsActive] [bit] NOT NULL CONSTRAINT [DF_OptInCopyMapping_IsActive] DEFAULT ((0)),
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_OptInCopyMapping_CreatedDate] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastUpdatedDate] [datetime] NOT NULL CONSTRAINT [DF_OptInCopyMapping_LastUpdatedDate] DEFAULT (getdate()),
[LastUpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OptInCopyMapping] ADD CONSTRAINT [PK_OptInCopyMapping] PRIMARY KEY CLUSTERED  ([OptInCopyMappingID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OptInCopyMapping] ADD CONSTRAINT [FK_OptInCopyMapping_FromRootPromoID_Promotions] FOREIGN KEY ([FromRootPromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO
ALTER TABLE [dbo].[OptInCopyMapping] ADD CONSTRAINT [FK_OptInCopyMapping_ToRootPromoID_Promotions] FOREIGN KEY ([ToRootPromoID]) REFERENCES [dbo].[Promo] ([PromoID])
GO

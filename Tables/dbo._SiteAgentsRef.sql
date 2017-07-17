CREATE TABLE [dbo].[_SiteAgentsRef]
(
[siteID] [int] NOT NULL,
[siteDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[isWageringPlatform] [tinyint] NOT NULL,
[agentStartID] [int] NOT NULL,
[agentEndID] [int] NOT NULL,
[categoryDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[_Wagerstbl]
(
[wagerID] [int] NOT NULL,
[accountID] [int] NULL,
[toteSystemID] [tinyint] NOT NULL,
[sellCardDate] [datetime] NOT NULL,
[sellTimestamp] [datetime] NOT NULL,
[raceCardDate] [datetime] NULL,
[priceCardDate] [datetime] NULL,
[updateTimestamp] [datetime] NOT NULL,
[sellSiteID] [int] NOT NULL,
[sellAgentID] [int] NOT NULL,
[serialNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[sgrSellTfa] [int] NULL,
[sgrUpdTfa] [int] NULL,
[tvgTrackCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[performanceType] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[race] [tinyint] NOT NULL,
[betType] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[isBox] [tinyint] NULL,
[horseList] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[wagerAmount] [float] NULL,
[numberOfBets] [int] NULL,
[wagerCost] [float] NULL,
[refundAmount] [float] NULL,
[cancelAmount] [money] NULL,
[betStatus] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[betModifier] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[commission] [float] NULL,
[winningBetAmount] [float] NULL,
[grossWinnings] [float] NULL,
[fedWithheld] [float] NULL,
[location] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[area] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[postalCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CancelSiteID] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CancelAgentID] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[association] [tinyint] NULL,
[DeviceID] [int] NULL,
[stateWithheld] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[_Wagerstbl] ADD CONSTRAINT [cdx_WagersTbl_SellCardDateWagerID] PRIMARY KEY CLUSTERED  ([sellCardDate], [wagerID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_raceCardDate_accountID] ON [dbo].[_Wagerstbl] ([accountID], [raceCardDate]) WITH (FILLFACTOR=90, PAD_INDEX=ON, ALLOW_PAGE_LOCKS=OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_accountID_sellCardDate] ON [dbo].[_Wagerstbl] ([accountID], [sellCardDate], [priceCardDate], [betStatus]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Wagerstbl_AccountID_SellTimestamp] ON [dbo].[_Wagerstbl] ([accountID], [sellTimestamp], [priceCardDate], [betStatus]) INCLUDE ([betType], [cancelAmount], [grossWinnings], [horseList], [race], [raceCardDate], [refundAmount], [sellAgentID], [sellCardDate], [sellSiteID], [serialNumber], [tvgTrackCode], [wagerAmount], [wagerCost]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_raceCardDate] ON [dbo].[_Wagerstbl] ([raceCardDate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_sgrSellTfa] ON [dbo].[_Wagerstbl] ([sellCardDate], [sgrSellTfa]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_sgrUpdTfa] ON [dbo].[_Wagerstbl] ([sellCardDate], [sgrUpdTfa]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_Wagerstbl_SellTimeStamp] ON [dbo].[_Wagerstbl] ([sellTimestamp], [accountID]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_WagersTbl_serialNumber] ON [dbo].[_Wagerstbl] ([serialNumber]) INCLUDE ([accountID], [sellTimestamp]) WITH (FILLFACTOR=90, PAD_INDEX=ON) ON [PRIMARY]
GO

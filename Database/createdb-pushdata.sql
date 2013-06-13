USE [PushData]
GO

/****** Object:  Table [dbo].[TaskList]    Script Date: 6/14/2013 12:42:32 AM ******/
DROP TABLE [dbo].[TaskList]
GO

/****** Object:  Table [dbo].[Currencies]    Script Date: 6/14/2013 12:42:32 AM ******/
DROP TABLE [dbo].[Currencies]
GO

/****** Object:  Table [dbo].[Currencies]    Script Date: 6/14/2013 12:42:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Currencies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaseCurrency] [varchar](4) NOT NULL,
	[ToCurrency] [varchar](4) NOT NULL,
	[Value] [decimal](12, 4) NOT NULL,
	[TimeValue] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TaskList]    Script Date: 6/14/2013 12:42:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TaskList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppID] [varchar](5) NOT NULL,
	[UserName] [varchar](24) NOT NULL,
	[TaskName] [varchar](64) NOT NULL,
	[Prority] [varchar](12) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[DueDate] [datetime] NOT NULL,
	[Url] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



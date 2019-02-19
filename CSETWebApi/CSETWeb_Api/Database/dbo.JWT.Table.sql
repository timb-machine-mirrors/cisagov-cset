USE [CSETWeb]
GO
/****** Object:  Table [dbo].[JWT]    Script Date: 11/14/2018 3:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JWT](
	[Secret] [varchar](200) NOT NULL,
	[Generated] [datetime] NOT NULL,
 CONSTRAINT [PK_JWT] PRIMARY KEY CLUSTERED 
(
	[Secret] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
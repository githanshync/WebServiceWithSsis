USE [Destiny]
GO

/****** Object:  Table [dbo].[TipoCambio]    Script Date: 12/9/2023 18:09:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoCambio](
	[Moneda] [int] NULL,
	[fecha] [datetime] NULL,
	[Venta] [numeric](18, 4) NULL,
	[Compra] [numeric](18, 4) NULL
) ON [PRIMARY]
GO


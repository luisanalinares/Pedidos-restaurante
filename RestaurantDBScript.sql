USE [RestaurantDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/2/2020 14:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 10/2/2020 14:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/2/2020 14:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](50) NULL,
	[CustomerID] [int] NULL,
	[PMethod] [varchar](50) NULL,
	[GTotal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 10/2/2020 14:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NULL,
	[ItemID] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (1, N'Jose Lopez')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (2, N'Celsa Mendez')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (3, N'Alvaro Bez')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (4, N'Ana Linares')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (5, N'Juan Prado')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (6, N'Alfonsina Blyde')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (1, N'Terimayo', CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (2, N'Oroshi', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (3, N'Okonomi', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (4, N'Negimiso', CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (5, N'Spicy Cheese Terimayo', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (6, N'Ume', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (7, N'Yakisoba', CAST(320.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (8, N'Hot & Spicy', CAST(390.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (9, N'Ebi Tempura', CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (10, N'Yakiniku Rice', CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (11, N'Love Meat', CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (12, N'Tonkatsu', CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (13, N'Salmon Dog', CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (14, N'Avocado', CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (1001, N'Gaseosa', CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (1002, N'Agua ', CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNo], [CustomerID], [PMethod], [GTotal]) VALUES (10006, N'529571', 1, N'Tarjeta', CAST(1480.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([OrderID], [OrderNo], [CustomerID], [PMethod], [GTotal]) VALUES (10007, N'829137', 2, N'Efectivo', CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([OrderID], [OrderNo], [CustomerID], [PMethod], [GTotal]) VALUES (10008, N'113196', 1, N'Efectivo', CAST(150.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (10013, 10006, 9, 2)
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (10014, 10006, 7, 1)
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (10015, 10006, 1001, 3)
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (10016, 10007, 2, 1)
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (10017, 10008, 2, 1)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Item]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Order]
GO

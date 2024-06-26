USE [Laptop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/17/2024 10:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/17/2024 10:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[cID] [int] NOT NULL,
	[cName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/17/2024 10:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[cartID] [int] IDENTITY(1,1) NOT NULL,
	[uID] [int] NULL,
	[date] [date] NULL,
	[TotalMoney] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 3/17/2024 10:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[cartID] [int] NOT NULL,
	[pID] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[cartID] ASC,
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/17/2024 10:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[image] [nvarchar](255) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (1, N'tan', N'1403', 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (2, N'admin', N'admin', 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (3, N'user', N'password', 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (4, N'user1', N'password1', 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (5, N'tanpro', N'123', 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isAdmin]) VALUES (7, N'tanz', N'1', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (1, N'Dell')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (2, N'Asus')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (3, N'HP')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (4, N'MSI')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (5, N'Acer')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (6, N'Lenovo')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (7, N'Razer')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (8, N'Samsung')
INSERT [dbo].[Categories] ([cID], [cName]) VALUES (9, N'LG')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (1, 2, CAST(N'2022-03-14' AS Date), 3888.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (2, 1, CAST(N'2024-03-17' AS Date), 1976.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (3, 1, CAST(N'2024-03-17' AS Date), 2240.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (4, 1, CAST(N'2024-03-17' AS Date), 1797.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (5, 1, CAST(N'2024-03-17' AS Date), 3106.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (6, 1, CAST(N'2024-03-17' AS Date), 2284.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (7, 1, CAST(N'2024-03-17' AS Date), 1355.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (8, 1, CAST(N'2024-03-17' AS Date), 0.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (9, 1, CAST(N'2024-03-17' AS Date), 565.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (10, 1, CAST(N'2024-03-17' AS Date), 0.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (11, 1, CAST(N'2024-03-17' AS Date), 1164.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (12, 1, CAST(N'2024-03-17' AS Date), 1154.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (13, 1, CAST(N'2024-03-17' AS Date), 1154.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (14, 1, CAST(N'2024-03-17' AS Date), 1154.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (15, 1, CAST(N'2024-03-17' AS Date), 7942.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (16, 1, CAST(N'2024-03-17' AS Date), 1130.0000)
INSERT [dbo].[Order] ([cartID], [uID], [date], [TotalMoney]) VALUES (17, 1, CAST(N'2024-03-17' AS Date), 1110.0000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Order_Details] ([cartID], [pID], [quantity], [price]) VALUES (1, 2, 3, 342.0000)
INSERT [dbo].[Order_Details] ([cartID], [pID], [quantity], [price]) VALUES (2, 3, 4, 433.0000)
INSERT [dbo].[Order_Details] ([cartID], [pID], [quantity], [price]) VALUES (16, 3, 2, 565.0000)
INSERT [dbo].[Order_Details] ([cartID], [pID], [quantity], [price]) VALUES (17, 1, 2, 555.0000)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (1, N'Laptop HP 240 G9 6L1X7PA', N'https://anphat.com.vn/media/product/44445_laptop_hp_240_g9_6l1x7pa_anphatpc_3.jpg', 555.0000, N'Intel Core i3-1215U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | Bac', 3, 16)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (2, N'Laptop HP 14S-dq5100TU 7C0Q0PA', N'https://anphat.com.vn/media/product/43918_laptop_hp_14s_dq5100tu_7c0q0pa_anphatpc.jpg', 599.0000, N'Core i5-1235U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | Bac', 3, 33)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (3, N'Laptop MSI Thin GF63 12UCX-841VN', N'https://anphat.com.vn/media/product/46550_laptop_msi_thin_gf63_12ucx_841vn.jpg', 565.0000, N'Intel Core i5-12450H | 8GB | 512GB | RTX 2050 Max Q | 15.6 inch FHD 144Hz | Win 11 | Ðen', 4, 52)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (4, N'Laptop ASUS TUF Gaming A15 FA507NU-LP131W', N'https://anphat.com.vn/media/product/46684_laptop_asus_tuf_gaming_a15_fa507nu_lp131w__2_.jpg', 756.0000, N'Ryzen 5-7535HS | 16GB | 1TB | RTX 4050 6GB | 15.6-inch FHD | Win 11 | Jaeger Gray', 2, 54)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (5, N'Laptop Lenovo Legion Slim 5 16APH8 82Y9002YVN', N'https://anphat.com.vn/media/product/46234_laptop_lenovo_legion_slim_5_16aph8_82y9002yvn_anphatpc.jpg', 754.0000, N'AMD Ryzen 7 7840HS | 16GB | 512GB | RTX 4060 8GB | 16 inch WQXGA | Win 11 | Xám', 6, 5)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (6, N'Laptop Gaming Acer Aspire 7 A715-76G-5806 - NH.QMFSV.002', N'https://anphat.com.vn/media/product/45836_acer_aspire_7_a715_76g_5806___nh_qmfsv_002_3s1.jpg', 1976.0000, N'Core i5-12450H | RTX 3050 | 15.6 inch FHD, IPS, 144Hz | 16GB | 512GB SSD, Win 11 | Vo Nhôm', 5, 35)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (7, N'Laptop HP 240 G9 6L1X7PA', N'https://anphat.com.vn/media/product/44445_laptop_hp_240_g9_6l1x7pa_anphatpc_3.jpg', 349.0000, N'Intel Core i3-1215U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | B?c', 3, 5)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (8, N'Laptop HP 14S-dq5100TU 7C0Q0PA', N'https://anphat.com.vn/media/product/43918_laptop_hp_14s_dq5100tu_7c0q0pa_anphatpc.jpg', 599.0000, N'Core i5-1235U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | Bac', 3, 464)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (9, N'Laptop MSI Thin GF63 12UCX-841VN', N'https://anphat.com.vn/media/product/46550_laptop_msi_thin_gf63_12ucx_841vn.jpg', 565.0000, N'Intel Core i5-12450H | 8GB | 512GB | RTX 2050 Max Q | 15.6 inch FHD 144Hz | Win 11 | Ðen', 4, 45)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (10, N'Laptop ASUS TUF Gaming A15 FA507NU-LP131W', N'https://anphat.com.vn/media/product/46684_laptop_asus_tuf_gaming_a15_fa507nu_lp131w__2_.jpg', 756.0000, N'Ryzen 5-7535HS | 16GB | 1TB | RTX 4050 6GB | 15.6-inch FHD | Win 11 | Jaeger Gray', 2, 56)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (11, N'Laptop Lenovo Legion Slim 5 16APH8 82Y9002YVN', N'https://anphat.com.vn/media/product/46234_laptop_lenovo_legion_slim_5_16aph8_82y9002yvn_anphatpc.jpg', 754.0000, N'AMD Ryzen 7 7840HS | 16GB | 512GB | RTX 4060 8GB | 16 inch WQXGA | Win 11 | Xám', 6, 46)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (12, N'Laptop Gaming Acer Aspire 7 A715-76G-5806 - NH.QMFSV.002', N'https://anphat.com.vn/media/product/45836_acer_aspire_7_a715_76g_5806___nh_qmfsv_002_3s1.jpg', 1976.0000, N'Core i5-12450H | RTX 3050 | 15.6 inch FHD, IPS, 144Hz | 16GB | 512GB SSD, Win 11 | Vo Nhôm', 5, 5)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (13, N'Laptop HP 240 G9 6L1X7PA', N'https://anphat.com.vn/media/product/44445_laptop_hp_240_g9_6l1x7pa_anphatpc_3.jpg', 349.0000, N'Intel Core i3-1215U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | B?c', 3, 78)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (14, N'Laptop HP 14S-dq5100TU 7C0Q0PA', N'https://anphat.com.vn/media/product/43918_laptop_hp_14s_dq5100tu_7c0q0pa_anphatpc.jpg', 599.0000, N'Core i5-1235U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | Bac', 3, 31)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (15, N'Laptop MSI Thin GF63 12UCX-841VN', N'https://anphat.com.vn/media/product/46550_laptop_msi_thin_gf63_12ucx_841vn.jpg', 565.0000, N'Intel Core i5-12450H | 8GB | 512GB | RTX 2050 Max Q | 15.6 inch FHD 144Hz | Win 11 | Ðen', 4, 84)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (16, N'Laptop ASUS TUF Gaming A15 FA507NU-LP131W', N'https://anphat.com.vn/media/product/46684_laptop_asus_tuf_gaming_a15_fa507nu_lp131w__2_.jpg', 756.0000, N'Ryzen 5-7535HS | 16GB | 1TB | RTX 4050 6GB | 15.6-inch FHD | Win 11 | Jaeger Gray', 2, 87)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (17, N'Laptop Lenovo Legion Slim 5 16APH8 82Y9002YVN', N'https://anphat.com.vn/media/product/46234_laptop_lenovo_legion_slim_5_16aph8_82y9002yvn_anphatpc.jpg', 754.0000, N'AMD Ryzen 7 7840HS | 16GB | 512GB | RTX 4060 8GB | 16 inch WQXGA | Win 11 | Xám', 6, 77)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (18, N'Laptop Gaming Acer Aspire 7 A715-76G-5806 - NH.QMFSV.002', N'https://anphat.com.vn/media/product/45836_acer_aspire_7_a715_76g_5806___nh_qmfsv_002_3s1.jpg', 1976.0000, N'Core i5-12450H | RTX 3050 | 15.6 inch FHD, IPS, 144Hz | 16GB | 512GB SSD, Win 11 | Vo Nhôm', 5, 11)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (19, N'Laptop HP 240 G9 6L1X7PA', N'https://anphat.com.vn/media/product/44445_laptop_hp_240_g9_6l1x7pa_anphatpc_3.jpg', 349.0000, N'Intel Core i3-1215U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | B?c', 3, 88)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (20, N'Laptop HP 14S-dq5100TU 7C0Q0PA', N'https://anphat.com.vn/media/product/43918_laptop_hp_14s_dq5100tu_7c0q0pa_anphatpc.jpg', 599.0000, N'Core i5-1235U | 8GB | 256GB | Intel Iris Xe | 14 inch FHD | Win 11 | Bac', 3, 98)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (21, N'Laptop MSI Thin GF63 12UCX-841VN', N'https://anphat.com.vn/media/product/46550_laptop_msi_thin_gf63_12ucx_841vn.jpg', 565.0000, N'Intel Core i5-12450H | 8GB | 512GB | RTX 2050 Max Q | 15.6 inch FHD 144Hz | Win 11 | Ðen', 4, 41)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (23, N'Laptop Lenovo Legion Slim 5 16APH8 82Y9002YVN', N'https://anphat.com.vn/media/product/46234_laptop_lenovo_legion_slim_5_16aph8_82y9002yvn_anphatpc.jpg', 754.0000, N'AMD Ryzen 7 7840HS | 16GB | 512GB | RTX 4060 8GB | 16 inch WQXGA | Win 11 | Xám', 6, 64)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (24, N'Laptop Gaming Acer Aspire 7 A715-76G-5806 - NH.QMFSV.002', N'https://anphat.com.vn/media/product/45836_acer_aspire_7_a715_76g_5806___nh_qmfsv_002_3s1.jpg', 1976.0000, N'Core i5-12450H | RTX 3050 | 15.6 inch FHD, IPS, 144Hz | 16GB | 512GB SSD, Win 11 | Vo Nhôm', 5, 55)
INSERT [dbo].[Products] ([id], [name], [image], [price], [description], [cateID], [Quantity]) VALUES (25, N'Laptop LG Gram 2023 16ZD90R-G.AX55A5', N'https://anphat.com.vn/media/product/44925_laptop_lg_gram_2023_16zd90r_g_ax55a5_anphatpc_3.jpg', 454.0000, N'Core i5-1340P | 16GB | 512GB | Intel Iris Xe | 16 inch WQXGA | Black', 9, 99)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([uID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([cartID])
REFERENCES [dbo].[Order] ([cartID])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Categories] ([cID])
GO

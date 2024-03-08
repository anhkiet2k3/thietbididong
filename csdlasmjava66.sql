USE [master]
GO
/****** Object:  Database [csdlasmjava66]    Script Date: 8/11/2023 12:11:21 PM ******/
CREATE DATABASE [csdlasmjava66]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'csdlasmjava66', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\csdlasmjava66.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'csdlasmjava66_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\csdlasmjava66_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [csdlasmjava66] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [csdlasmjava66].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [csdlasmjava66] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [csdlasmjava66] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [csdlasmjava66] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [csdlasmjava66] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [csdlasmjava66] SET ARITHABORT OFF 
GO
ALTER DATABASE [csdlasmjava66] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [csdlasmjava66] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [csdlasmjava66] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [csdlasmjava66] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [csdlasmjava66] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [csdlasmjava66] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [csdlasmjava66] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [csdlasmjava66] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [csdlasmjava66] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [csdlasmjava66] SET  ENABLE_BROKER 
GO
ALTER DATABASE [csdlasmjava66] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [csdlasmjava66] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [csdlasmjava66] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [csdlasmjava66] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [csdlasmjava66] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [csdlasmjava66] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [csdlasmjava66] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [csdlasmjava66] SET RECOVERY FULL 
GO
ALTER DATABASE [csdlasmjava66] SET  MULTI_USER 
GO
ALTER DATABASE [csdlasmjava66] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [csdlasmjava66] SET DB_CHAINING OFF 
GO
ALTER DATABASE [csdlasmjava66] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [csdlasmjava66] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [csdlasmjava66] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [csdlasmjava66] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'csdlasmjava66', N'ON'
GO
ALTER DATABASE [csdlasmjava66] SET QUERY_STORE = OFF
GO
USE [csdlasmjava66]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
	[category_img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[total] [float] NULL,
	[product_id] [nvarchar](50) NULL,
	[Order_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] NOT NULL,
	[Order_date] [date] NULL,
	[total] [float] NULL,
	[status] [nvarchar](1) NULL,
	[province] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[ward] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[payment] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [nvarchar](50) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[product_img] [nvarchar](max) NULL,
	[price] [float] NULL,
	[qty] [int] NULL,
	[discount] [float] NULL,
	[sold_quantity] [int] NULL,
	[description] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[brand_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 8/11/2023 12:11:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'hniwwows', N'189e10ec4f0', N'Phan Thành Phúc', N'phanlethanhphuc2003@gmail.com', NULL)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'kpngccrq', N'189e2d80bbe', N'kpngccrq', N'phucpltps22980@fpt.edu.vn', NULL)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'phucdzx1', N'123', NULL, N'tannv636@gmail.com', N'0202002020')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'thanhphuc', N'123', N'Thành Phúc', N'thanhphuc@gmail.com', N'030303030303')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'user1', N'123', N'User1', N'user1@gmail.com', N'292992992')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'user2', N'123', N'User2', N'user2@gmail.com', N'9399393')
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [phone]) VALUES (N'yaqmsydx', N'189e10db03a', N'Thành Phúc', N'pltp2010@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (7, N'CUST', N'thanhphuc')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (12, N'DIRE', N'thanhphuc')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (13, N'STAF', N'thanhphuc')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (15, N'STAF', N'user1')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (16, N'DIRE', N'user2')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (17, N'CUST', N'user2')
INSERT [dbo].[Authorities] ([id], [role_id], [username]) VALUES (20, N'CUST', N'user1')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 

INSERT [dbo].[brand] ([id], [name], [img]) VALUES (1, N'SamSung', N'samsungnew-220x48-1.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (2, N'Iphone', N'logo-iphone-220x48.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (3, N'Oppo', N'OPPO42-b_5.jpg')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (4, N'Xiaomi', N'logo-xiaomi-220x48-5.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (5, N'MacBook', N'logo-macbook-149x40.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (6, N'Asus', N'logo-asus-149x40.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (7, N'Levono', N'Lenovo522-b_6.jpg')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (8, N'IPad', N'iPad-(Apple)522-b_4.jpg')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (9, N'Logitech', N'logologitech.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (10, N'Razer', N'razer.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (11, N'Nokia', N'Nokia42-b_21.jpg')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (12, N'SamSung1', N'samsungnew-220x48-1.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (13, N'SamSung', N'samsungnew-220x48-1.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (14, N'Bàn phímtest', N'default-avatar.png')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (1011, N'Bàn phím test', N'Nokia42-b_21.jpg')
INSERT [dbo].[brand] ([id], [name], [img]) VALUES (1012, N'Appe Watch', N'Apple7077-b26-220x48.png')
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (1, N'Điện thoại', N'dien-thoai-doc-quyen-128x128.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (2, N'Laptop', N'Laptop-129x129.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (3, N'Máy tính bảng', N'Tablet-128x129.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (4, N'Chuột', N'chuot-128x129.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (5, N'Bàn phím', N'ban-phim-128x129.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (1008, N'Đồng hồ', N'Donghothongminh-128x129.png')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (1, 1, 285000, 285000, N'DT34', 1)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (2, 1, 200000, 200000, N'DT22', 1)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (3, 5, 390000, 1950000, N'DT32', 2)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (4, 5, 390000, 1950000, N'DT32', 3)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (5, 5, 390000, 1950000, N'DT32', 4)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (6, 5, 390000, 1950000, N'DT32', 5)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (7, 5, 390000, 1950000, N'DT32', 6)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (8, 5, 390000, 1950000, N'DT32', 7)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (9, 5, 390000, 1950000, N'DT32', 8)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (10, 5, 390000, 1950000, N'DT32', 9)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (11, 5, 390000, 1950000, N'DT32', 10)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (12, 5, 390000, 1950000, N'DT32', 11)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (13, 5, 390000, 1950000, N'DT32', 12)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (14, 5, 390000, 1950000, N'DT32', 13)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (15, 5, 390000, 1950000, N'DT32', 14)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (16, 5, 390000, 1950000, N'DT32', 15)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (17, 5, 390000, 1950000, N'DT32', 16)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (18, 5, 390000, 1950000, N'DT32', 17)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (19, 5, 390000, 1950000, N'DT32', 18)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (20, 5, 390000, 1950000, N'DT32', 19)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (21, 5, 390000, 1950000, N'DT32', 20)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (22, 5, 390000, 1950000, N'DT32', 21)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (23, 5, 390000, 1950000, N'DT32', 22)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (24, 5, 390000, 1950000, N'DT32', 23)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (25, 5, 390000, 1950000, N'DT32', 24)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (26, 5, 390000, 1950000, N'DT32', 25)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (27, 5, 390000, 1950000, N'DT32', 26)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (28, 9, 390000, 3510000, N'DT32', 27)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (29, 9, 390000, 3510000, N'DT32', 28)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (30, 9, 390000, 3510000, N'DT32', 29)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (31, 9, 390000, 3510000, N'DT32', 30)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (32, 9, 390000, 3510000, N'DT32', 31)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (33, 9, 390000, 3510000, N'DT32', 32)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (34, 7, 390000, 2730000, N'DT32', 33)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (35, 7, 390000, 2730000, N'DT32', 34)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (36, 7, 390000, 2730000, N'DT32', 35)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (37, 7, 390000, 2730000, N'DT32', 36)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (38, 7, 390000, 2730000, N'DT32', 37)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (39, 7, 390000, 2730000, N'DT32', 38)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (40, 7, 390000, 2730000, N'DT32', 39)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (41, 7, 390000, 2730000, N'DT32', 40)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (42, 7, 390000, 2730000, N'DT32', 41)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (43, 7, 390000, 2730000, N'DT32', 42)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (44, 7, 390000, 2730000, N'DT32', 43)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (45, 7, 390000, 2730000, N'DT32', 44)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (46, 7, 390000, 2730000, N'DT32', 45)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (47, 7, 390000, 2730000, N'DT32', 46)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (48, 7, 390000, 2730000, N'DT32', 47)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (49, 7, 390000, 2730000, N'DT32', 48)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (50, 7, 390000, 2730000, N'DT32', 49)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (51, 7, 390000, 2730000, N'DT32', 50)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (52, 7, 390000, 2730000, N'DT32', 51)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (53, 7, 390000, 2730000, N'DT32', 52)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (54, 7, 390000, 2730000, N'DT32', 53)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (55, 7, 390000, 2730000, N'DT32', 54)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (56, 7, 390000, 2730000, N'DT32', 55)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (57, 7, 390000, 2730000, N'DT32', 56)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (58, 7, 390000, 2730000, N'DT32', 57)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (59, 7, 390000, 2730000, N'DT32', 58)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (60, 7, 390000, 2730000, N'DT32', 59)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (61, 7, 390000, 2730000, N'DT32', 60)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (62, 7, 390000, 2730000, N'DT32', 61)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (63, 7, 390000, 2730000, N'DT32', 62)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (64, 7, 390000, 2730000, N'DT32', 63)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (65, 7, 390000, 2730000, N'DT32', 64)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (66, 7, 390000, 2730000, N'DT32', 65)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (67, 7, 390000, 2730000, N'DT32', 66)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (68, 7, 390000, 2730000, N'DT32', 67)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (69, 7, 390000, 2730000, N'DT32', 68)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (70, 7, 390000, 2730000, N'DT32', 69)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (71, 7, 390000, 2730000, N'DT32', 70)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (72, 7, 390000, 2730000, N'DT32', 71)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (73, 7, 390000, 2730000, N'DT32', 72)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (74, 7, 390000, 2730000, N'DT32', 73)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (75, 7, 390000, 2730000, N'DT32', 74)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (76, 7, 390000, 2730000, N'DT32', 75)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (77, 7, 390000, 2730000, N'DT32', 76)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (78, 7, 390000, 2730000, N'DT32', 77)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (79, 7, 390000, 2730000, N'DT32', 78)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (80, 7, 390000, 2730000, N'DT32', 79)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (81, 7, 390000, 2730000, N'DT32', 80)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (82, 7, 390000, 2730000, N'DT32', 81)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (83, 7, 390000, 2730000, N'DT32', 82)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (84, 7, 390000, 2730000, N'DT32', 83)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (85, 7, 390000, 2730000, N'DT32', 84)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (86, 7, 390000, 2730000, N'DT32', 85)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (87, 7, 390000, 2730000, N'DT32', 86)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (88, 7, 390000, 2730000, N'DT32', 87)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (89, 7, 390000, 2730000, N'DT32', 88)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (90, 7, 390000, 2730000, N'DT32', 89)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (91, 7, 390000, 2730000, N'DT32', 90)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (92, 8, 390000, 3120000, N'DT32', 91)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (93, 1, 750000, 750000, N'DT35', 91)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (94, 8, 390000, 3120000, N'DT32', 92)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (95, 1, 750000, 750000, N'DT35', 92)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (96, 8, 390000, 3120000, N'DT32', 93)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (97, 1, 750000, 750000, N'DT35', 93)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (98, 8, 390000, 3120000, N'DT32', 94)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (99, 1, 750000, 750000, N'DT35', 94)
GO
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (100, 8, 390000, 3120000, N'DT32', 95)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (101, 1, 750000, 750000, N'DT35', 95)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (102, 8, 390000, 3120000, N'DT32', 96)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (103, 1, 750000, 750000, N'DT35', 96)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (104, 8, 390000, 3120000, N'DT32', 97)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (105, 1, 750000, 750000, N'DT35', 97)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (106, 8, 390000, 3120000, N'DT32', 98)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (107, 1, 750000, 750000, N'DT35', 98)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (108, 1, 720000, 720000, N'DT200', 99)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (109, 1, 900000, 900000, N'DT21', 99)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (110, 1, 720000, 720000, N'DT200', 100)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (111, 1, 900000, 900000, N'DT21', 100)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (112, 1, 720000, 720000, N'DT200', 101)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (113, 1, 900000, 900000, N'DT21', 101)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (114, 1, 720000, 720000, N'DT200', 102)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (115, 1, 900000, 900000, N'DT21', 102)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (116, 1, 720000, 720000, N'DT200', 103)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (117, 1, 900000, 900000, N'DT21', 103)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (118, 1, 720000, 720000, N'DT200', 104)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (119, 1, 900000, 900000, N'DT21', 104)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (120, 1, 720000, 720000, N'DT200', 105)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (121, 1, 900000, 900000, N'DT21', 105)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (122, 1, 720000, 720000, N'DT200', 106)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (123, 1, 900000, 900000, N'DT21', 106)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (124, 1, 720000, 720000, N'DT200', 107)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (125, 1, 900000, 900000, N'DT21', 107)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (126, 1, 720000, 720000, N'DT200', 108)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (127, 1, 900000, 900000, N'DT21', 108)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (128, 1, 720000, 720000, N'DT200', 109)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (129, 1, 900000, 900000, N'DT21', 109)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (130, 1, 720000, 720000, N'DT200', 110)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (131, 1, 900000, 900000, N'DT21', 110)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (132, 1, 720000, 720000, N'DT200', 111)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (133, 1, 900000, 900000, N'DT21', 111)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (134, 1, 720000, 720000, N'DT200', 112)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (135, 1, 900000, 900000, N'DT21', 112)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (136, 1, 720000, 720000, N'DT200', 113)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (137, 1, 900000, 900000, N'DT21', 113)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (138, 1, 720000, 720000, N'DT200', 114)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (139, 1, 900000, 900000, N'DT21', 114)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (140, 1, 720000, 720000, N'DT200', 115)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (141, 1, 900000, 900000, N'DT21', 115)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (142, 1, 720000, 720000, N'DT200', 116)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (143, 1, 900000, 900000, N'DT21', 116)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (144, 1, 200000, 200000, N'DT22', 117)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (145, 1, 285000, 285000, N'DT34', 117)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (146, 1, 200000, 200000, N'DT22', 118)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (147, 1, 285000, 285000, N'DT34', 118)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (148, 1, 200000, 200000, N'DT22', 119)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (149, 1, 285000, 285000, N'DT34', 119)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (150, 1, 200000, 200000, N'DT22', 120)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (151, 1, 285000, 285000, N'DT34', 120)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (152, 1, 200000, 200000, N'DT22', 121)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (153, 3, 285000, 855000, N'DT34', 121)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (154, 1, 200000, 200000, N'DT22', 122)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (155, 3, 285000, 855000, N'DT34', 122)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (156, 1, 200000, 200000, N'DT22', 123)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (157, 1, 285000, 285000, N'DT34', 123)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (158, 1, 900000, 900000, N'DT21', 123)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (159, 1, 11900000, 11900000, N'DT28', 123)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (160, 1, 200000, 200000, N'DT22', 124)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (161, 1, 285000, 285000, N'DT34', 124)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (162, 1, 900000, 900000, N'DT21', 124)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (163, 1, 11900000, 11900000, N'DT28', 124)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (164, 3, 121212, 363636, N'1212', 127)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (165, 1, 420000, 420000, N'DT33', 127)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (166, 1, 1500000000, 1500000000, N'DT40', 127)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (167, 3, 121212, 363636, N'1212', 128)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (168, 1, 420000, 420000, N'DT33', 128)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (169, 1, 1500000000, 1500000000, N'DT40', 128)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (170, 3, 121212, 363636, N'1212', 129)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (171, 1, 420000, 420000, N'DT33', 129)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (172, 1, 1500000000, 1500000000, N'DT40', 129)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (173, 3, 121212, 363636, N'1212', 130)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (174, 1, 420000, 420000, N'DT33', 130)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (175, 1, 1500000000, 1500000000, N'DT40', 130)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (176, 3, 121212, 363636, N'1212', 131)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (177, 1, 420000, 420000, N'DT33', 131)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (178, 1, 1500000000, 1500000000, N'DT40', 131)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (179, 3, 121212, 363636, N'1212', 132)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (180, 1, 420000, 420000, N'DT33', 132)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (181, 1, 1500000000, 1500000000, N'DT40', 132)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (182, 3, 121212, 363636, N'1212', 133)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (183, 1, 420000, 420000, N'DT33', 133)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (184, 1, 1500000000, 1500000000, N'DT40', 133)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (185, 3, 121212, 363636, N'1212', 134)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (186, 1, 420000, 420000, N'DT33', 134)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (187, 1, 1500000000, 1500000000, N'DT40', 134)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (188, 3, 121212, 363636, N'1212', 135)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (189, 1, 420000, 420000, N'DT33', 135)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (190, 1, 1500000000, 1500000000, N'DT40', 135)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (191, 3, 121212, 363636, N'1212', 136)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (192, 1, 420000, 420000, N'DT33', 136)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (193, 1, 1500000000, 1500000000, N'DT40', 136)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (194, 3, 121212, 363636, N'1212', 137)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (195, 1, 420000, 420000, N'DT33', 137)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (196, 3, 121212, 363636, N'1212', 138)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (197, 1, 420000, 420000, N'DT33', 138)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (198, 3, 121212, 363636, N'1212', 139)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (199, 1, 420000, 420000, N'DT33', 139)
GO
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (200, 3, 121212, 363636, N'1212', 140)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (201, 1, 420000, 420000, N'DT33', 140)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (202, 3, 121212, 363636, N'1212', 141)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (203, 1, 420000, 420000, N'DT33', 141)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (204, 3, 121212, 363636, N'1212', 142)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (205, 1, 420000, 420000, N'DT33', 142)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (206, 3, 121212, 363636, N'1212', 143)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (207, 1, 420000, 420000, N'DT33', 143)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (208, 3, 121212, 363636, N'1212', 144)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (209, 1, 420000, 420000, N'DT33', 144)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (210, 3, 285000, 855000, N'DT34', 145)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (211, 3, 27800000, 83400000, N'DT24', 145)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (212, 3, 285000, 855000, N'DT34', 146)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (213, 3, 27800000, 83400000, N'DT24', 146)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (214, 1, 200000, 200000, N'DT22', 147)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (215, 1, 720000, 720000, N'DT200', 147)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (216, 1, 11900000, 11900000, N'DT28', 147)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (217, 1, 200000, 200000, N'DT22', 148)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (218, 1, 720000, 720000, N'DT200', 148)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (219, 1, 11900000, 11900000, N'DT28', 148)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (220, 1, 720000, 720000, N'DT200', 149)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (221, 1, 750000, 750000, N'DT35', 149)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (222, 1, 200000, 200000, N'DT22', 149)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (223, 1, 285000, 285000, N'DT34', 149)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (224, 1, 720000, 720000, N'DT200', 150)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (225, 1, 750000, 750000, N'DT35', 150)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (226, 1, 200000, 200000, N'DT22', 150)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (227, 1, 285000, 285000, N'DT34', 150)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (228, 1, 720000, 720000, N'DT200', 151)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (229, 1, 750000, 750000, N'DT35', 151)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (230, 2, 200000, 400000, N'DT22', 151)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (231, 1, 285000, 285000, N'DT34', 151)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (232, 1, 720000, 720000, N'DT200', 152)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (233, 1, 750000, 750000, N'DT35', 152)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (234, 2, 200000, 400000, N'DT22', 152)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (235, 1, 285000, 285000, N'DT34', 152)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (236, 1, 720000, 720000, N'DT200', 153)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (237, 1, 750000, 750000, N'DT35', 153)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (238, 2, 200000, 400000, N'DT22', 153)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (239, 1, 285000, 285000, N'DT34', 153)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (240, 1, 720000, 720000, N'DT200', 154)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (241, 1, 750000, 750000, N'DT35', 154)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (242, 2, 200000, 400000, N'DT22', 154)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (243, 1, 285000, 285000, N'DT34', 154)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (244, 1, 200000, 200000, N'DT22', 155)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (245, 1, 720000, 720000, N'DT200', 155)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (246, 1, 200000, 200000, N'DT22', 156)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (247, 1, 720000, 720000, N'DT200', 156)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (248, 1, 285000, 285000, N'DT34', 157)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (249, 1, 285000, 285000, N'DT34', 158)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (250, 1, 285000, 285000, N'DT34', 159)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (251, 1, 200000, 200000, N'DT22', 159)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (252, 1, 285000, 285000, N'DT34', 160)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (253, 1, 200000, 200000, N'DT22', 160)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (254, 1, 285000, 285000, N'DT34', 161)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (255, 1, 200000, 200000, N'DT22', 161)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (256, 1, 390000, 390000, N'DT32', 161)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (257, 1, 285000, 285000, N'DT34', 162)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (258, 1, 200000, 200000, N'DT22', 162)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (259, 1, 390000, 390000, N'DT32', 162)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (260, 1, 285000, 285000, N'DT34', 163)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (261, 1, 200000, 200000, N'DT22', 163)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (262, 1, 390000, 390000, N'DT32', 163)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (263, 1, 285000, 285000, N'DT34', 164)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (264, 1, 200000, 200000, N'DT22', 164)
INSERT [dbo].[order_detail] ([order_detail_id], [quantity], [price], [total], [product_id], [Order_id]) VALUES (265, 1, 390000, 390000, N'DT32', 164)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (1, CAST(N'2023-07-30' AS Date), 485000, N'X', N'HCM', N'GV', N'GV', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (2, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'h', N'hh', N'hhhh', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (3, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'hhh', N'hh', N'hh', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (4, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'hh', N'hh', N'hhh', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (5, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'hhh', N'hhhh', N'hhh', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (6, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'ưqwqwq', N'qưqwq', N'ưqw', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (7, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'ưqwq', N'ưq', N'ưq', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (8, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'ưqwq', N'ưq', N'ưq', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (9, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'sâsa', N'sấ', N'sassa', N'thanhphuc', 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (10, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'sâsa', N'sấ', N'sassa', N'thanhphuc', 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (11, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'sấ', N'sấ', N'sấ', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (12, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'sấ', N'sấ', N'sấ', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (13, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'sâsa', N'sâsa', N'sa1', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (14, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'sâsa', N'sâsa', N'sa1', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (15, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'', N'', N'', N'thanhphuc', 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (16, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'', N'', N'', N'thanhphuc', 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (17, CAST(N'2023-08-04' AS Date), 1950000, N'N', N'âsa', N'sâsa', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (18, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'âsa', N'sâsa', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (19, CAST(N'2023-08-04' AS Date), 1950000, N'H', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (20, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (21, CAST(N'2023-08-04' AS Date), 1950000, N'H', N'âs', N'âsa', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (22, CAST(N'2023-08-04' AS Date), 1950000, N'H', N'âs', N'âsa', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (23, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'âs', N'ấ', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (24, CAST(N'2023-08-04' AS Date), 1950000, N'H', N'âs', N'ấ', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (25, CAST(N'2023-08-04' AS Date), 1950000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (26, CAST(N'2023-08-04' AS Date), 1950000, N'H', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (27, CAST(N'2023-08-04' AS Date), 3510000, N'H', N'sá', N'sâs', N'á', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (28, CAST(N'2023-08-04' AS Date), 3510000, N'X', N'sá', N'sâs', N'á', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (29, CAST(N'2023-08-04' AS Date), 3510000, N'H', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (30, CAST(N'2023-08-04' AS Date), 3510000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (31, CAST(N'2023-08-05' AS Date), 3510000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (32, CAST(N'2023-08-05' AS Date), 3510000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (33, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (34, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (35, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (36, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (37, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (38, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (39, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'23232', N'3232', N'32323', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (40, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'23232', N'3232', N'32323', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (41, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (42, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (43, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (44, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (45, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (46, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (47, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (48, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 0)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (49, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dewew', N'ewew', N'ewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (50, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dewew', N'ewew', N'ewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (51, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dewew', N'ewew', N'ewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (52, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dewew', N'ewew', N'ewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (53, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (54, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (55, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dsds', N'dsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (56, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dsds', N'dsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (57, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dsds', N'dsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (58, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'dsds', N'dsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (59, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (60, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (61, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'âs', N'âsa', N'sá', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (62, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'âs', N'âsa', N'sá', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (63, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sá', N'sấ', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (64, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sá', N'sấ', N'sấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (65, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'âs', N'âs', N'âs', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (66, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'âs', N'âs', N'âs', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (67, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwq', N'ưqwq', N'ưqwqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (68, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwq', N'ưqwq', N'ưqwqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (69, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sâs', N'âs', N'âsas', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (70, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sâs', N'âs', N'âsas', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (71, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sdsds', N'dsds', N'dsds', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (72, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'sdsds', N'dsds', N'dsds', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (73, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'qưqwqw', N'ưqw', N'ưqwqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (74, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'qưqwqw', N'ưqw', N'ưqwqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (75, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqw', N'qưq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (76, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqw', N'qưq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (77, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ewew', N'eưew', N'ewewewe', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (78, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ewew', N'eưew', N'ewewewe', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (79, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'1212121', N'21212', N'212', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (80, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'1212121', N'21212', N'212', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (81, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqw', N'ưq', N'ưqư', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (82, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqw', N'ưq', N'ưqư', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (83, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqwq', N'ưqwq', N'ưqwq', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (84, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqwq', N'ưqwq', N'ưqwq', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (85, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqwq', N'ưqwq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (86, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'ưqwqwq', N'ưqwq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (87, CAST(N'2023-08-05' AS Date), 2730000, N'X', N's', N'qưqw', N'q3', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (88, CAST(N'2023-08-05' AS Date), 2730000, N'X', N's', N'qưqw', N'q3', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (89, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'23232', N'3232', N'323', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (90, CAST(N'2023-08-05' AS Date), 2730000, N'X', N'23232', N'3232', N'323', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (91, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'ưq', N'qưqw', N'qưq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (92, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'ưq', N'qưqw', N'qưq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (93, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (94, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (95, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'qưqw', N'qưqwqw', N'ưq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (96, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'qưqw', N'qưqwqw', N'ưq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (97, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'âs', N'âs', N'a', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (98, CAST(N'2023-08-05' AS Date), 3870000, N'X', N'âs', N'âs', N'a', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (99, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ss', N'sâs', N'ấ', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (100, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ss', N'sâs', N'ấ', NULL, 1)
GO
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (101, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ewewew', N'eưewe', N'ưewew', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (102, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ewewew', N'eưewe', N'ưewew', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (103, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'qưqwq', N'ưqw', N'ưqwqw', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (104, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'qưqwq', N'ưqw', N'ưqwqw', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (105, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưqwq', N'ưqwq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (106, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưqwq', N'ưqwq', N'ưqwq', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (107, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưqwqw', N'qưqw', N'qư', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (108, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưqwqw', N'qưqw', N'qư', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (109, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'2323', N'23232', N'323', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (110, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'2323', N'23232', N'323', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (111, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưewew', N'ewew', N'ewewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (112, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'ưewew', N'ewew', N'ewewe', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (113, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'sdsds', N'dsđsds', N'dsdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (114, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'sdsds', N'dsđsds', N'dsdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (115, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'âsas', N'âs', N'âsa', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (116, CAST(N'2023-08-05' AS Date), 1620000, N'X', N'âsas', N'âs', N'âsa', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (117, CAST(N'2023-08-05' AS Date), 485000, N'X', N'qưq', N'ưqw', N'qưqw', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (118, CAST(N'2023-08-05' AS Date), 485000, N'X', N'qưq', N'ưqw', N'qưqw', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (119, CAST(N'2023-08-05' AS Date), 485000, N'X', N'ưqwqw', N'ưqwqw', N'2121', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (120, CAST(N'2023-08-05' AS Date), 485000, N'X', N'ưqwqw', N'ưqwqw', N'2121', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (121, CAST(N'2023-08-05' AS Date), 1055000, N'X', N'qưq', N'qưqw', N'qưq', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (122, CAST(N'2023-08-05' AS Date), 1055000, N'X', N'qưq', N'qưqw', N'qưq', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (123, CAST(N'2023-08-05' AS Date), 13285000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (124, CAST(N'2023-08-05' AS Date), 13285000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (125, CAST(N'2023-08-05' AS Date), 0, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (126, CAST(N'2023-08-05' AS Date), 0, N'X', N'', N'', N'', NULL, 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (127, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (128, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (129, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'sds', N'dsdsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (130, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'sds', N'dsdsd', N'sdsd', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (131, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'ada', N'đa', N'adad', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (132, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'ada', N'đa', N'adad', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (133, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (134, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (135, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (136, CAST(N'2023-08-05' AS Date), 1500783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (137, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (138, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (139, CAST(N'2023-08-05' AS Date), 783636, N'X', N'sds', N'dsd', N'sds', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (140, CAST(N'2023-08-05' AS Date), 783636, N'X', N'sds', N'dsd', N'sds', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (141, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (142, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (143, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (144, CAST(N'2023-08-05' AS Date), 783636, N'X', N'', N'', N'', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (145, CAST(N'2023-08-05' AS Date), 84255000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (146, CAST(N'2023-08-05' AS Date), 84255000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (147, CAST(N'2023-08-05' AS Date), 12820000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (148, CAST(N'2023-08-05' AS Date), 12820000, N'X', N'HCM', N'GV', N'P4', NULL, 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (149, CAST(N'2023-08-09' AS Date), 1955000, N'X', N'TP.HCM', N'GÒ VẤP', N'P4', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (150, CAST(N'2023-08-09' AS Date), 1955000, N'X', N'TP.HCM', N'GÒ VẤP', N'P4', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (151, CAST(N'2023-08-09' AS Date), 2155000, N'X', N'ưew', N'ewe', N'ưew', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (152, CAST(N'2023-08-09' AS Date), 2155000, N'X', N'ưew', N'ewe', N'ưew', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (153, CAST(N'2023-08-09' AS Date), 2155000, N'X', N'', N'', N'', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (154, CAST(N'2023-08-09' AS Date), 2155000, N'X', N'', N'', N'', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (155, CAST(N'2023-08-10' AS Date), 920000, N'X', N'sấ', N'sấ', N'sâsas', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (156, CAST(N'2023-08-10' AS Date), 920000, N'X', N'sấ', N'sấ', N'sâsas', N'thanhphuc', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (157, CAST(N'2023-08-10' AS Date), 285000, N'X', N'qưqwq', N'ưqw', N'qưqwqw', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (158, CAST(N'2023-08-10' AS Date), 285000, N'X', N'qưqwq', N'ưqw', N'qưqwqw', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (159, CAST(N'2023-08-10' AS Date), 485000, N'X', N'HCM', N'GV', N'P4', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (160, CAST(N'2023-08-10' AS Date), 485000, N'X', N'HCM', N'GV', N'P4', N'thanhphuc', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (161, CAST(N'2023-08-11' AS Date), 875000, N'H', N'HCM', N'GV', N'P4', N'hniwwows', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (162, CAST(N'2023-08-11' AS Date), 875000, N'X', N'HCM', N'GV', N'P4', N'hniwwows', 2)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (163, CAST(N'2023-08-11' AS Date), 875000, N'N', N'HCM', N'GV', N'P4', N'yaqmsydx', 1)
INSERT [dbo].[Orders] ([Order_id], [Order_date], [total], [status], [province], [district], [ward], [username], [payment]) VALUES (164, CAST(N'2023-08-11' AS Date), 875000, N'H', N'HCM', N'GV', N'P4', N'yaqmsydx', 1)
GO
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'1212', N'ewewewdđưqwqwq', N'693ceea5.jpg', 121212, 212, 0, 0, NULL, 3, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT01', N'Xiaomi note 15', N'f8429dc.png', 9990000, 1005, 0, 0, N'Xiaomi Redmi Note 12 8GB/128GB - ĐỘC QUYỀN là mẫu điện thoại tầm trung vừa được ra mắt tại thị trường Việt Nam, máy thu hút sự chú ý đến từ người dùng nhờ được trang bị con chip Snapdragon 685 và camera 50 MP nổi bật trong phân khúc.', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT03', N'Samsung Galaxy A23', N'samsung-galaxy-a23-cam-thumb-600x600.jpg', 46900000, 120, 0, 12, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT04', N'Samsung Galaxy S20 FE', N'samsung-galaxy-s20-fan-edition-xanh-la-thumbnew-600x600.png', 9400000, 120, 0, 1, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT05', N'Samsung Galaxy S23+ ', N'samsung-galaxy-s23-plus-600x600.jpg', 21000000, 120, 0, 2, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT06', N'Samsung Galaxy Z Fold4 ', N'samsung-galaxy-z-fold4-kem-256gb-600x600.jpg', 35000000, 120, 0, 1, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT07', N'Samsung Galaxy A04s', N'samsung-galaxy-a04s-thumb-den-600x600.jpg', 3690000, 120, 0, 1, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT08', N'Samsung Galaxy S22 ', N'Galaxy-S22-Ultra-Black-600x600.jpg', 23900000, 120, 0, 11, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT09', N'Samsung Galaxy S23 5G', N'samsung-galaxy-s23-600x600.jpg', 17900000, 120, 0, 1, N'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét.', 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT10', N'OPPO Find N2 Flip 5G', N'oppo-n2-flip-den-thumb-600x600.jpg', 17900000, 120, 0, 1, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.
', 1, 3)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT11', N'OPPO Reno8 T 5G', N'oppo-reno8t-vang1-thumb-600x600.png', 10990000, 120, 0, 1, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.
', 1, 3)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT12', N'OPPO Reno8 series', N'oppo-reno8-pro-thumb-xanh-1-600x600.jpg', 17900000, 120, 0, 11, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.
', 1, 3)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT13', N'OPPO Find X5 Pro 5G', N'oppo-find-x5-pro-den-thumb-600x600.jpg', 19900000, 120, 0, 11, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.
', 1, 3)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT14', N'OPPO Reno6 Pro 5G', N'oppo-reno6-pro-grey-600x600.jpg', 13900000, 120, 0, 1, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.
', 1, 3)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT15', N'iPhone 14 Pro Max', N'iphone-14-pro-max-den-thumb-600x600.jpg', 18900000, 120, 0, 1, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT16', N'iPhone 14 Pro', N'iphone-14-pro-vang-thumb-600x600.jpg', 15900000, 120, 0, 11, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT17', N'iPhone 11', N'iphone-xi-den-600x600.jpg', 15900000, 120, 0, 11, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT18', N'iPhone 14', N'iPhone-14-thumb-trang-600x600.jpg', 13900000, 120, 0, 1, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT19', N'iPhone 14 Plus', N'iPhone-14-plus-thumb-den-600x600.jpg', 21900000, 120, 0, 1, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT20', N'Xiaomi Redmi 12C', N'xiaomi-redmi-12c-grey-thumb-600x600.jpg', 21900000, 120, 0, 11, N'Xiaomi Redmi Note 12 8GB/128GB - ĐỘC QUYỀN là mẫu điện thoại tầm trung vừa được ra mắt tại thị trường Việt Nam, máy thu hút sự chú ý đến từ người dùng nhờ được trang bị con chip Snapdragon 685 và camera 50 MP nổi bật trong phân khúc.', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT200', N'Bàn phím Bluetooth A4tech FBX51C', N'ban-phim-bluetooth-a4tech-fbx51c-thumb-1-600x600.jpg', 720000, 1000, 0, 0, N'', 5, 9)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT21', N'Xiaomi Redmi Note 12', N'xiaomi-redmi-note-12-4g-mono-den-600x600.jpg', 900000, 120, 0, 11, N'Xiaomi Redmi Note 12 8GB/128GB - ĐỘC QUYỀN là mẫu điện thoại tầm trung vừa được ra mắt tại thị trường Việt Nam, máy thu hút sự chú ý đến từ người dùng nhờ được trang bị con chip Snapdragon 685 và camera 50 MP nổi bật trong phân khúc.', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT22', N'Xiaomi Redmi A1', N'Xiaomi-Redmi-A1-thumb-xanh-duong-600x600.jpg', 200000, 120, 0, 11, N'Xiaomi Redmi Note 12 8GB/128GB - ĐỘC QUYỀN là mẫu điện thoại tầm trung vừa được ra mắt tại thị trường Việt Nam, máy thu hút sự chú ý đến từ người dùng nhờ được trang bị con chip Snapdragon 685 và camera 50 MP nổi bật trong phân khúc.', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT23', N'MacBook Air M1 2020', N'macbook-air-m1-2020-gray-600x600.jpg', 18490000, 120, 0, 11, N'Mo ta', 2, 5)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT24', N'MacBook Air M2', N'apple-macbook-air-m2-2022-bac-600x600.jpg', 27800000, 120, 0, 1, N'Mo ta', 2, 5)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT25', N'Asus TUF Gaming F15 FX506LHB', N'asus-tuf-gaming-fx506lhb-i5-hn188w-(54).jpg', 19900000, 120, 0, 1, N'Mo ta', 2, 6)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT26', N'Asus Vivobook X415EA i3 1115G4 (EK2034W)', N'asus-vivobook-x415ea-i3-ek2034w-thumb-laptop-600x600.jpg', 11900000, 120, 0, 1, N'Mo ta', 2, 6)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT27', N' Asus VivoBook 15X OLED A1503ZA', N'asus-vivobook-15x-oled-a1503za-i5-l1290w-040722-050332-600x600.jpg', 20900000, 120, 0, 1, N'Mo ta', 2, 6)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT28', N'Lenovo Yoga Tab 11', N'lenovo-yoga-tab-11-thumb-600x600.jpg', 11900000, 120, 0, 1, N'Mo ta', 3, 7)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT29', N'Lenovo Tab M10 (Gen 3)', N'lenovo-tab-m10-gen-3-1-2-600x600.jpg', 4590000, 120, 0, 1, N'Mo ta', 3, 7)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT30', N'iPad 9 WiFi', N'iPad-9-wifi-trang-600x600 (1).jpg', 7900000, 120, 0, 1, N'Mo ta', 3, 8)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT31', N'iPad 10 WiFi', N'iPad-gen-10-1-600x600.jpg', 11900000, 120, 0, 11, N'Mo ta', 3, 8)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT32', N'Chuột Không dây Logitech M190', N'chuot-khong-day-logitech-m190-thumb3-600x600.png', 390000, 120, 0, 11, N'Mo ta', 4, 9)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT33', N'Logitech G102 Gen2 Lightsync', N'chuot-gaming-logitech-g102-gen2-lightsync-01-600x600.jpg', 420000, 120, 0, 111, N'Mo ta', 4, 9)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT34', N'Chuột Không dây Logitech M185', N'chuot-khong-day-logitech-m185-thumb2-1-600x600.png', 285000, 120, 0, 1, N'Mo ta', 4, 9)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT35', N'Razer DeathAdder Essential', N'chuot-co-day-gaming-razer-deathadder-essential-thumb-600x600.png', 750000, 120, 0, 1, N'Mo ta', 4, 10)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT36', N'Xiaomi 13', N'xiaomi-13-thumb-den-600x600.jpg', 18900000, 200, 0, 1, N'Xiaomi', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT37', N'Xiaomi Redmi Note 12 Pro', N'xiaomi-redmi-note-12-pro-5g-momo-1-600x600.jpg', 9000000, 12, 0, 1, N'Xiaomi', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT38', N'Xiaomi Redmi Note 12 S', N'xiaomi-redmi-note12s-den-thumb-600x600.jpg', 12000000, 12, 0, 1, N'Xiaomi', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT39', N'Xiaomi Redmi A2+', N'xiaomi-redmi-note-12-plus-xanh-duong-thumb-600x600.jpg', 2400000, 100, 0, 1, N'Xiaomi', 1, 4)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT40', N'Bàn Phím Cơ Có Dây Gaming', N'ban-phim-co-co-day-gaming-corsair-k63-den-thumb-600x600.png', 1500000000, 13, 0, 0, N'', 5, 10)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT60', N'iPhone 14 Plus', N'iPhone-14-plus-thumb-xanh-1-600x600.jpg', 19900000, 123, 0, 0, N'Iphone', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [price], [qty], [discount], [sold_quantity], [description], [category_id], [brand_id]) VALUES (N'DT89', N'Đồng hồ thông minh Apple Watch SE', N'apple-watch-se-2022-40-mm-vien-nhom-tn-600x600.jpg', 5500000, 12, 0, 0, N'Trong sự kiện Far Out 2022, nhà Táo Khuyết đã mang đến hàng loạt sản phẩm mới trong đó có đồng hồ thông minh Apple Watch SE 2022 GPS 40mm. Mẫu smartwatch giá rẻ mới nhất của Apple này hứa hẹn sẽ khiến cho các iFans đứng ngồi không yên khi sở hữu nhiều tính năng hấp dẫn.', 1008, 1012)
GO
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([id], [name]) VALUES (N'STAF', N'Staffs')
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
USE [master]
GO
ALTER DATABASE [csdlasmjava66] SET  READ_WRITE 
GO

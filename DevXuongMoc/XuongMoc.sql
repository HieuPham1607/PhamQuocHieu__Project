USE [XuongMoc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/18/2025 1:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN_LOG]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN_LOG](
	[LOG_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATUS] [int] NULL,
	[SESSION_ID] [nvarchar](150) NULL,
	[APP_CODE] [nvarchar](150) NULL,
	[THREAD_ID] [nvarchar](150) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[ADMIN_USER_ID] [int] NULL,
	[USER_LOGIN] [nvarchar](150) NULL,
	[USER_NAME] [nvarchar](250) NULL,
	[IP_ADDRESS] [nvarchar](50) NULL,
	[ACTION_CODE] [nvarchar](250) NULL,
	[ACTION_NAME] [nvarchar](250) NULL,
	[MENU_CODE] [nvarchar](150) NULL,
	[MENU_NAME] [nvarchar](250) NULL,
	[WEBPAGES_ACTION_ID] [int] NULL,
	[ACTION_TYPE] [int] NULL,
	[OBJECT_ID] [int] NULL,
	[CONTENT] [nvarchar](max) NULL,
	[DESCRIPTION] [nvarchar](550) NULL,
	[LOG_LEVEL] [int] NULL,
	[ERROR_CODE] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMIN_USER]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN_USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCOUNT] [nvarchar](200) NULL,
	[PASSWORD] [nvarchar](200) NULL,
	[MA_NHAN_SU] [int] NULL,
	[NAME] [nvarchar](100) NULL,
	[PHONE] [nvarchar](30) NULL,
	[EMAIL] [nvarchar](500) NULL,
	[AVATAR] [nvarchar](200) NULL,
	[ID_PHONG_BAN] [int] NULL,
	[NGAY_TAO] [datetime] NULL,
	[NGUOI_TAO] [nvarchar](200) NULL,
	[NGAY_CAP_NHAT] [datetime] NULL,
	[NGUOI_CAP_NHAT] [nvarchar](200) NULL,
	[SESSION_TOKEN] [nvarchar](500) NULL,
	[SALT] [char](3) NULL,
	[IS_ADMIN] [bit] NULL,
	[TRANG_THAI] [int] NULL,
	[IS_DELETE] [bit] NULL,
 CONSTRAINT [PK__ADMIN_US__3214EC2739901ACE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANNER]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANNER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IMAGE] [nvarchar](255) NULL,
	[TITLE] [nvarchar](255) NULL,
	[SUB_TITLE] [nvarchar](255) NULL,
	[URLS] [nvarchar](255) NULL,
	[ORDERS] [int] NOT NULL,
	[TYPE] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[NOTES] [nvarchar](max) NULL,
	[STATUS] [tinyint] NOT NULL,
	[ISDELETE] [bit] NOT NULL,
 CONSTRAINT [PK__BANNER__3214EC274D7E8BD5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Total] [decimal](18, 0) NULL,
	[ProductId] [int] NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](200) NULL,
	[ICON] [nvarchar](200) NULL,
	[MATE_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[SLUG] [nvarchar](500) NULL,
	[ORDERS] [int] NULL,
	[PARENTID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[NOTES] [ntext] NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__PRODUCT___A88186B13985BFD1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTACT]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTACT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[PHONE] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[CONTENT] [ntext] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK_CONTACT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[USERNAME] [nvarchar](50) NOT NULL,
	[PASSWORD] [nvarchar](320) NULL,
	[ADDRESS] [nvarchar](500) NULL,
	[EMAIL] [nvarchar](150) NULL,
	[PHONE] [nvarchar](50) NULL,
	[AVATAR] [nvarchar](250) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
 CONSTRAINT [PK__Customer__3214EC2710D9DA7A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXTENSION]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXTENSION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](200) NULL,
	[ICON] [nvarchar](200) NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[SLUG] [nvarchar](500) NULL,
	[ORDERS] [int] NULL,
	[PARENTID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[NOTES] [ntext] NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__PRODUCT___EXTENSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INFOR_COMPANY]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFOR_COMPANY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[LOGO] [varchar](500) NULL,
	[PHONE] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[YOUTUBE] [nvarchar](500) NULL,
	[INSTAGRAM] [nvarchar](500) NULL,
	[FACEBOOK] [nvarchar](500) NULL,
	[CREATED_DATE] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
 CONSTRAINT [PK_INFOR_COMPANY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTRODUCTIONS]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTRODUCTIONS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NOT NULL,
	[IMAGE] [nvarchar](255) NOT NULL,
	[ORDERS] [int] NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[HOME] [tinyint] NULL,
	[TYPE] [tinyint] NULL,
	[PARENTID] [int] NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](4000) NULL,
	[SLUG] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[CONTENT] [nvarchar](max) NULL,
	[STATUS] [tinyint] NOT NULL,
	[ISDELETE] [bit] NOT NULL,
 CONSTRAINT [PK__INTRODUC__3214EC2715DFAD94] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIAL]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIAL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](200) NULL,
	[ICON] [nvarchar](200) NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[SLUG] [nvarchar](500) NULL,
	[ORDERS] [int] NULL,
	[PARENTID] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[NOTES] [ntext] NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__MATERIAL___EXTENSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [nvarchar](10) NULL,
	[TITLE] [nvarchar](200) NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[CONTENT] [ntext] NULL,
	[IMAGE] [nvarchar](max) NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[MAIN_KEYWORD] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[SLUG] [nvarchar](500) NULL,
	[VIEWS] [int] NULL,
	[LIKES] [int] NULL,
	[STAR] [float] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__NEWS__3214EC27E639B94D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [bigint] NOT NULL,
	[IDORDER] [bigint] NULL,
	[IDPRODUCT] [int] NULL,
	[PRICE] [decimal](18, 0) NULL,
	[QTY] [int] NULL,
	[TOTAL] [decimal](18, 0) NULL,
	[RETURN_QTY] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC270B86E2BE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [bigint] NOT NULL,
	[IDORDERS] [bigint] NOT NULL,
	[ORDERS_DATE] [datetime] NULL,
	[IDCUSTOMER] [bigint] NOT NULL,
	[IDPAYMENT] [bigint] NULL,
	[TOTAL_MONEY] [decimal](18, 0) NULL,
	[NOTES] [ntext] NULL,
	[NAME_RECIEVER] [nvarchar](250) NULL,
	[ADDRESS] [nvarchar](500) NULL,
	[EMAIL] [nvarchar](150) NULL,
	[PHONE] [nvarchar](50) NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
 CONSTRAINT [PK__Orders__3214EC2702CFB7C8] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTNER]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTNER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](255) NULL,
	[LOGO] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[ORDERS] [tinyint] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[CONTENT] [nvarchar](max) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[ID] [bigint] NOT NULL,
	[NAME] [nvarchar](250) NULL,
	[NOTES] [ntext] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CID] [int] NULL,
	[CODE] [nvarchar](10) NULL,
	[TITLE] [nvarchar](255) NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[CONTENT] [nvarchar](max) NULL,
	[IMAGE] [nvarchar](255) NULL,
	[META_TITLE] [nvarchar](500) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[SLUG] [nvarchar](500) NULL,
	[PRICE_OLD] [decimal](18, 0) NULL,
	[PRICE_NEW] [decimal](18, 0) NULL,
	[SIZE] [nvarchar](500) NULL,
	[VIEWS] [int] NULL,
	[LIKES] [int] NULL,
	[STAR] [float] NULL,
	[HOME] [tinyint] NULL,
	[HOT] [tinyint] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__PRODUCT__3214EC27E639B94D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_EXTENSIONS]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_EXTENSIONS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[EID] [int] NULL,
	[CONTENT] [ntext] NULL,
 CONSTRAINT [PK_PRODUCTEXTENSIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_IMAGES]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_IMAGES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[IMAGE] [nvarchar](500) NULL,
 CONSTRAINT [PK_PRODUCTIMAGES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_MATERIALS]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_MATERIALS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[MID] [int] NULL,
 CONSTRAINT [PK_PRODUCTMATERIALS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SLIDES]    Script Date: 2/18/2025 1:53:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SLIDES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IMAGE] [nvarchar](255) NULL,
	[TITLE] [nvarchar](255) NULL,
	[SUB_TITLE] [nvarchar](255) NULL,
	[URLS] [nvarchar](255) NULL,
	[ORDERS] [int] NOT NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](255) NULL,
	[ADMIN_UPDATED] [nvarchar](255) NULL,
	[NOTES] [nvarchar](max) NULL,
	[STATUS] [tinyint] NOT NULL,
	[ISDELETE] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN_USER] ON 

INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (1, N'Administrator', N'fd52e0d13bec72fc9029a5e93389a241292c30a3761aeeb578ccb77d9282e6c3', NULL, N'Phòng Đào Tạo', N'(+84) 24.3833.0708', NULL, NULL, NULL, CAST(N'2020-07-19T00:00:00.000' AS DateTime), NULL, CAST(N'2020-07-28T11:30:40.753' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (2, N'ChungTrinh', N'411fe1758a2c6bdf92dbad3f31c7ebe8966a630367ea4b1a325766a6af4d47f3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-07-19T00:00:00.000' AS DateTime), NULL, CAST(N'2020-07-28T11:48:21.627' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (4, N'admin', N'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', NULL, NULL, NULL, N'admin@gmail.com', NULL, NULL, CAST(N'2020-08-01T09:31:41.407' AS DateTime), NULL, CAST(N'2020-08-01T09:31:41.407' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (5, N'Phamhiuhiu01', N'12345a.', NULL, NULL, NULL, N'Phamhiuhiu01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADMIN_USER] OFF
GO
SET IDENTITY_INSERT [dbo].[BANNER] ON 

INSERT [dbo].[BANNER] ([ID], [IMAGE], [TITLE], [SUB_TITLE], [URLS], [ORDERS], [TYPE], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (1, N'/Content/Uploads/images/Banner/banner.jpg', N'THẾ GIỚI NỘI THẤT SỐ 2 VIỆT NAM', N'Hoàng Hoan', N'/lien-he', 1, NULL, CAST(N'2020-08-07T00:00:00.000' AS DateTime), CAST(N'2020-08-07T00:00:00.000' AS DateTime), NULL, NULL, N'<p>Xưởng Mộc Ho&agrave;n Hoan với sứ mệnh&nbsp;l&agrave; kết hợp h&agrave;i h&ograve;a giữa &yacute; tưởng v&agrave; mong muốn của kh&aacute;ch h&agrave;ng, đem lại những sản phẩm tinh tế, h&agrave;i h&ograve;a v&agrave; tiết kiệm nhất d&agrave;nh cho kh&aacute;ch h&agrave;ng.</p>', 1, 0)
INSERT [dbo].[BANNER] ([ID], [IMAGE], [TITLE], [SUB_TITLE], [URLS], [ORDERS], [TYPE], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (2, N'/Content/Uploads/images/Banner/banner.jpg', N'THẾ GIỚI NỘI THẤT SỐ 1 VIỆT NAM', N'Hoàng Hoan', N'/lien-he', 2, NULL, CAST(N'2020-08-03T00:00:00.000' AS DateTime), CAST(N'2020-08-03T00:00:00.000' AS DateTime), NULL, NULL, N'<p>Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; kết hợp h&agrave;i h&ograve;a giữa &yacute; tưởng v&agrave; mong muốn của kh&aacute;ch h&agrave;ng, đem lại những ph&uacute;t gi&acirc;y thư gi&atilde;n tuyệt vời b&ecirc;n gia đ&igrave;nh v&agrave; những người th&acirc;n y&ecirc;u.</p>
', 1, 0)
INSERT [dbo].[BANNER] ([ID], [IMAGE], [TITLE], [SUB_TITLE], [URLS], [ORDERS], [TYPE], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (3, N'/Content/Uploads/images/Banner/banner.jpg', N'THẾ GIỚI NỘI THẤT SỐ 1 VIỆT NAM', N'Hoàng Hoan', N'/lien-he', 3, NULL, CAST(N'2020-08-03T00:00:00.000' AS DateTime), CAST(N'2020-08-03T00:00:00.000' AS DateTime), NULL, NULL, N'<p>Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; kết hợp h&agrave;i h&ograve;a giữa &yacute; tưởng v&agrave; mong muốn của kh&aacute;ch h&agrave;ng, đem lại những ph&uacute;t gi&acirc;y thư gi&atilde;n tuyệt vời b&ecirc;n gia đ&igrave;nh v&agrave; những người th&acirc;n y&ecirc;u.</p>
', 1, 0)
SET IDENTITY_INSERT [dbo].[BANNER] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (0, N'Bàn uống nước 1', N'/Images/products/phong-khach/001.jpg', 26, CAST(120000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), 9, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (1, N'Bàn tiếp khách', N'/Images/products/phong-khach/001.jpg', 8, CAST(9999000 AS Decimal(18, 0)), CAST(9999000 AS Decimal(18, 0)), 8, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (2, N'Giường hộp ', N'/Images/products/phong-ngu/003.jpg', 21, CAST(5999000 AS Decimal(18, 0)), CAST(5999000 AS Decimal(18, 0)), 10, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (3, N'Kệ TV', N'/Images/products/phong-khach/002.jpg', 5, CAST(12899000 AS Decimal(18, 0)), CAST(64495000 AS Decimal(18, 0)), 14, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (4, N'Cầu thang', N'/Images/products/cau-thang/019.jpg', 2, CAST(30000000 AS Decimal(18, 0)), CAST(30000000 AS Decimal(18, 0)), 30, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (5, N'Tủ âm tường', N'/Images/products/phong-tam/007.jpg', 1, CAST(8900000 AS Decimal(18, 0)), CAST(8900000 AS Decimal(18, 0)), 24, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (6, N'Giường châu âu', N'/Images/products/phong-ngu/013.jpg', 1, CAST(22999000 AS Decimal(18, 0)), CAST(22999000 AS Decimal(18, 0)), 19, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (7, N'Bàn ăn nhà bếp', N'/Images/products/phong-bep/004.jpg', 1, CAST(9899000 AS Decimal(18, 0)), CAST(9899000 AS Decimal(18, 0)), 11, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (8, N'Kệ đầu giường', N'/Images/products/phong-ngu/004.jpg', 1, CAST(18899000 AS Decimal(18, 0)), CAST(18899000 AS Decimal(18, 0)), 18, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (9, N'Kệ để đồ', N'/Images/products/phong-khach/008.jpg', 1, CAST(12999000 AS Decimal(18, 0)), CAST(12999000 AS Decimal(18, 0)), 13, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (10, N'Bàn uống nước 1', N'/Images/products/phong-khach/001.jpg', 1, CAST(120000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), 9, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (11, N'Giường hộp ', N'/Images/products/phong-ngu/003.jpg', 1, CAST(5999000 AS Decimal(18, 0)), CAST(5999000 AS Decimal(18, 0)), 10, N'{"Id":1,"Name":"hiu","Username":"hiu","Password":"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92","Address":null,"Email":"hiu@gmail.com","Phone":null,"Avatar":null,"CreatedDate":"2025-02-11T10:05:54.523","UpdatedDate":"2025-02-11T10:05:54.523","CreatedBy":0,"UpdatedBy":0,"Isdelete":0,"Isactive":1,"Orders":[]}')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (12, N'Bàn uống nước 1', N'/Images/products/phong-khach/001.jpg', 3, CAST(120000 AS Decimal(18, 0)), CAST(360000 AS Decimal(18, 0)), 9, N'1')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (13, N'Giường hộp ', N'/Images/products/phong-ngu/003.jpg', 2, CAST(5999000 AS Decimal(18, 0)), CAST(11998000 AS Decimal(18, 0)), 10, N'1')
INSERT [dbo].[Cart] ([id], [Name], [Image], [Quantity], [Price], [Total], [ProductId], [UserId]) VALUES (14, N'Bàn ăn nhà bếp', N'/Images/products/phong-bep/004.jpg', 1, CAST(9899000 AS Decimal(18, 0)), CAST(9899000 AS Decimal(18, 0)), 11, N'1')
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (7, N'PHÒNG KHÁCH', N'/Content/Uploads/images/danh-muc/icon-phong-khach.jpg', NULL, N'nội thất phòng khách giá tốt', N'Nội thất phòng khách giá tốt sẽ tiết kiệm chi phí rất lớn dành cho cá nhân, doanh nghiệp đang có nhu cầu làm nội thất. Nội thất tại Xưởng Hoàng Hoan luôn hỗ trợ thiết kế, thi công, bảo hành với dịch vụ tốt nhất để có được những sản phẩm nội thất phòng khách ưng ý.', N'phong-khach', 1, NULL, CAST(N'2020-08-07T00:00:00.000' AS DateTime), CAST(N'2020-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (8, N'PHÒNG NGỦ', N'/Content/Uploads/images/danh-muc/icon-phong-khach.jpg', NULL, N'nội thất phòng ngủ', N'Xưởng mộc giá tốt cung cấp hơn 200 thiết kế nội thất phòng ngủ với phong cách hiện đại, thi công tại xưởng và bảo hành 1 năm. Với nhiều hạng mục như nội thất phòng ngủ cho bé, nội thất phòng ngủ vợ chồng mới cưới,...', N'phong-ngu', 2, NULL, CAST(N'2020-08-07T00:00:00.000' AS DateTime), CAST(N'2020-08-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (11, N'PHÒNG TẮM', N'/Content/Uploads/images/danh-muc/icon-phong-tam.png', NULL, N'nội thất phòng tắm', N'Xưởng Mộc giá tốt chuyên cung cấp nội thất phòng tắm với chất liệu gỗ cao cấp được nhập khẩu trực tiếp từ nhiều nước, hơn 200 mẫu thiết kế nội thất phòng tắm giúp khách hàng dễ dàng lựa chọn sản phẩm phù hợp trên toàn quốc.', N'phong-tam', 4, NULL, CAST(N'2020-08-07T08:51:47.123' AS DateTime), CAST(N'2020-08-07T08:51:47.123' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (12, N'TRẺ EM', N'/images/20230503_192924.jpg', NULL, N'đồ chơi trẻ em bằng gỗ', N'xưởng mộc giá tốt chuyên cung cấp đồ chơi trẻ em bằng gỗ với chất lượng cao cấp, an toàn cho bé. Hơn 20 năm sản xuất các sản phẩm nội thất cho bé, chúng tôi cam kết những sản phẩm đồ chơi gỗ tốt nhất thị trường.', N'tre-em', 5, NULL, CAST(N'2020-08-07T09:00:12.947' AS DateTime), CAST(N'2020-08-07T09:00:12.947' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (13, N'VĂN PHÒNG', N'/Content/Uploads/images/danh-muc/icon-van-phong.png', NULL, N'nội thất văn phòng', N'Nội thất văn phòng Hoàng Hoan sản xuất trực tiếp tại xưởng với hơn 20 năm kinh nghiệm và nhiều đối tác lớn, chúng tôi tự tin đem lại những sản phẩm nội thất văn phòng đẹp, bền, tiết kiệm nhất.', N'van-phong', 6, NULL, CAST(N'2020-08-07T09:02:18.780' AS DateTime), CAST(N'2020-08-07T09:02:18.780' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (14, N'CẦU THANG', N'/Content/Uploads/images/danh-muc/icon-cau-thang.png', NULL, N'thi công cầu thang gỗ', N'Xưởng mộc Hoàng Hoan chuyên thi công cầu thang gỗ với chi phí tốt nhất. Với hơn 200 mẫu cầu thang gỗ bắt mắt, chúng tôi sẽ đem lại không gian tuyệt vời cho ngôi nhà của bạn.', N'cau-thang', 7, NULL, CAST(N'2020-08-07T09:04:36.937' AS DateTime), CAST(N'2020-08-07T09:04:36.937' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (15, N'TRANG TRÍ', N'/Content/Uploads/images/danh-muc/icon-do-trang-tri.png', NULL, N'nội thất trang trí', N'Xưởng mộc hoàng hoan chuyên thi công nội thất trang trí với hơn 2000 mẫu mã sản phẩm thiết kế đa dạng. Được sản xuất trực tiếp tại xưởng các sản phẩm nội thất trang trí sẽ được bảo hành 1 năm và chi phí rẻ nhất.', N'trang-tri', 8, NULL, CAST(N'2020-08-07T09:06:19.113' AS DateTime), CAST(N'2020-08-07T09:06:19.113' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [ICON], [MATE_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (22, N'Phòng game', N'/images/20230503_192924.jpg', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-12-23T09:34:10.510' AS DateTime), CAST(N'2024-12-23T09:34:10.510' AS DateTime), NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[CONTACT] ON 

INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (1, NULL, NULL, N'0978611889', NULL, NULL, CAST(N'2020-08-04T11:15:09.700' AS DateTime), CAST(N'2020-08-04T11:15:09.700' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (2, N'Trịnh Văn Chung', N'chungtrinhj@gmail.com', N'0978611889', NULL, N'Test Liên hệ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (3, NULL, NULL, N's', NULL, NULL, CAST(N'2020-08-11T18:37:45.427' AS DateTime), CAST(N'2020-08-11T18:37:45.427' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (4, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-21T01:25:47.337' AS DateTime), CAST(N'2020-08-21T01:25:47.337' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (5, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-21T16:13:59.327' AS DateTime), CAST(N'2020-08-21T16:13:59.327' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (6, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-25T16:37:08.700' AS DateTime), CAST(N'2020-08-25T16:37:08.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (7, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-29T08:28:02.683' AS DateTime), CAST(N'2020-08-29T08:28:02.683' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-30T13:20:38.777' AS DateTime), CAST(N'2020-08-30T13:20:38.777' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (9, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-08-30T13:20:42.230' AS DateTime), CAST(N'2020-08-30T13:20:42.230' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-05T18:52:47.803' AS DateTime), CAST(N'2020-09-05T18:52:47.803' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (11, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-05T18:52:52.600' AS DateTime), CAST(N'2020-09-05T18:52:52.600' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (12, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-06T04:18:22.710' AS DateTime), CAST(N'2020-09-06T04:18:22.710' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (13, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-17T14:32:31.010' AS DateTime), CAST(N'2020-09-17T14:32:31.010' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (14, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-17T14:32:38.027' AS DateTime), CAST(N'2020-09-17T14:32:38.027' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (15, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T08:33:32.013' AS DateTime), CAST(N'2020-09-24T08:33:32.013' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (16, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:51:54.067' AS DateTime), CAST(N'2020-09-24T17:51:54.067' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (17, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:52:14.820' AS DateTime), CAST(N'2020-09-24T17:52:14.820' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (18, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:52:20.743' AS DateTime), CAST(N'2020-09-24T17:52:20.743' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (19, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:52:34.573' AS DateTime), CAST(N'2020-09-24T17:52:34.573' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (20, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:52:37.263' AS DateTime), CAST(N'2020-09-24T17:52:37.263' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (21, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-09-24T17:52:51.780' AS DateTime), CAST(N'2020-09-24T17:52:51.780' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (22, NULL, NULL, N'1', NULL, NULL, CAST(N'2020-10-07T11:38:52.717' AS DateTime), CAST(N'2020-10-07T11:38:52.717' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (23, NULL, NULL, N'1', NULL, NULL, CAST(N'2020-10-07T11:38:53.517' AS DateTime), CAST(N'2020-10-07T11:38:53.517' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (24, NULL, NULL, N'ewqe', NULL, NULL, CAST(N'2020-10-08T15:57:06.057' AS DateTime), CAST(N'2020-10-08T15:57:06.057' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (25, NULL, NULL, N'121212', NULL, NULL, CAST(N'2020-10-08T15:57:41.453' AS DateTime), CAST(N'2020-10-08T15:57:41.453' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (26, NULL, NULL, N'rqerqw', NULL, NULL, CAST(N'2020-10-08T15:58:22.427' AS DateTime), CAST(N'2020-10-08T15:58:22.427' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (27, NULL, NULL, N'rqerqw', NULL, NULL, CAST(N'2020-10-08T15:58:26.707' AS DateTime), CAST(N'2020-10-08T15:58:26.707' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (28, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-08T16:49:29.167' AS DateTime), CAST(N'2020-10-08T16:49:29.167' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (29, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-08T16:49:36.620' AS DateTime), CAST(N'2020-10-08T16:49:36.620' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (30, NULL, NULL, N'1', NULL, NULL, CAST(N'2020-10-08T16:52:57.570' AS DateTime), CAST(N'2020-10-08T16:52:57.570' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (31, NULL, N'@', NULL, NULL, NULL, CAST(N'2020-10-08T16:53:03.867' AS DateTime), CAST(N'2020-10-08T16:53:03.867' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (32, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-08T16:55:51.827' AS DateTime), CAST(N'2020-10-08T16:55:51.827' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (33, NULL, NULL, N's', NULL, NULL, CAST(N'2020-10-08T21:12:50.853' AS DateTime), CAST(N'2020-10-08T21:12:50.853' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (34, NULL, NULL, N's', NULL, NULL, CAST(N'2020-10-08T21:12:50.480' AS DateTime), CAST(N'2020-10-08T21:12:50.480' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (35, NULL, NULL, N's', NULL, NULL, CAST(N'2020-10-08T21:12:52.730' AS DateTime), CAST(N'2020-10-08T21:12:52.730' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (36, NULL, NULL, N'd', NULL, NULL, CAST(N'2020-10-08T21:30:59.417' AS DateTime), CAST(N'2020-10-08T21:30:59.417' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (37, NULL, NULL, N'c', NULL, NULL, CAST(N'2020-10-08T21:41:53.597' AS DateTime), CAST(N'2020-10-08T21:41:53.597' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (38, NULL, NULL, N'c', NULL, NULL, CAST(N'2020-10-08T21:41:53.313' AS DateTime), CAST(N'2020-10-08T21:41:53.313' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (39, NULL, NULL, N'c', NULL, NULL, CAST(N'2020-10-08T21:41:52.720' AS DateTime), CAST(N'2020-10-08T21:41:52.720' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (40, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-09T10:28:50.843' AS DateTime), CAST(N'2020-10-09T10:28:50.843' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (41, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-09T10:30:27.327' AS DateTime), CAST(N'2020-10-09T10:30:27.327' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (42, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-09T10:44:15.963' AS DateTime), CAST(N'2020-10-09T10:44:15.963' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (43, N'Ddf', NULL, NULL, NULL, NULL, CAST(N'2020-10-09T10:44:25.917' AS DateTime), CAST(N'2020-10-09T10:44:25.917' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (44, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-10T10:08:18.703' AS DateTime), CAST(N'2020-10-10T10:08:18.703' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (45, NULL, NULL, N'anhnam', NULL, NULL, CAST(N'2020-10-12T00:17:04.540' AS DateTime), CAST(N'2020-10-12T00:17:04.540' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (46, NULL, NULL, N'jm', NULL, NULL, CAST(N'2020-10-12T23:46:47.787' AS DateTime), CAST(N'2020-10-12T23:46:47.787' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (47, N'a', NULL, NULL, NULL, NULL, CAST(N'2020-10-12T23:46:59.960' AS DateTime), CAST(N'2020-10-12T23:46:59.960' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (48, NULL, NULL, N'nnn', NULL, NULL, CAST(N'2020-10-13T10:36:07.547' AS DateTime), CAST(N'2020-10-13T10:36:07.547' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (49, NULL, NULL, N'anhnam', NULL, NULL, CAST(N'2020-10-13T11:22:11.840' AS DateTime), CAST(N'2020-10-13T11:22:11.840' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (50, NULL, NULL, N'đasad', NULL, NULL, CAST(N'2020-10-13T11:44:16.497' AS DateTime), CAST(N'2020-10-13T11:44:16.497' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (51, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-17T23:05:02.407' AS DateTime), CAST(N'2020-10-17T23:05:02.407' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (52, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-17T23:05:03.813' AS DateTime), CAST(N'2020-10-17T23:05:03.813' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (53, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-17T23:05:10.157' AS DateTime), CAST(N'2020-10-17T23:05:10.157' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (54, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-24T11:34:21.617' AS DateTime), CAST(N'2020-10-24T11:34:21.617' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (55, N'dsadsad', N'sadsad', N'ádsad', NULL, N'ádsad', CAST(N'2020-10-30T10:51:23.820' AS DateTime), CAST(N'2020-10-30T10:51:23.820' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (56, N'dsadsad', N'sadsadsadsad', N'ádsad', NULL, N'ádsad', CAST(N'2020-10-30T10:57:35.260' AS DateTime), CAST(N'2020-10-30T10:57:35.260' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (57, N'dsadsad', N'sadsadsadsad', N'ádsad', NULL, NULL, CAST(N'2020-10-30T10:57:45.307' AS DateTime), CAST(N'2020-10-30T10:57:45.307' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (58, NULL, N'fdsfs', NULL, NULL, NULL, CAST(N'2020-10-30T10:58:45.067' AS DateTime), CAST(N'2020-10-30T10:58:45.067' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (59, NULL, N'shadsadsadk', NULL, NULL, NULL, CAST(N'2020-10-30T10:58:50.363' AS DateTime), CAST(N'2020-10-30T10:58:50.363' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (60, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:31.160' AS DateTime), CAST(N'2020-11-03T10:23:31.160' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (61, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:33.583' AS DateTime), CAST(N'2020-11-03T10:23:33.583' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (62, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:34.113' AS DateTime), CAST(N'2020-11-03T10:23:34.113' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (63, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:35.317' AS DateTime), CAST(N'2020-11-03T10:23:35.317' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (64, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:35.723' AS DateTime), CAST(N'2020-11-03T10:23:35.723' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (65, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:35.863' AS DateTime), CAST(N'2020-11-03T10:23:35.863' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (66, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:36.050' AS DateTime), CAST(N'2020-11-03T10:23:36.050' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (67, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:36.300' AS DateTime), CAST(N'2020-11-03T10:23:36.300' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (68, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:36.537' AS DateTime), CAST(N'2020-11-03T10:23:36.537' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (69, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-03T10:23:36.707' AS DateTime), CAST(N'2020-11-03T10:23:36.707' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (70, N'sdf', N'dsfsdf', N'sdf', NULL, N'sdf', CAST(N'2020-11-26T08:34:21.200' AS DateTime), CAST(N'2020-11-26T08:34:21.200' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (71, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T08:29:48.710' AS DateTime), CAST(N'2020-11-27T08:29:48.710' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (72, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T11:30:39.307' AS DateTime), CAST(N'2020-11-27T11:30:39.307' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (73, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T11:30:38.587' AS DateTime), CAST(N'2020-11-27T11:30:38.587' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (74, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T11:30:40.807' AS DateTime), CAST(N'2020-11-27T11:30:40.807' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (75, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T11:30:40.137' AS DateTime), CAST(N'2020-11-27T11:30:40.137' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (76, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-27T11:38:42.260' AS DateTime), CAST(N'2020-11-27T11:38:42.260' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (77, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T09:28:14.137' AS DateTime), CAST(N'2020-12-01T09:28:14.137' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (78, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T09:38:15.277' AS DateTime), CAST(N'2020-12-01T09:38:15.277' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (79, N'a', N'a', N'a', NULL, N'a', CAST(N'2020-12-01T09:38:21.450' AS DateTime), CAST(N'2020-12-01T09:38:21.450' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (80, NULL, NULL, N'd', NULL, NULL, CAST(N'2020-12-01T14:46:26.437' AS DateTime), CAST(N'2020-12-01T14:46:26.437' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (81, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T22:11:01.600' AS DateTime), CAST(N'2020-12-01T22:11:01.600' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (82, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:33.137' AS DateTime), CAST(N'2020-12-17T19:50:33.137' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (83, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:33.597' AS DateTime), CAST(N'2020-12-17T19:50:33.597' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (84, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:33.387' AS DateTime), CAST(N'2020-12-17T19:50:33.387' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (85, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:32.810' AS DateTime), CAST(N'2020-12-17T19:50:32.810' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (86, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:46.027' AS DateTime), CAST(N'2020-12-17T19:50:46.027' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (87, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:50:57.387' AS DateTime), CAST(N'2020-12-17T19:50:57.387' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (88, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-17T19:51:03.897' AS DateTime), CAST(N'2020-12-17T19:51:03.897' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (89, N'ytf', N'hgfhg', NULL, NULL, NULL, CAST(N'2021-01-14T18:29:44.387' AS DateTime), CAST(N'2021-01-14T18:29:44.387' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (90, N'ytf', N'hgfhg', NULL, NULL, NULL, CAST(N'2021-01-14T18:29:48.567' AS DateTime), CAST(N'2021-01-14T18:29:48.567' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (91, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:27.700' AS DateTime), CAST(N'2021-01-20T14:49:27.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (92, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:27.700' AS DateTime), CAST(N'2021-01-20T14:49:27.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (93, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:27.700' AS DateTime), CAST(N'2021-01-20T14:49:27.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (94, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:27.700' AS DateTime), CAST(N'2021-01-20T14:49:27.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (95, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:27.700' AS DateTime), CAST(N'2021-01-20T14:49:27.700' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (96, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:49:53.433' AS DateTime), CAST(N'2021-01-20T14:49:53.433' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (97, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:54:20.827' AS DateTime), CAST(N'2021-01-20T14:54:20.827' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (98, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:54:45.247' AS DateTime), CAST(N'2021-01-20T14:54:45.247' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (99, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-20T14:57:08.147' AS DateTime), CAST(N'2021-01-20T14:57:08.147' AS DateTime), NULL, NULL, 0, NULL)
GO
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (100, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-21T11:13:17.030' AS DateTime), CAST(N'2021-01-21T11:13:17.030' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (101, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-21T21:20:04.677' AS DateTime), CAST(N'2021-01-21T21:20:04.677' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (102, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-01-28T09:28:05.023' AS DateTime), CAST(N'2021-01-28T09:28:05.023' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (103, N'Trinh Van Chung', N'chungtrinhj@gmail.com', N'0978611889', NULL, N'Test', CAST(N'2021-02-23T18:14:23.877' AS DateTime), CAST(N'2021-02-23T18:14:23.887' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (104, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-02-23T19:16:56.110' AS DateTime), CAST(N'2021-02-23T19:16:56.110' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (105, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-02-23T19:17:08.317' AS DateTime), CAST(N'2021-02-23T19:17:08.317' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (106, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-02-23T19:17:10.173' AS DateTime), CAST(N'2021-02-23T19:17:10.173' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (107, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-02-23T19:17:12.730' AS DateTime), CAST(N'2021-02-23T19:17:12.730' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (108, NULL, NULL, NULL, NULL, NULL, CAST(N'2021-02-23T19:17:14.300' AS DateTime), CAST(N'2021-02-23T19:17:14.300' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (109, N'Chung Trịnh', N'chungtrinhj@gmail.com', N'0978611889', NULL, N'Test', CAST(N'2021-02-26T18:16:18.537' AS DateTime), CAST(N'2021-02-26T18:16:18.537' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (110, NULL, NULL, N'jh', NULL, NULL, CAST(N'2021-02-27T22:10:02.040' AS DateTime), CAST(N'2021-02-27T22:10:02.040' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (111, NULL, NULL, N'jh', NULL, NULL, CAST(N'2021-02-27T22:10:03.733' AS DateTime), CAST(N'2021-02-27T22:10:03.733' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (112, NULL, NULL, N'jh', NULL, NULL, CAST(N'2021-02-27T22:10:04.667' AS DateTime), CAST(N'2021-02-27T22:10:04.667' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (113, NULL, NULL, N'bv', NULL, NULL, CAST(N'2021-02-28T16:47:57.400' AS DateTime), CAST(N'2021-02-28T16:47:57.400' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (114, NULL, NULL, N'bv', NULL, NULL, CAST(N'2021-02-28T16:47:57.653' AS DateTime), CAST(N'2021-02-28T16:47:57.653' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (115, N'cx', N'cx', NULL, NULL, NULL, CAST(N'2021-02-28T16:48:09.803' AS DateTime), CAST(N'2021-02-28T16:48:09.803' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (116, N'fe', N'fe', N'fe', NULL, N'fe', CAST(N'2021-03-08T00:30:06.680' AS DateTime), CAST(N'2021-03-08T00:30:06.680' AS DateTime), NULL, NULL, 0, NULL)
INSERT [dbo].[CONTACT] ([ID], [TITLE], [EMAIL], [PHONE], [ADDRESS], [CONTENT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (117, N'fe', N'fe', N'fe', NULL, N'fe', CAST(N'2021-03-08T00:31:10.277' AS DateTime), CAST(N'2021-03-08T00:31:10.277' AS DateTime), NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[CONTACT] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [NAME], [USERNAME], [PASSWORD], [ADDRESS], [EMAIL], [PHONE], [AVATAR], [CREATED_DATE], [UPDATED_DATE], [CREATED_BY], [UPDATED_BY], [ISDELETE], [ISACTIVE]) VALUES (0, N'hem', N'hem', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, N'hem@gmail.com', NULL, NULL, CAST(N'2025-02-11T10:02:44.710' AS DateTime), CAST(N'2025-02-11T10:02:44.710' AS DateTime), 0, 0, 0, 1)
INSERT [dbo].[Customer] ([ID], [NAME], [USERNAME], [PASSWORD], [ADDRESS], [EMAIL], [PHONE], [AVATAR], [CREATED_DATE], [UPDATED_DATE], [CREATED_BY], [UPDATED_BY], [ISDELETE], [ISACTIVE]) VALUES (1, N'hiu', N'hiu', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, N'hiu@gmail.com', NULL, NULL, CAST(N'2025-02-11T10:05:54.523' AS DateTime), CAST(N'2025-02-11T10:05:54.523' AS DateTime), 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[EXTENSION] ON 

INSERT [dbo].[EXTENSION] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (1, N'Đặc trưng', NULL, NULL, N'Đặc trưng', N'Đặc trưng', NULL, 1, NULL, CAST(N'2020-07-20T00:01:44.577' AS DateTime), CAST(N'2020-07-20T00:01:45.203' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[EXTENSION] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (2, N'Thông số', NULL, NULL, N'Thông số', N'Thông số', NULL, 2, NULL, CAST(N'2020-07-20T00:02:38.750' AS DateTime), CAST(N'2020-07-20T00:02:38.750' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[EXTENSION] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (3, N'Bảo quản', NULL, NULL, N'Bảo quản', N'Bảo quản', NULL, 3, NULL, CAST(N'2020-07-20T00:02:56.283' AS DateTime), CAST(N'2020-07-20T00:02:56.283' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[EXTENSION] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (4, N'Bảo hành', NULL, NULL, N'Bảo hành', N'Bảo hành', NULL, 4, NULL, CAST(N'2020-07-20T00:03:07.870' AS DateTime), CAST(N'2020-07-20T00:03:07.870' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[EXTENSION] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (5, N'Cam kết', NULL, NULL, N'Cam kết', N'Cam kết', NULL, 5, NULL, CAST(N'2020-07-20T00:03:22.177' AS DateTime), CAST(N'2020-07-20T00:03:22.177' AS DateTime), NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[EXTENSION] OFF
GO
SET IDENTITY_INSERT [dbo].[INFOR_COMPANY] ON 

INSERT [dbo].[INFOR_COMPANY] ([ID], [NAME], [LOGO], [PHONE], [EMAIL], [ADDRESS], [YOUTUBE], [INSTAGRAM], [FACEBOOK], [CREATED_DATE], [UPDATE_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION]) VALUES (1, N'XƯỞNG MỘC HOÀNG HOAN', N'/Content/Uploads/images/thong-tin/logo.png', N'0985.367.024', N'noithatlanhoan@gmail.com', N'Hiệp Thuận, Phúc Thọ, Hà Nội', NULL, NULL, N'https://www.facebook.com/X%C6%B0%E1%BB%9Fng-M%E1%BB%99c-Ho%C3%A0ng-Hoan-110459754092742/', CAST(N'2020-08-20' AS Date), CAST(N'2020-08-20' AS Date), NULL, NULL, N'Xưởng Mộc Giá Tốt - Thế Giới Nội Thất Số 1 Việt Nam', N'xưởng mộc ', N'Xưởng Mộc Hoàng Hoan với hơn 20 năm kinh nghiệm là xưởng mộc giá tốt nhất trên thị trường Việt Nam, nơi cung cấp nội thất số 1 Việt Nam với nhiều mẫu mã đa dạng như nội thất văn phòng, giường ngủ, tủ bếp, cầu thang, các công trình nhà dân cũng như các dự án chung cư cao cấp.')
SET IDENTITY_INSERT [dbo].[INFOR_COMPANY] OFF
GO
SET IDENTITY_INSERT [dbo].[INTRODUCTIONS] ON 

INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (1, N'NỘI THẤT HOÀNG HOAN UY TÍN SONG HÀNH CHẤT LƯỢNG', N'/Content/Uploads/images/gioi-thieu/vct-0.png', 1, N'<p>Nội thất Ho&agrave;ng Hoan ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; đứa con tinh thần ra đời sau hơn 30 năm hoạt động trong lĩnh vực kinh doanh đồ gỗ nội thất với thương hiệu ĐỒ GỖ HO&Agrave;NG HOAN nổi tiếng.</p>

<p>T&agrave;i nguy&ecirc;n của ch&uacute;ng t&ocirc;i l&agrave; đội ngũ kiến tr&uacute;c sư tốt nghiệp ĐH Kiến Tr&uacute;c H&agrave; Nội với nhiều năm kinh nghiệm, lu&ocirc;n tr&agrave;n đầy nhiệt huyết v&agrave; sức s&aacute;ng tạo của tuổi trẻ. Thế mạnh của ch&uacute;ng t&ocirc;i l&agrave; sở hữu xưởng nội thất hơn 10.000m2 tại H&agrave; Nội sản xuất đa dạng c&aacute;c sản phẩm với gi&aacute; cả lu&ocirc;n cạnh tranh.</p>
', 1, 0, 0, N'NỘI THẤT HOÀNG HOAN UY TÍN SONG HÀNH CHẤT LƯỢNG', N'nội thất hoàng hoan, đồ gỗ hoàng hoan, nội thất giá tốt, xưởng nội thất', N'Nội thất Hoàng Hoan với hơn 20 năm kinh nghiệm sản xuất và phân phối các sản phẩm nội thất với giá tốt nhất trên thị trường, với phương trâm cung cấp sản phẩm tốt nhất với chi phí thấp nhất cho khách hàng.
', N'noi-that-hoang-hoan-uy-tin-song-hanh-chat-luong', NULL, CAST(N'2020-08-20T09:46:28.673' AS DateTime), NULL, NULL, N'<p><img alt="giới thiệu" src="/Content/Uploads/images/gioi-thieu/vct-1.jpg" />&nbsp;<img alt="giới thiệu" src="/Content/Uploads/images/gioi-thieu/vct-2.jpg" />&nbsp;<img alt="giới thiệu" src="/Content/Uploads/images/gioi-thieu/vct-3.jpg" />&nbsp;<a href="/gioi-thieu"><img alt="" src="/Content/Uploads/images/gioi-thieu/vct-4.png" /></a></p>
', 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (2, N'Thành lâp & phát triển', N'/Content/Uploads/images/gioi-thieu/thanh-lap.png', 2, N'<p>Nội Thất Ho&agrave;ng Hoan được x&acirc;y dựng dựa tr&ecirc;n t&igrave;nh y&ecirc;u, đam m&ecirc; của t&ocirc;i đối với nghề mộc v&agrave; khao kh&aacute;t mang những sản phẩm nội thất đẹp của m&igrave;nh đến với kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u.</p>

<p>Cả 1 qu&aacute; tr&igrave;nh từ 1 người thợ phụ rồi được l&agrave;m thợ mộc ch&iacute;nh, tự tạo ra cho m&igrave;nh 1 ph&acirc;n xưởng nhỏ dần ph&aacute;t triển v&agrave; hiện tại Ho&agrave;ng Hoan đ&atilde; l&agrave; 1 trong những c&ocirc;ng ty c&oacute; dịch vụ thiết kế v&agrave; thi c&ocirc;ng nội thất uy t&iacute;n chất lượng với gi&aacute; tốt nhất tại H&agrave; Nội với sứ mệnh &ldquo;đem đến cho kh&aacute;ch h&agrave;ng kh&ocirc;ng gian nội thất ho&agrave;n hảo&rdquo;.</p>

<p>Ho&agrave;ng Hoan lu&ocirc;n nỗ lực để tạo ra kh&ocirc;ng gian đẹp cho kh&aacute;ch h&agrave;ng theo nhiều gam m&agrave;u sắc kh&aacute;c nhau v&agrave; phong c&aacute;ch đa dạng, theo đ&uacute;ng ở th&iacute;ch, lứa tuổi v&agrave; phong thủy của kh&aacute;ch h&agrave;ng.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', 0, 0, 0, N'Thành lâp & phát triển', N'Thành lâp & phát triển', N'Nội Thất Hoàng Hoan được xây dựng dựa trên tình yêu, đam mê của tôi đối với nghề mộc và khao khát mang những sản phẩm nội thất đẹp của mình đến với khách hàng thân yêu.

Cả 1 quá trình từ 1 người thợ phụ rồi được làm thợ mộc chính, tự tạo ra cho mình 1 phân xưởng nhỏ dần phát triển và hiện tại Hoàng Hoan đã là 1 trong những công ty có dịch vụ thiết kế và thi công nội thất uy tín chất lượng với giá tốt nhất tại Hà Nội với sứ mệnh “đem đến cho khách hàng không gian nội thất hoàn hảo”.
', N'thanh-lap-phat-trien', NULL, CAST(N'2020-07-30T15:44:43.317' AS DateTime), NULL, NULL, N'<p>sad</p>
', 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (3, N'tầm nhìn', N'/Content/Uploads/images/gioi-thieu/gioi-thieu-tam-nhin.png', 3, N'<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n hướng đến việc tạo ra c&aacute;c sản phẩm nội thất tr&ecirc;n triết l&yacute; t&ocirc;n trọng v&agrave; giữ g&igrave;n những g&igrave; tự nhi&ecirc;n đ&atilde; ban tặng cho con người. Ch&uacute;ng t&ocirc;i lu&ocirc;n t&igrave;m t&ograve;i v&agrave; ứng dụng c&aacute;c giải ph&aacute;p sản phẩm v&agrave; c&ocirc;ng nghệ ti&ecirc;n tiến nhất, hợp t&aacute;c với c&aacute;c đối t&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu thế giới, t&igrave;m kiếm v&agrave; ph&aacute;t triển c&aacute;c v&ugrave;ng nguy&ecirc;n liệu tự nhi&ecirc;n được thi&ecirc;n nhi&ecirc;n chọn lọc, ưu đ&atilde;i trong nước lẫn nước ngo&agrave;i, tất cả nhằm tạo ra c&aacute;c sản phẩm nội thất tự nhi&ecirc;n gần gữi cho người kh&aacute;ch h&agrave;ng Việt Nam.</p>
', 0, 0, 0, N'tầm nhìn', N'tầm nhìn', N'Chúng tôi luôn hướng đến việc tạo ra các sản phẩm nội thất trên triết lý tôn trọng và giữ gìn những gì tự nhiên đã ban tặng cho con người. Chúng tôi luôn tìm tòi và ứng dụng các giải pháp sản phẩm và công nghệ tiên tiến nhất, hợp tác với các đối tác công nghệ hàng đầu thế giới, tìm kiếm và phát triển các vùng nguyên liệu tự nhiên được thiên nhiên chọn lọc, ưu đãi trong nước lẫn nước ngoài, tất cả nhằm tạo ra các sản phẩm nội thất tự nhiên gần gữi cho người khách hàng Việt Nam.
', N'tam-nhin', NULL, CAST(N'2020-07-30T15:56:38.790' AS DateTime), NULL, NULL, NULL, 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (4, N'sứ mệnh', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', 4, NULL, 0, 0, 0, N'sứ mệnh', NULL, NULL, N'su-menh', NULL, CAST(N'2020-07-30T15:57:23.397' AS DateTime), NULL, NULL, NULL, 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (5, N'Với xã hội', N'/Content/Uploads/images/gioi-thieu/voi-xa-hoi.png', 5, N'<p>H&agrave;i h&ograve;a lợi &iacute;ch doanh nghiệp với lợi &iacute;ch x&atilde; hội, t&iacute;ch cực c&ugrave;ng cộng đồng x&acirc;y dựng m&ocirc;i trường sống bền vững.</p>
', 0, 1, 4, N'Với xã hội', NULL, N'Hài hòa lợi ích doanh nghiệp với lợi ích xã hội, tích cực cùng cộng đồng xây dựng môi trường sống bền vững.
', N'voi-xa-hoi', NULL, CAST(N'2020-07-30T16:08:24.573' AS DateTime), NULL, NULL, N'<p>H&agrave;i h&ograve;a lợi &iacute;ch doanh nghiệp với lợi &iacute;ch x&atilde; hội, t&iacute;ch cực c&ugrave;ng cộng đồng x&acirc;y dựng m&ocirc;i trường sống bền vững.</p>
', 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (6, N'Với nhân viên', N'/Content/Uploads/images/gioi-thieu/voi-nhan-vien.jpg', 6, N'<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn.</p>
', 0, 1, 4, N'Với nhân viên', NULL, N'Xây dựng môi trường làm việc chuyên nghiệp, năng động, sáng tạo và nhân văn.
', N'voi-nhan-vien', NULL, CAST(N'2020-07-30T16:08:33.333' AS DateTime), NULL, NULL, N'<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn.</p>
', 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (7, N'Với đối tác', N'/Content/Uploads/images/gioi-thieu/voi-doi-tac.jpg', 7, N'<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn.</p>
', 0, 1, 4, N'Với đối tác', NULL, N'Xây dựng môi trường làm việc chuyên nghiệp, năng động,
sáng tạo và nhân văn.
', N'voi-doi-tac', NULL, CAST(N'2020-07-30T16:08:42.870' AS DateTime), NULL, NULL, N'<p>X&acirc;y dựng m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, năng động, s&aacute;ng tạo v&agrave; nh&acirc;n văn.</p>
', 1, 0)
INSERT [dbo].[INTRODUCTIONS] ([ID], [TITLE], [IMAGE], [ORDERS], [DESCRIPTION], [HOME], [TYPE], [PARENTID], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (8, N'Với thị trường', N'/Content/Uploads/images/gioi-thieu/voi-thi-truong.png', 8, N'<p>Cung cấp c&aacute;c sản phẩm với chất lượng quốc tế v&agrave; ph&ugrave; hợp với con người Việt Nam.</p>
', 0, 1, 4, N'Với thị trường', N'Cung cấp các sản phẩm với chất lượng quốc tế và phù hợp  với con người Việt Nam.', N'Cung cấp các sản phẩm với chất lượng quốc tế và phù hợp với con người Việt Nam.
', N'voi-thi-truong', NULL, CAST(N'2020-07-30T16:08:51.543' AS DateTime), NULL, NULL, N'<p>Cung cấp c&aacute;c sản phẩm với chất lượng quốc tế v&agrave; ph&ugrave; hợp với con người Việt Nam.</p>
', 1, 0)
SET IDENTITY_INSERT [dbo].[INTRODUCTIONS] OFF
GO
SET IDENTITY_INSERT [dbo].[MATERIAL] ON 

INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (1, N'Gỗ sồi', NULL, NULL, N'Gỗ sồi', N'Gỗ sồi', NULL, NULL, NULL, CAST(N'2020-07-20T01:52:43.413' AS DateTime), CAST(N'2020-07-20T01:52:43.413' AS DateTime), NULL, NULL, N'Gỗ sồi', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (2, N'Gỗ lim', NULL, NULL, N'Gỗ lim', N'Gỗ lim', NULL, NULL, NULL, CAST(N'2020-07-20T01:53:01.887' AS DateTime), CAST(N'2020-07-20T01:53:01.887' AS DateTime), NULL, NULL, N'Gỗ lim', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (3, N'Gỗ xoan đào', NULL, NULL, N'Gỗ xoan đào', N'Gỗ xoan đào', NULL, NULL, NULL, CAST(N'2020-07-20T15:51:09.267' AS DateTime), CAST(N'2020-07-20T15:51:09.267' AS DateTime), NULL, NULL, N'Gỗ xoan đào', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (4, N'Gỗ mít', NULL, NULL, N'Gỗ mít', N'Gỗ mít', NULL, NULL, NULL, CAST(N'2020-07-20T15:51:32.210' AS DateTime), CAST(N'2020-07-20T15:51:32.210' AS DateTime), NULL, NULL, N'Gỗ mít', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (5, N'Gỗ lát', NULL, NULL, N'Gỗ lát', N'Gỗ lát', NULL, NULL, NULL, CAST(N'2020-07-24T11:30:01.883' AS DateTime), CAST(N'2020-07-24T11:30:01.883' AS DateTime), NULL, NULL, N'Gỗ lát', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (6, N'nâu vân gỗ', NULL, NULL, N'nâu vân gỗ', N'nâu vân gỗ', NULL, NULL, NULL, CAST(N'2020-07-31T00:56:59.457' AS DateTime), CAST(N'2020-07-31T00:56:59.457' AS DateTime), NULL, NULL, N'nâu vân gỗ', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (7, N'Trắng sữa', NULL, NULL, N'Trắng sữa', N'Trắng sữa', NULL, NULL, NULL, CAST(N'2020-07-31T01:17:49.057' AS DateTime), CAST(N'2020-07-31T01:17:49.057' AS DateTime), NULL, NULL, N'Trắng sữa', 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (8, N'gỗ công nghiệp', NULL, NULL, N'gỗ công nghiệp', N'Xưởng mộc giá tốt chuyên cung cấp các sản phẩm nội thất gỗ công nghiệp cao cấp với hơn 20 năm kinh nghiệm và đội ngũ nhân sự nhiều kỹ năng, cam kết chi phí thấp và chất lượng vượt trội.', NULL, NULL, NULL, CAST(N'2020-08-10T14:51:56.987' AS DateTime), CAST(N'2020-08-10T14:51:56.987' AS DateTime), NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[MATERIAL] ([ID], [TITLE], [ICON], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [ORDERS], [PARENTID], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [NOTES], [STATUS], [ISDELETE]) VALUES (15, N'Phòng game', N'/images/c11e7eb9-4f4c-4e3e-86f9-d94ddcd7ccc9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2024-12-25T09:38:43.053' AS DateTime), CAST(N'2024-12-25T10:04:14.540' AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MATERIAL] OFF
GO
SET IDENTITY_INSERT [dbo].[NEWS] ON 

INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (10, NULL, N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'<p>Những căn hộ chung cư mini, c&oacute; diện t&iacute;ch nhỏ ng&agrave;y c&agrave;ng trở n&ecirc;n n&ecirc;n ưa chuộng hơn trong cuộc sống hiện đại với những ai c&oacute; khoản kinh ph&iacute; &quot;hạn hẹp&quot;.</p>
', N'<p>Những căn hộ chung cư mini, c&oacute; diện t&iacute;ch nhỏ ng&agrave;y c&agrave;ng trở n&ecirc;n n&ecirc;n ưa chuộng hơn trong cuộc sống hiện đại với những ai c&oacute; khoản kinh ph&iacute; &quot;hạn hẹp&quot;.</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-1.jpg', N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'Những căn hộ chung cư mini, có diện tích nhỏ ngày càng trở nên nên ưa chuộng hơn trong cuộc sống hiện đại với những ai có khoản kinh phí "hạn hẹp".
', N'ngat-ngay-voi-top-10-mau-noi-that-chung-cu-1-phong-ngu-dep', 0, 0, NULL, CAST(N'2020-07-30T23:46:34.473' AS DateTime), CAST(N'2020-07-30T23:46:34.473' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (11, NULL, N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'<p>Sự thật l&agrave; ch&uacute;ng ta d&agrave;nh hết 1/3 cuộc đời chỉ để ngủ, v&igrave; thế việc tạo được một giấc ngủ ngon l&agrave; một điều đặc biệt quan trọng.</p>
', N'<p><img alt="NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP" src="/Content/Uploads/images/tin-tuc/tintuc-2.png" /></p>

<p>Sự thật l&agrave; ch&uacute;ng ta d&agrave;nh hết 1/3 cuộc đời chỉ để ngủ, v&igrave; thế việc tạo được một giấc ngủ ngon l&agrave; một điều đặc biệt quan trọng.</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-2.jpg', N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'Sự thật là chúng ta dành hết 1/3 cuộc đời chỉ để ngủ, vì thế việc tạo được một giấc ngủ ngon là một điều đặc biệt quan trọng.
', N'25--mau-giuong-ngu-hoc-keo-thong-minh-cho-can-phong-ban', 0, 0, NULL, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(N'2020-07-30T00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (12, NULL, N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'<p>Độ tuổi khởi nghiệp v&agrave; tự lập ng&agrave;y c&agrave;ng trẻ h&oacute;a trong x&atilde; hội hiện đại thời nay, thế n&ecirc;n việc &ldquo;thiết kế căn hộ chung cư mini 2 ph&ograve;ng ngủ&rdquo;</p>
', N'<p><img alt="Độ tuổi khởi nghiệp và tự lập ngày càng trẻ hóa trong xã hội hiện đại thời nay, thế nên việc “thiết kế căn hộ chung cư mini 2 phòng ngủ”" src="/Content/Uploads/images/tin-tuc/tintuc-3.png" /></p>

<p>Độ tuổi khởi nghiệp v&agrave; tự lập ng&agrave;y c&agrave;ng trẻ h&oacute;a trong x&atilde; hội hiện đại thời nay, thế n&ecirc;n việc &ldquo;thiết kế căn hộ chung cư mini 2 ph&ograve;ng ngủ&rdquo;</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-3.jpg', N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'Độ tuổi khởi nghiệp và tự lập ngày càng trẻ hóa trong xã hội hiện đại thời nay, thế nên việc “thiết kế căn hộ chung cư mini 2 phòng ngủ”
', N'tuyet-chieu-thiet-ke-chung-cu-mini-2-phong-ngu-sieu-dep', 0, 0, NULL, CAST(N'2020-07-30T23:49:44.293' AS DateTime), CAST(N'2020-07-30T23:49:44.293' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (13, NULL, N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'<p>Những căn hộ chung cư mini, c&oacute; diện t&iacute;ch nhỏ ng&agrave;y c&agrave;ng trở n&ecirc;n n&ecirc;n ưa chuộng hơn trong cuộc sống hiện đại với những ai c&oacute; khoản kinh ph&iacute; &quot;hạn hẹp&quot;.</p>
', N'<p><img alt="Những căn hộ chung cư mini, có diện tích nhỏ ngày càng trở nên nên ưa chuộng hơn trong cuộc sống hiện đại với những ai có khoản kinh phí &quot;hạn hẹp&quot;." src="/Content/Uploads/images/tin-tuc/tintuc-4.png" /></p>

<p>Những căn hộ chung cư mini, c&oacute; diện t&iacute;ch nhỏ ng&agrave;y c&agrave;ng trở n&ecirc;n n&ecirc;n ưa chuộng hơn trong cuộc sống hiện đại với những ai c&oacute; khoản kinh ph&iacute; &quot;hạn hẹp&quot;.</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-4.jpg', N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'NỘI THẤT CHUNG ', N'NGẤT NGÂY VỚI TOP 10 MẪU NỘI THẤT CHUNG CƯ 1 PHÒNG NGỦ ĐẸP', N'Những căn hộ chung cư mini, có diện tích nhỏ ngày càng trở nên nên ưa chuộng hơn trong cuộc sống hiện đại với những ai có khoản kinh phí "hạn hẹp".
', N'ngat-ngay-voi-top-10-mau-noi-that-chung-cu-1-phong-ngu-dep', 0, 0, NULL, CAST(N'2020-07-30T23:51:22.097' AS DateTime), CAST(N'2020-07-30T23:51:22.097' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (14, NULL, N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'<p>Sự thật l&agrave; ch&uacute;ng ta d&agrave;nh hết 1/3 cuộc đời chỉ để ngủ, v&igrave; thế việc tạo được một giấc ngủ ngon l&agrave; một điều đặc biệt quan trọng.</p>
', N'<p><img alt="Sự thật là chúng ta dành hết 1/3 cuộc đời chỉ để ngủ, vì thế việc tạo được một giấc ngủ ngon là một điều đặc biệt quan trọng." src="/Content/Uploads/images/tin-tuc/tintuc-5.png" /></p>

<p>Sự thật l&agrave; ch&uacute;ng ta d&agrave;nh hết 1/3 cuộc đời chỉ để ngủ, v&igrave; thế việc tạo được một giấc ngủ ngon l&agrave; một điều đặc biệt quan trọng.</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-5.jpg', N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'GIƯỜNG NGỦ HỘC KÉO THÔNG MINH', N'25+ MẪU GIƯỜNG NGỦ HỘC KÉO THÔNG MINH CHO CĂN PHÒNG BẠN', N'Sự thật là chúng ta dành hết 1/3 cuộc đời chỉ để ngủ, vì thế việc tạo được một giấc ngủ ngon là một điều đặc biệt quan trọng.
', N'25--mau-giuong-ngu-hoc-keo-thong-minh-cho-can-phong-ban', 0, 0, NULL, CAST(N'2020-07-30T23:53:12.677' AS DateTime), CAST(N'2020-07-30T23:53:12.677' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [MAIN_KEYWORD], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [VIEWS], [LIKES], [STAR], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (15, NULL, N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'<p>Độ tuổi khởi nghiệp v&agrave; tự lập ng&agrave;y c&agrave;ng trẻ h&oacute;a trong x&atilde; hội hiện đại thời nay, thế n&ecirc;n việc &ldquo;thiết kế căn hộ chung cư mini 2 ph&ograve;ng ngủ&rdquo;</p>
', N'<p><img alt="Độ tuổi khởi nghiệp và tự lập ngày càng trẻ hóa trong xã hội hiện đại thời nay, thế nên việc “thiết kế căn hộ chung cư mini 2 phòng ngủ”" src="/Content/Uploads/images/tin-tuc/tintuc-6.png" /></p>

<p>Độ tuổi khởi nghiệp v&agrave; tự lập ng&agrave;y c&agrave;ng trẻ h&oacute;a trong x&atilde; hội hiện đại thời nay, thế n&ecirc;n việc &ldquo;thiết kế căn hộ chung cư mini 2 ph&ograve;ng ngủ&rdquo;</p>
', N'/Content/Uploads/images/tin-tuc/tintuc-6.jpg', N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'THIẾT KẾ CHUNG CƯ MINI ', N'TUYỆT CHIÊU THIẾT KẾ CHUNG CƯ MINI 2 PHÒNG NGỦ SIÊU ĐẸP', N'Độ tuổi khởi nghiệp và tự lập ngày càng trẻ hóa trong xã hội hiện đại thời nay, thế nên việc “thiết kế căn hộ chung cư mini 2 phòng ngủ”
', N'tuyet-chieu-thiet-ke-chung-cu-mini-2-phong-ngu-sieu-dep', 0, 0, NULL, CAST(N'2020-07-30T23:54:35.957' AS DateTime), CAST(N'2020-07-30T23:54:35.957' AS DateTime), NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[NEWS] OFF
GO
INSERT [dbo].[OrderDetails] ([ID], [IDORDER], [IDPRODUCT], [PRICE], [QTY], [TOTAL], [RETURN_QTY]) VALUES (0, 0, 8, CAST(9999000 AS Decimal(18, 0)), 1, CAST(9999000 AS Decimal(18, 0)), 0)
GO
INSERT [dbo].[Orders] ([ID], [IDORDERS], [ORDERS_DATE], [IDCUSTOMER], [IDPAYMENT], [TOTAL_MONEY], [NOTES], [NAME_RECIEVER], [ADDRESS], [EMAIL], [PHONE], [ISDELETE], [ISACTIVE]) VALUES (0, 638754686897735858, CAST(N'2025-02-18T09:44:49.773' AS DateTime), 1, 0, CAST(9999000 AS Decimal(18, 0)), NULL, N'hiu', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PARTNER] ON 

INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (1, N'Công ty cổ phần VInpearl', N'/Content/Uploads/images/doi-tac/vinpearl.png', NULL, NULL, CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(N'2020-07-30T00:00:00.000' AS DateTime), NULL, NULL, N'Vinpearl là thương hiệu dịch vụ du lịch nghỉ dưỡng – giải trí lớn nhất Việt Nam. Vinpearl sở hữu chuỗi khách sạn, resort và trung tâm hội nghị đẳng cấp 5 sao, các khu vui chơi giải trí quốc tế tọa lạc tại những danh thắng du lịch nổi tiếng nhất của Việt Nam.', 1, NULL)
INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (2, N'TẬP ĐOÀN KHÁCH SẠN MƯỜNG THANH', N'/Content/Uploads/images/doi-tac/muong-thanh.png', NULL, NULL, CAST(N'2020-07-30T11:45:50.823' AS DateTime), CAST(N'2020-07-30T11:45:50.823' AS DateTime), NULL, NULL, N'Tại Mường Thanh, chúng tôi mời bạn cùng khởi hành chuyến đi tìm về không gian thanh thản chứa đựng những nét văn hóa mang đậm tinh thần bản sắc Việt, nơi con người gắn kết và thân ái gửi trao nhau tình cảm chân thành. ', 1, NULL)
INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (3, N'sheraton hanoI HOTEL', N'/Content/Uploads/images/doi-tac/sheraton.png', NULL, NULL, CAST(N'2020-07-30T11:46:38.010' AS DateTime), CAST(N'2020-07-30T11:46:38.010' AS DateTime), NULL, NULL, N'Situated on the shores of Hanoi''s West Lake and surrounded by its many local attractions, Sheraton Hanoi Hotel is just a quick drive to the bustling downtown of Hanoi City. Explore the nearby Old Quarter, home to Hoan Kiem Lake, Hanoi Opera House and exceptional boutiques.', 1, NULL)
INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (4, N'THE COFFEE HOUSE', N'/Content/Uploads/images/doi-tac/the-coffee-house.png', NULL, NULL, CAST(N'2020-07-30T11:47:18.910' AS DateTime), CAST(N'2020-07-30T11:47:18.910' AS DateTime), NULL, NULL, N'Tại The Coffee House, chúng tôi luôn trân trọng những câu chuyện và đề cao giá trị Kết nối con người. Chúng tôi mong muốn The Coffee House sẽ trở thành “Nhà Cà Phê", nơi mọi người xích lại gần nhau và tìm thấy niềm vui, sự sẻ chia thân tình bên những tách cà phê đượm hương, chất lượng.', 1, NULL)
INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (5, N'Marvella Hotel Nha Trang', N'/Content/Uploads/images/doi-tac/marvella.png', NULL, NULL, CAST(N'2020-07-30T11:48:02.573' AS DateTime), CAST(N'2020-07-30T11:48:02.573' AS DateTime), NULL, NULL, N'Marvella Hotel Nha Trang', 1, NULL)
INSERT [dbo].[PARTNER] ([ID], [TITLE], [LOGO], [URL], [ORDERS], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [CONTENT], [STATUS], [ISDELETE]) VALUES (8, N'Phòng game', N'/images/ebbf1e0b-db26-4394-af68-d65ddd0dd518.jpg', NULL, 1, CAST(N'2024-12-23T11:32:36.200' AS DateTime), CAST(N'2024-12-23T11:34:33.900' AS DateTime), NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[PARTNER] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (8, 7, N'P001', N'Bàn tiếp khách', N'<p>B&agrave;n tiếp kh&aacute;ch</p>
', N'<p>B&agrave;n tiếp kh&aacute;ch</p>
', N'/Images/products/phong-khach/001.jpg', N'Bàn tiếp khách', N'Bàn tiếp khách', N'Bàn tiếp khách', N'ban-tiep-khach', CAST(12999000 AS Decimal(18, 0)), CAST(9999000 AS Decimal(18, 0)), N'Size vừa', 0, 0, NULL, 0, NULL, CAST(N'2020-07-27T00:00:00.000' AS DateTime), CAST(N'2020-07-27T17:27:50.890' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (9, 7, N'P002', N'Bàn uống nước 1', N'<p>B&agrave;n uống nước với thiết kế sang trọng, m&agrave;u sắc tao nh&atilde; ph&ugrave; hợp với mọi kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch trong c&aacute;c căn hộ chung cư hiện đại. B&agrave;n uống nước tại xưởng mộc Ho&agrave;ng Hoan được thiết kế bằng chất liệu gỗ nhập khẩu trực tiếp đem đến trải nghiệm tuyệt vời cho ng&ocirc;i nh&agrave; của bạn.</p>', N'<h1>B&Agrave;N UỐNG NƯỚC - B&Agrave;N TR&Agrave; CAO CẤP CHO CHUNG CƯ</h1><p>B&agrave;n uống nước hay b&agrave;n tr&agrave; l&agrave; một trong những sản phẩm kh&ocirc;ng thể thiếu trong mọi ng&ocirc;i nh&agrave; hay trong c&aacute;c căn hộ chung cư, việc lựa chọn b&agrave;n uống nước, b&agrave;n tr&agrave; sao cho ph&ugrave; hợp với kh&ocirc;ng gian , m&agrave;u sắc ph&ograve;ng kh&aacute;ch m&agrave; kh&ocirc;ng ảnh hưởng tới bố cục của căn ph&ograve;ng v&ocirc; c&ugrave;ng quan trọng. Trong b&agrave;i viết n&agrave;y, xưởng mộc Ho&agrave;ng Hoan sẽ c&ugrave;ng c&aacute;c bạn tham khảo một số lưu &yacute; khi lựa chọn b&agrave;n uống nước cho căn ph&ograve;ng của m&igrave;nh.</p><h2>1/ Lựa chọn ph&ugrave; hợp với kh&ocirc;ng gian</h2><p>Một chiếc b&agrave;n uống nước được coi l&agrave; ph&ugrave; hợp v&agrave; ho&agrave;n hảo, điều đầu ti&ecirc;n cần phải ph&ugrave; hợp với kh&ocirc;ng gian của căn ph&ograve;ng nơi n&oacute; được trưng b&agrave;y, nghĩa l&agrave; chiếc b&agrave;n kh&ocirc;ng được qu&aacute; to hoặc kh&ocirc;ng qu&aacute; nhỏ m&agrave; cần h&agrave;i h&ograve;a với c&aacute;c vật dụng xung quanh chiếc b&agrave;n đ&oacute;. Điều đ&oacute; c&oacute; nghĩa gia chủ cần t&iacute;nh to&aacute;n, c&acirc;n nhắc rất nhiều trong trường hợp sử dụng c&aacute;c sản phẩm b&agrave;n uống nước được sản xuất c&oacute; sẵn tr&ecirc;n thị trường, để khi mua về chiếc b&agrave;n c&oacute; thể h&agrave;i h&ograve;a với căn ph&ograve;ng.</p><h2>2/ Lựa chọn b&agrave;n uống nước ph&ugrave; hợp với m&agrave;u sắc căn ph&ograve;ng.</h2><p>Ngo&agrave;i yếu tố ph&ugrave; hợp với kh&ocirc;ng gian căn ph&ograve;ng, m&agrave;u sắc của chiếc b&agrave;n tr&agrave; cũng cần được quan t&acirc;m để kh&ocirc;ng qu&aacute; nổi trội v&agrave; g&acirc;y ch&oacute;i mắt cho gia chủ cũng như bạn b&egrave; khi đến chơi nh&agrave;. Những chiếc b&agrave;n tr&agrave; n&ecirc;n c&oacute; m&agrave;u sắc ấm &aacute;p, nhẹ nh&agrave;ng để tạo cho kh&ocirc;ng gian khi thưởng thức tr&agrave; được thoải m&aacute;i nhất.</p><h2>3/ Lựa chọn thiết kế b&agrave;n tr&agrave; ph&ugrave; hợp.</h2><p>Với một căn ph&ograve;ng mang phong c&aacute;ch hiện đại, việc sử dụng một chiếc b&agrave;n uống nước cổ điển, truyền thống sẽ l&agrave;m hỏng kh&ocirc;ng gian v&agrave; g&acirc;y nhức mắt. Ch&iacute;nh v&igrave; vậy cần quan t&acirc;m rất lớn cho thiết kế b&agrave;n tr&agrave; khi lựa chọn cho căn ph&ograve;ng của gia đ&igrave;nh để mọi vật h&agrave;i h&ograve;a trong kh&ocirc;ng gian đ&oacute; nhất.&nbsp;</p><p>Những lưu &yacute; tưởng trừng như cơ bản ai cũng biết như tr&ecirc;n thực ra đ&atilde; c&oacute; rất nhiều người đ&atilde; v&agrave; đang gặp phải v&agrave; đ&atilde; phải thay thế những chiếc b&agrave;n uống nước kh&aacute;c cho căn ph&ograve;ng để chữa ch&aacute;y những lựa chọn trước đ&oacute; của ch&iacute;nh m&igrave;nh. Một lựa chọn an to&agrave;n cho mọi gia đ&igrave;nh khi lựa chọn c&aacute;c vật dụng nội thất như b&agrave;n uống nước, cầu thang, c&aacute;nh cửa, giường gỗ v&agrave; tủ gỗ,... l&agrave; lựa chọn c&aacute;c xưởng sản xuất uy t&iacute;n, nơi c&oacute; thể c&ugrave;ng cấp những lời tư vấn ph&ugrave; hợp nhất.</p><p>&nbsp;</p>', N'/Images/products/phong-khach/001.jpg', N'Bàn uống nước', N'Bàn uống nước, bàn trà, bàn uống nước chung cư, bàn trà chung cư', N'Bàn uống nước với thiết kế sang trọng, màu sắc tao nhã phù hợp với mọi không gian phòng khách trong các căn hộ chung cư hiện đại. Bàn uống nước tại xưởng mộc Hoàng Hoan được thiết kế bằng chất liệu gỗ nhập khẩu trực tiếp đem đến trải nghiệm tuyệt vời cho ngôi nhà của bạn.', N'ban-uong-nuoc', CAST(220000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), N'4 ngăn', 0, 0, NULL, NULL, 1, CAST(N'2020-08-26T00:00:00.000' AS DateTime), CAST(N'2020-08-26T18:53:29.497' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (10, 8, N'P003', N'Giường hộp ', N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
', N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
', N'/Images/products/phong-ngu/003.jpg', N'Giường hộp thiết kế sang trọng tiện ích', N'Giường hộp thiết kế sang trọng tiện ích', N'Giường hộp thiết kế sang trọng tiện ích', N'giuong-hop-thiet-ke-sang-trong-tien-ich', CAST(8999000 AS Decimal(18, 0)), CAST(5999000 AS Decimal(18, 0)), NULL, 0, 0, NULL, 0, NULL, CAST(N'2020-07-28T00:00:00.000' AS DateTime), CAST(N'2020-07-28T10:43:56.717' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (11, 10, N'P005', N'Bàn ăn nhà bếp', N'<p>B&agrave;n ăn nh&agrave; bếp sang trọng</p>
', N'<p>B&agrave;n ăn nh&agrave; bếp sang trọng</p>
', N'/Images/products/phong-bep/004.jpg', N'Bàn ăn nhà bếp sang trọng', N'Bàn ăn nhà bếp sang trọng', N'Bàn ăn nhà bếp sang trọng', N'ban-an-nha-bep-sang-trong', CAST(9870000 AS Decimal(18, 0)), CAST(9899000 AS Decimal(18, 0)), NULL, 0, 0, NULL, 0, NULL, CAST(N'2020-07-28T00:00:00.000' AS DateTime), CAST(N'2020-07-28T10:42:43.207' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (12, 7, N'P006', N'Bàn uống nước 2', N'<p>B&agrave;n uống nước 2</p>
', N'<p>B&agrave;n uống nước 2</p>
', N'/Images/products/phong-khach/015.jpg', N'BÀN UỐNG NƯỚC 2', N'Bàn uống nước 2', N'Bàn uống nước 2
', N'ban-uong-nuoc-2', CAST(3999000 AS Decimal(18, 0)), CAST(3999000 AS Decimal(18, 0)), N'Size vừa', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:00:00.000' AS DateTime), CAST(N'2020-07-31T00:49:13.867' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (13, 7, N'P007', N'Kệ để đồ', N'<p>Kệ để đồ</p>
', N'<p>Kệ để đồ</p>
', N'/Images/products/phong-khach/008.jpg', N'Kệ để đồ', N'Kệ để đồ', N'Kệ để đồ
', N'ke-de-do', CAST(15999000 AS Decimal(18, 0)), CAST(12999000 AS Decimal(18, 0)), N'4 ngăn', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:00:00.000' AS DateTime), CAST(N'2020-07-31T00:50:56.440' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (14, 7, N'P008', N'Kệ TV', N'<p>Kệ TV</p>
', N'<p>Kệ TV</p>
', N'/Images/products/phong-khach/002.jpg', N'Kệ TV', N'Kệ TV', N'Kệ TV
', N'ke-tv', CAST(15999000 AS Decimal(18, 0)), CAST(12899000 AS Decimal(18, 0)), N'4 ngăn', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:50:35.453' AS DateTime), CAST(N'2020-07-31T00:50:35.453' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (15, 8, N'P009', N'Tủ quần áo', N'<p>Tủ quần &aacute;o</p>
', N'<p>Tủ quần &aacute;o</p>
', N'/Images/products/phong-ngu/007.jpg', N'Tủ quần áo', N'Tủ quần áo', N'Tủ quần áo
', N'tu-quan-ao', CAST(15999000 AS Decimal(18, 0)), CAST(12999000 AS Decimal(18, 0)), N'4 ngăn, trắng, gỗ', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:55:32.307' AS DateTime), CAST(N'2020-07-31T00:55:32.307' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (17, 8, N'P010', N'Giường gỗ', N'<p>Giường gỗ</p>
', N'<p>Giường gỗ</p>
', N'/Images/products/phong-ngu/003.jpg', N'Giường gỗ', N'Giường gỗ', N'Giường gỗ
', N'giuong-go', CAST(20999000 AS Decimal(18, 0)), CAST(18999000 AS Decimal(18, 0)), N'Size vừa', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:00:00.000' AS DateTime), CAST(N'2020-07-31T01:15:39.390' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (18, 8, N'P011', N'Kệ đầu giường', N'<p>Kệ đầu giường</p>
', N'<p>Kệ đầu giường</p>
', N'/Images/products/phong-ngu/004.jpg', N'Kệ đầu giường', N'Kệ đầu giường', N'Kệ đầu giường
', N'ke-dau-giuong', CAST(20899000 AS Decimal(18, 0)), CAST(18899000 AS Decimal(18, 0)), N'2 ngăn', 0, 0, NULL, NULL, 1, CAST(N'2020-07-31T00:00:00.000' AS DateTime), CAST(N'2020-07-31T01:16:27.333' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (19, 8, N'P012', N'Giường châu âu', N'<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>
', N'<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>

<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>

<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>

<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>

<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>
', N'/Images/products/phong-ngu/013.jpg', N'Giường châu âu giá tốt tại hà nội', N'Giường châu âu', N'GIƯỜNG NGỦ TÂN CỔ ĐIỂN

Đối với không gian phòng ngủ thì nội thất quan trọng và được quan tâm nhiều nhất chính là chiếc giường ngủ. Giờ đây chiếc giường ngủ không đơn giản là nơi để con người nghỉ ngơi mà còn góp phần làm nên vẻ đẹp cho không gian sống riêng tư này. Nếu bạn đang sở hữu phòng ngủ kiển trúc tân cổ điển thì chiếc giường ngủ đồng hành phù hợp nhất
', N'giuong-chau-au-gia-tot', CAST(25999000 AS Decimal(18, 0)), CAST(22999000 AS Decimal(18, 0)), N'Size vừa', 0, 0, NULL, NULL, 1, CAST(N'2020-08-10T00:00:00.000' AS DateTime), CAST(N'2020-08-10T14:58:46.003' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (20, 7, N'P013', N'SOFA', N'SOFA', N'SOFA', N'/Images/products/phong-khach/011.jpg', N'SOFA', N'SOFA', N'SOFA', N'sofa', CAST(10000000 AS Decimal(18, 0)), CAST(8400000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:24:25.493' AS DateTime), CAST(N'2023-09-30T16:24:25.493' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (21, 7, N'P014', N'Bàn trà', N'Bàn trà', N'Bàn trà', N'/Images/products/phong-khach/009.jpg', N'Bàn trà', N'Bàn trà', N'Bàn trà', NULL, CAST(25999000 AS Decimal(18, 0)), CAST(22999000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:28:22.943' AS DateTime), CAST(N'2023-09-30T16:28:22.943' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (22, 11, N'P015', N'Bồn rửa mặt', N'Bồn rửa mặt', N'Bồn rửa mặt', N'/Images/products/phong-tam/005.jpg', N'Bồn rửa mặt', N'Bồn rửa mặt', N'Bồn rửa mặt', NULL, CAST(8500000 AS Decimal(18, 0)), CAST(8000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:43:15.333' AS DateTime), CAST(N'2023-09-30T16:43:15.333' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (23, 11, N'P016', N'Bồn rừa tay', N'Bồn rừa tay', N'Bồn rừa tay', N'/Images/products/phong-tam/006.jpg', N'Bồn rừa tay', N'Bồn rừa tay', N'Bồn rừa tay', N'bon-rua-tay', CAST(3950000 AS Decimal(18, 0)), CAST(3900000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:44:40.917' AS DateTime), CAST(N'2023-09-30T16:44:40.917' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (24, 11, N'P017', N'Tủ âm tường', N'Tủ âm tường', N'Tủ âm tường', N'/Images/products/phong-tam/007.jpg', N'Tủ âm tường', N'Tủ âm tường', N'Tủ âm tường', N'tu-am-tuong-p017', CAST(9500000 AS Decimal(18, 0)), CAST(8900000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:46:15.970' AS DateTime), CAST(N'2023-09-30T16:46:15.970' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (25, 11, N'P018', N'Bồn rửa 2', N'Bồn rửa 2', N'Bồn rửa 2', N'/Images/products/phong-tam/008.jpg', N'Bồn rửa 2', N'Bồn rửa 2', N'Bồn rửa 2', N'bon-rua-2-p018', CAST(4000000 AS Decimal(18, 0)), CAST(3300000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:46:59.757' AS DateTime), CAST(N'2023-09-30T16:46:59.757' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (26, 12, N'P019', N'Giường tầng', N'Giường tầng', N'Giường tầng', N'/Images/products/tre-em/016.jpg', N'Giường tầng', N'Giường tầng', N'Giường tầng', N'giuong-tang-p019', CAST(11000000 AS Decimal(18, 0)), CAST(9800000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:50:35.720' AS DateTime), CAST(N'2023-09-30T16:50:35.720' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (27, 12, N'P020', N'Bàn học', N'Bàn học', N'Bàn học', N'/Images/products/tre-em/017.jpg', N'Bàn học', N'Bàn học', N'Bàn học', N'ban-hoc-p020', CAST(3500000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:51:20.290' AS DateTime), CAST(N'2023-09-30T16:51:20.290' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (28, 13, N'P021', N'Ghế văn phòng', N'Ghế văn phòng', N'Ghế văn phòng', N'/Images/products/tre-em/018.jpg', N'Ghế văn phòng', N'Ghế văn phòng', N'Ghế văn phòng', N'ghe-van-phong-p021', CAST(6000000 AS Decimal(18, 0)), CAST(5700000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T16:58:15.040' AS DateTime), CAST(N'2023-09-30T16:58:15.040' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (29, 15, N'P022', N'Đèn chùm', N'Đèn chùm', N'Đèn chùm', N'/Images/products/do-trang-tri/020.jpg', N'Đèn chùm', N'Đèn chùm', N'Đèn chùm', N'den-chum-p022', CAST(5300000 AS Decimal(18, 0)), CAST(4300000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T17:00:32.483' AS DateTime), CAST(N'2023-09-30T17:00:32.483' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[PRODUCT] ([ID], [CID], [CODE], [TITLE], [DESCRIPTION], [CONTENT], [IMAGE], [META_TITLE], [META_KEYWORD], [META_DESCRIPTION], [SLUG], [PRICE_OLD], [PRICE_NEW], [SIZE], [VIEWS], [LIKES], [STAR], [HOME], [HOT], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (30, 14, N'P023', N'Cầu thang', N'Cầu thang', N'Cầu thang', N'/Images/products/cau-thang/019.jpg', N'Cầu thang', N'Cầu thang', N'Cầu thang', N'cau-thang-p023', CAST(35000000 AS Decimal(18, 0)), CAST(30000000 AS Decimal(18, 0)), NULL, NULL, NULL, NULL, 0, NULL, CAST(N'2023-09-30T17:08:24.570' AS DateTime), CAST(N'2023-09-30T17:08:24.570' AS DateTime), NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_EXTENSIONS] ON 

INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (1, 4, 1, N'<p>P002</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (2, 4, 2, N'<p>P002</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (3, 4, 3, N'<p>P002</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (4, 4, 4, N'<p>P002</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (5, 4, 5, N'<p>P002</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (6, 5, 1, N'<p>Sản phẩm 3</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (7, 5, 2, N'<p>1000</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (8, 5, 3, N'<p>1 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (9, 5, 4, N'<p>1 năm</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (10, 5, 5, N'<p>Đổi trả lại</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (11, 6, 1, N'<p>P004</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (12, 6, 2, N'<p>P004</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (13, 6, 3, N'<p>P004</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (14, 6, 4, N'<p>P004</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (15, 6, 5, N'<p>P004</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (16, 7, 1, N'<p>P005</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (17, 7, 2, N'<p>P005</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (18, 7, 3, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (19, 7, 4, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (20, 7, 5, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (71, 8, 1, N'<p>B&agrave;n tiếp kh&aacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (72, 8, 2, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (73, 8, 3, N'<p>P006</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (74, 8, 4, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (75, 8, 5, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (126, 11, 1, N'<p>B&agrave;n ăn nh&agrave; bếp sang trọng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (127, 11, 2, N'<p>B&agrave;n ăn nh&agrave; bếp sang trọng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (128, 11, 3, N'<p>B&agrave;n ăn nh&agrave; bếp sang trọng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (129, 11, 4, N'<p>Bảo h&agrave;nh l&ecirc;n đến 36 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (130, 11, 5, N'<p>Đổi trả h&agrave;ng trong 3 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (131, 10, 1, N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (132, 10, 2, N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (133, 10, 3, N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (134, 10, 4, N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (135, 10, 5, N'<p>Giường hộp thiết kế sang trọng tiện &iacute;ch</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (161, 12, 1, N'<p>B&agrave;n uống nước 2</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (162, 12, 2, N'<p>B&agrave;n uống nước 2</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (163, 12, 3, N'<p>B&agrave;n uống nước 2</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (164, 12, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 13 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (165, 12, 5, N'<p>B&agrave;n uống nước 2</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (166, 14, 1, N'<p>Kệ TV</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (167, 14, 2, N'<p>Kệ TV</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (168, 14, 3, N'<p>Kệ TV</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (169, 14, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 36 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (170, 14, 5, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (171, 13, 1, N'<p>Kệ để đồ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (172, 13, 2, N'<p>Kệ để đồ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (173, 13, 3, N'<p>Kệ để đồ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (174, 13, 4, N'<p>Bảo h&agrave;nh l&ecirc;n đến 12 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (175, 13, 5, N'<p>Kệ để đồ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (181, 15, 1, N'<p>Tủ quần &aacute;o</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (182, 15, 2, N'<p>Tủ quần &aacute;o</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (183, 15, 3, N'<p>Tủ quần &aacute;o</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (184, 15, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 12 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (185, 15, 5, N'<p>Đổi trả</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (186, 16, 1, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (187, 16, 2, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (188, 16, 3, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (189, 16, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 36 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (190, 16, 5, N'<p>Đổi trả h&agrave;ng trong v&ograve;ng 1 tuần</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (201, 17, 1, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (202, 17, 2, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (203, 17, 3, N'<p>Giường gỗ</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (204, 17, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 36 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (205, 17, 5, N'<p>Đổi trả h&agrave;ng trong v&ograve;ng 1 tuần</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (206, 18, 1, N'<p>Kệ đầu giường</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (207, 18, 2, N'<p>Kệ đầu giường</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (208, 18, 3, N'<p>Kệ đầu giường</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (209, 18, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 36 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (210, 18, 5, N'<p>Kệ đầu giường</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (231, 19, 1, N'<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (232, 19, 2, N'<h1>GIƯỜNG NGỦ T&Acirc;N CỔ ĐIỂN</h1>

<p>Đối với kh&ocirc;ng gian ph&ograve;ng ngủ th&igrave; nội thất quan trọng v&agrave; được quan t&acirc;m nhiều nhất ch&iacute;nh l&agrave; chiếc giường ngủ. Giờ đ&acirc;y chiếc giường ngủ kh&ocirc;ng đơn giản l&agrave; nơi để con người nghỉ ngơi m&agrave; c&ograve;n g&oacute;p phần l&agrave;m n&ecirc;n vẻ đẹp cho kh&ocirc;ng gian sống ri&ecirc;ng tư n&agrave;y. Nếu bạn đang sở hữu ph&ograve;ng ngủ kiển tr&uacute;c t&acirc;n cổ điển th&igrave; chiếc giường ngủ đồng h&agrave;nh ph&ugrave; hợp nhất</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (233, 19, 3, N'<p>Giường ch&acirc;u &acirc;u</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (234, 19, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 12 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (235, 19, 5, NULL)
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (351, 9, 1, N'<h1>B&Agrave;N UỐNG NƯỚC - B&Agrave;N TR&Agrave; CAO CẤP CHO CHUNG CƯ</h1>

<p>B&agrave;n uống nước hay b&agrave;n tr&agrave; l&agrave; một trong những sản phẩm kh&ocirc;ng thể thiếu trong mọi ng&ocirc;i nh&agrave; hay trong c&aacute;c căn hộ chung cư, việc lựa chọn b&agrave;n uống nước, b&agrave;n tr&agrave; sao cho ph&ugrave; hợp với kh&ocirc;ng gian , m&agrave;u sắc ph&ograve;ng kh&aacute;ch m&agrave; kh&ocirc;ng ảnh hưởng tới bố cục của căn ph&ograve;ng v&ocirc; c&ugrave;ng quan trọng. Trong b&agrave;i viết n&agrave;y, xưởng mộc Ho&agrave;ng Hoan sẽ c&ugrave;ng c&aacute;c bạn tham khảo một số lưu &yacute; khi lựa chọn b&agrave;n uống nước cho căn ph&ograve;ng của m&igrave;nh.</p>

<p><strong>1/ Lựa chọn ph&ugrave; hợp với kh&ocirc;ng gian</strong></p>

<p>Một chiếc b&agrave;n uống nước được coi l&agrave; ph&ugrave; hợp v&agrave; ho&agrave;n hảo, điều đầu ti&ecirc;n cần phải ph&ugrave; hợp với kh&ocirc;ng gian của căn ph&ograve;ng nơi n&oacute; được trưng b&agrave;y, nghĩa l&agrave; chiếc b&agrave;n kh&ocirc;ng được qu&aacute; to hoặc kh&ocirc;ng qu&aacute; nhỏ m&agrave; cần h&agrave;i h&ograve;a với c&aacute;c vật dụng xung quanh chiếc b&agrave;n đ&oacute;. Điều đ&oacute; c&oacute; nghĩa gia chủ cần t&iacute;nh to&aacute;n, c&acirc;n nhắc rất nhiều trong trường hợp sử dụng c&aacute;c sản phẩm b&agrave;n uống nước được sản xuất c&oacute; sẵn tr&ecirc;n thị trường, để khi mua về chiếc b&agrave;n c&oacute; thể h&agrave;i h&ograve;a với căn ph&ograve;ng.</p>

<p><strong>2/ Lựa chọn b&agrave;n uống nước ph&ugrave; hợp với m&agrave;u sắc căn ph&ograve;ng.</strong></p>

<p>Ngo&agrave;i yếu tố ph&ugrave; hợp với kh&ocirc;ng gian căn ph&ograve;ng, m&agrave;u sắc của chiếc b&agrave;n tr&agrave; cũng cần được quan t&acirc;m để kh&ocirc;ng qu&aacute; nổi trội v&agrave; g&acirc;y ch&oacute;i mắt cho gia chủ cũng như bạn b&egrave; khi đến chơi nh&agrave;. Những chiếc b&agrave;n tr&agrave; n&ecirc;n c&oacute; m&agrave;u sắc ấm &aacute;p, nhẹ nh&agrave;ng để tạo cho kh&ocirc;ng gian khi thưởng thức tr&agrave; được thoải m&aacute;i nhất.</p>

<p><strong>3/ Lựa chọn thiết kế b&agrave;n tr&agrave; ph&ugrave; hợp.</strong></p>

<p>Với một căn ph&ograve;ng mang phong c&aacute;ch hiện đại, việc sử dụng một chiếc b&agrave;n uống nước cổ điển, truyền thống sẽ l&agrave;m hỏng kh&ocirc;ng gian v&agrave; g&acirc;y nhức mắt. Ch&iacute;nh v&igrave; vậy cần quan t&acirc;m rất lớn cho thiết kế b&agrave;n tr&agrave; khi lựa chọn cho căn ph&ograve;ng của gia đ&igrave;nh để mọi vật h&agrave;i h&ograve;a trong kh&ocirc;ng gian đ&oacute; nhất.&nbsp;</p>

<p>Những lưu &yacute; tưởng trừng như cơ bản ai cũng biết như tr&ecirc;n thực ra đ&atilde; c&oacute; rất nhiều người đ&atilde; v&agrave; đang gặp phải v&agrave; đ&atilde; phải thay thế những chiếc b&agrave;n uống nước kh&aacute;c cho căn ph&ograve;ng để chữa ch&aacute;y những lựa chọn trước đ&oacute; của ch&iacute;nh m&igrave;nh. Một lựa chọn an to&agrave;n cho mọi gia đ&igrave;nh khi lựa chọn c&aacute;c vật dụng nội thất như b&agrave;n uống nước, cầu thang, c&aacute;nh cửa, giường gỗ v&agrave; tủ gỗ,... l&agrave; lựa chọn c&aacute;c xưởng sản xuất uy t&iacute;n, nơi c&oacute; thể c&ugrave;ng cấp những lời tư vấn ph&ugrave; hợp nhất.</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (352, 9, 2, N'<p>- B&agrave;n uống nước gỗ nhập khẩu</p>

<p>- Phong c&aacute;ch h&igrave;nh học tối giản</p>

<p>- Kệ b&ecirc;n trong c&oacute; k&iacute;ch thước ho&agrave;n hảo cho tạp ch&iacute;, đế l&oacute;t ly v&agrave; c&aacute;c phụ kiện ph&ograve;ng kh&aacute;ch kh&aacute;c - C&oacute; thể được sử dụng như một b&agrave;n TV thấp - Kệ mỏng ho&agrave;n hảo để chứa một hộp h&agrave;ng đầu hoặc đầu ph&aacute;t blu-ray - L&agrave;m bằng gỗ Sheesham cao cấp - Kh&ocirc;ng cần lắp r&aacute;p.</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (353, 9, 3, N'<p>- Việc sử dụng c&aacute;c chất liệu gỗ nhập khẩu cao cấp sẽ gi&uacute;p việc sử dụng l&acirc;u d&agrave;i v&agrave; c&oacute; gi&aacute; trị hơn, việc bảo quản c&aacute;c sản phẩm đồ gỗ từ xưởng mộc Ho&agrave;ng Hoan v&ocirc; c&ugrave;ng đơn giản, t&ugrave;y thuộc v&agrave;o mục đ&iacute;ch sử dụng của gia đ&igrave;nh m&agrave; ch&uacute;ng t&ocirc;i c&oacute; những tư vấn cụ thể nhất.</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (354, 9, 4, N'<p>Bảo h&agrave;nh sản phẩm l&ecirc;n đến 12 th&aacute;ng</p>
')
INSERT [dbo].[PRODUCT_EXTENSIONS] ([ID], [PID], [EID], [CONTENT]) VALUES (355, 9, 5, N'<p>Ho&agrave;ng Hoan cam kết đổi trả</p>

<p>Lắp r&aacute;p miễn ph&iacute;</p>

<p>Tư vấn nhiệt t&igrave;nh</p>
')
SET IDENTITY_INSERT [dbo].[PRODUCT_EXTENSIONS] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_IMAGES] ON 

INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (25, 8, N'/Content/Uploads/images/PHONG-KHACH/p002-small-1.jpg')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (26, 8, N'/Content/Uploads/images/PHONG-KHACH/p002-small-2.jpg')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (27, 8, N'/Content/Uploads/images/PHONG-KHACH/p002-small-3.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (28, 8, N'/Content/Uploads/images/PHONG-KHACH/p002-small-4.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (59, 10, N'/Content/Uploads/images/PHONG-KHACH/p002-small-1.jpg')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (60, 10, N'/Content/Uploads/images/PHONG-KHACH/p002-small-2.jpg')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (71, 12, N'/Content/Uploads/images/PHONG-KHACH/p002-small-3.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (72, 14, N'/Content/Uploads/images/san-pham/phong-khach-ke-ti-vi.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (73, 14, N'/Content/Uploads/images/san-pham/phong-khach-ke-ti-vi.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (74, 14, N'/Content/Uploads/images/san-pham/phong-khach-ke-ti-vi.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (75, 14, N'/Content/Uploads/images/san-pham/phong-khach-ke-ti-vi.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (76, 13, N'/Content/Uploads/images/san-pham/phong-khach-ke-de-do.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (77, 13, N'/Content/Uploads/images/san-pham/phong-khach-ke-de-do.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (78, 13, N'/Content/Uploads/images/san-pham/phong-khach-ke-de-do.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (79, 13, N'/Content/Uploads/images/san-pham/phong-khach-ke-de-do.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (88, 18, N'/Content/Uploads/images/san-pham/phong-ngu/ke-dau-giuong.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (89, 18, N'/Content/Uploads/images/san-pham/phong-ngu/ke-dau-giuong.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (90, 18, N'/Content/Uploads/images/san-pham/phong-ngu/ke-dau-giuong.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (91, 18, N'/Content/Uploads/images/san-pham/phong-ngu/ke-dau-giuong.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (108, 19, N'/Content/Uploads/images/san-pham/phong-ngu/giuong-chau-au.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (109, 19, N'/Content/Uploads/images/san-pham/phong-ngu/giuong-chau-au.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (110, 19, N'/Content/Uploads/images/san-pham/phong-ngu/giuong-chau-au.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (203, 9, N'/Content/Uploads/images/PHONG-KHACH/p002-small-4.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (204, 9, N'/Content/Uploads/images/san-pham/phong-khach-ban-uong-nuoc.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (205, 9, N'/Content/Uploads/images/san-pham/phong-khach-ban-uong-nuoc.png')
INSERT [dbo].[PRODUCT_IMAGES] ([ID], [PID], [IMAGE]) VALUES (206, 9, N'/Content/Uploads/images/san-pham/phong-khach-ban-uong-nuoc.png')
SET IDENTITY_INSERT [dbo].[PRODUCT_IMAGES] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_MATERIALS] ON 

INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (1, 4, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (2, 4, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (3, 4, 3)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (4, 4, 4)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (5, 5, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (6, 5, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (7, 6, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (8, 6, 4)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (9, 7, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (10, 7, 3)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (31, 8, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (32, 8, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (51, 11, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (52, 11, 4)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (53, 10, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (54, 10, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (66, 12, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (67, 14, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (68, 13, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (72, 16, 6)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (75, 17, 6)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (76, 18, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (81, 19, 7)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (151, 9, 1)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (152, 9, 2)
INSERT [dbo].[PRODUCT_MATERIALS] ([ID], [PID], [MID]) VALUES (153, 9, 4)
SET IDENTITY_INSERT [dbo].[PRODUCT_MATERIALS] OFF
GO
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__PRODUCT_C__CREAT__25518C17]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__PRODUCT_C__UPDAT__2645B050]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__PRODUCT_C__PROJE__2739D489]  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__PRODUCT_C__PROJE__282DF8C2]  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[EXTENSION] ADD  CONSTRAINT [DF__PRODUCT_E__CREAT__3A81B327]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[EXTENSION] ADD  CONSTRAINT [DF__PRODUCT_E__UPDAT__3B75D760]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[EXTENSION] ADD  CONSTRAINT [DF__PRODUCT_E__STATU__3C69FB99]  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[EXTENSION] ADD  CONSTRAINT [DF__PRODUCT_E__ISDEL__3D5E1FD2]  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[INTRODUCTIONS] ADD  CONSTRAINT [DF__INTRODUCT__IMAGE__5070F446]  DEFAULT ('NO_IMAGE_AVAILABLE.jpg') FOR [IMAGE]
GO
ALTER TABLE [dbo].[INTRODUCTIONS] ADD  CONSTRAINT [DF__INTRODUCT__CREAT__5165187F]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[INTRODUCTIONS] ADD  CONSTRAINT [DF__INTRODUCT__UPDAT__52593CB8]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[INTRODUCTIONS] ADD  CONSTRAINT [DF__INTRODUCT__STATU__534D60F1]  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[INTRODUCTIONS] ADD  CONSTRAINT [DF__INTRODUCT__ISDEL__5441852A]  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[NEWS] ADD  CONSTRAINT [DF__NEWS__IMAGE__31EC6D26]  DEFAULT ('NO_IMAGE_AVAILABLE.jpg') FOR [IMAGE]
GO
ALTER TABLE [dbo].[NEWS] ADD  CONSTRAINT [DF__NEWS__CREATED__32E0915F]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[NEWS] ADD  CONSTRAINT [DF__NEWS__UPDATED__33D4B598]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[NEWS] ADD  CONSTRAINT [DF__NEWS__STATUS__34C8D9D1]  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[NEWS] ADD  CONSTRAINT [DF__NEWS__ISDELET__35BCFE0A]  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT ('NO_IMAGE_AVAILABLE.jpg') FOR [LOGO]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT ((1)) FOR [ORDERS]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[PARTNER] ADD  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__IMAGE__31EC6D26]  DEFAULT ('NO_IMAGE_AVAILABLE.jpg') FOR [IMAGE]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_HOME]  DEFAULT ((0)) FOR [HOME]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__CREATED__32E0915F]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__UPDATED__33D4B598]  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__STATUS__34C8D9D1]  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__ISDELET__35BCFE0A]  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[SLIDES] ADD  DEFAULT ('NO_IMAGE_AVAILABLE.jpg') FOR [IMAGE]
GO
ALTER TABLE [dbo].[SLIDES] ADD  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[SLIDES] ADD  DEFAULT (getdate()) FOR [UPDATED_DATE]
GO
ALTER TABLE [dbo].[SLIDES] ADD  DEFAULT ((1)) FOR [STATUS]
GO
ALTER TABLE [dbo].[SLIDES] ADD  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([IDORDER])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_PRODUCT] FOREIGN KEY([IDPRODUCT])
REFERENCES [dbo].[PRODUCT] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_PRODUCT]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([IDCUSTOMER])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO

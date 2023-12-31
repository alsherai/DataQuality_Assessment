USE [master]
GO
/****** Object:  Database [IPEA]    Script Date: 8/9/2023 10:05:49 PM ******/
CREATE DATABASE [IPEA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IPEA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\IPEA.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IPEA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\IPEA_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [IPEA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IPEA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IPEA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IPEA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IPEA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IPEA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IPEA] SET ARITHABORT OFF 
GO
ALTER DATABASE [IPEA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IPEA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IPEA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IPEA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IPEA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IPEA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IPEA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IPEA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IPEA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IPEA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IPEA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IPEA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IPEA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IPEA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IPEA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IPEA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IPEA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IPEA] SET RECOVERY FULL 
GO
ALTER DATABASE [IPEA] SET  MULTI_USER 
GO
ALTER DATABASE [IPEA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IPEA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IPEA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IPEA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IPEA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IPEA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'IPEA', N'ON'
GO
ALTER DATABASE [IPEA] SET QUERY_STORE = ON
GO
ALTER DATABASE [IPEA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [IPEA]
GO
/****** Object:  Table [dbo].[R_03]    Script Date: 8/9/2023 10:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_03](
	[ProductID] [tinyint] NULL,
	[DuplicateCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_04]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_04](
	[OrderID] [smallint] NULL,
	[DuplicateCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_06]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_06](
	[ProductID] [tinyint] NULL,
	[ProductCategory] [nvarchar](50) NULL,
	[DiscountedPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_07]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_07](
	[SalesYear] [int] NULL,
	[SalesMonth] [int] NULL,
	[ProductID] [int] NULL,
	[TotalQuantity] [int] NULL,
	[MeanQuantity] [float] NULL,
	[StdDevQuantity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_05]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_05](
	[ProductID] [tinyint] NULL,
	[ProductCategory] [nvarchar](50) NULL,
	[ListedPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_08]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_08](
	[CustomerID] [int] NULL,
	[CustomerBirthDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_09]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_09](
	[OrderID] [int] NULL,
	[OrderDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_10]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_10](
	[ProductID] [int] NULL,
	[DiscountedPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_11]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_11](
	[ProductID] [int] NULL,
	[ListedPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_12]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_12](
	[OrderID] [int] NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_13]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_13](
	[CustomerID] [int] NULL,
	[CustomerCity] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_14]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_14](
	[CustomerID] [int] NULL,
	[CustomerState] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_15]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_15](
	[ProductID] [int] NULL,
	[ProductCategory] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_16]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_16](
	[ProductID] [int] NULL,
	[ProductName] [varchar](255) NULL,
	[DiscountedPrice] [float] NULL,
	[ListedPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_17]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_17](
	[CustomerID] [int] NULL,
	[CustomerCity] [varchar](255) NULL,
	[CustomerState] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [tinyint] NOT NULL,
	[CustomerBirthDate] [date] NULL,
	[CustomerCity] [nvarchar](50) NOT NULL,
	[CustomerState] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_01]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_01](
	[TableName] [varchar](255) NULL,
	[ColumnName] [varchar](255) NULL,
	[TotalRows] [int] NULL,
	[NullRows] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [tinyint] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductCategory] [nvarchar](50) NULL,
	[ListedPrice] [float] NOT NULL,
	[DiscountedPrice] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[OrderID] [smallint] NOT NULL,
	[OrderDate] [date] NULL,
	[CustomerID] [tinyint] NOT NULL,
	[ProductID] [tinyint] NULL,
	[Quantity] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_02]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_02](
	[CustomerID] [int] NULL,
	[DuplicateCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[RuleSummaryView]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[RuleSummaryView] AS
SELECT
    'R_01' AS RuleID,
    (SELECT sum(NullRows) FROM R_01) AS RuleCount,
    'All CDEs' AS DAMADimension,
    5124 AS SourceTableCount,
    0 AS FailingPercentageThreshold,
	Format(((Select sum(NullRows) from R_01) / 5124.0),'N4') As PreResults 
UNION ALL
SELECT
    'R_02' AS RuleID,
    (SELECT COUNT(*) FROM R_02) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_02) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2') AS PreResult

UNION ALL
SELECT
    'R_03' AS RuleID,
    (SELECT COUNT(*) FROM R_03) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_03) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_04' AS RuleID,
    (SELECT COUNT(*) FROM R_04) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_04) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N4')AS PreResult
UNION ALL
SELECT
    'R_05' AS RuleID,
    (SELECT COUNT(*) FROM R_05) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_05) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_06' AS RuleID,
    (SELECT COUNT(*) FROM R_06) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_06) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_07' AS RuleID,
    (SELECT COUNT(*) FROM R_07) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_07) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N2')AS PreResult
UNION ALL
SELECT
    'R_08' AS RuleID,
    (SELECT COUNT(*) FROM R_08) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_08) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_09' AS RuleID,
    (SELECT COUNT(*) FROM R_09) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_09) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N3')AS PreResult
UNION ALL
SELECT
    'R_10' AS RuleID,
    (SELECT COUNT(*) FROM R_10) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_10) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_11' AS RuleID,
    (SELECT COUNT(*) FROM R_11) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_11) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_12' AS RuleID,
    (SELECT COUNT(*) FROM R_12) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_12) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N2')AS PreResult
UNION ALL
SELECT
    'R_13' AS RuleID,
    (SELECT COUNT(*) FROM R_13) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_13) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_14' AS RuleID,
    (SELECT COUNT(*) FROM R_14) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_14) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_15' AS RuleID,
    (SELECT COUNT(*) FROM R_15) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_15) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_16' AS RuleID,
    (SELECT COUNT(*) FROM R_16) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_16) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_17' AS RuleID,
    (SELECT COUNT(*) FROM R_17) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_17) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult

GO
/****** Object:  Table [dbo].[cde]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cde](
	[CDE_ID] [nvarchar](50) NOT NULL,
	[CDE_Name] [nvarchar](50) NOT NULL,
	[CDE_Description] [nvarchar](50) NOT NULL,
	[Table] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dq]    Script Date: 8/9/2023 10:05:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dq](
	[Rule_ID] [nvarchar](50) NOT NULL,
	[DQ_Rule_Description] [nvarchar](300) NOT NULL,
	[CDE_ID] [nvarchar](50) NOT NULL,
	[DAMA_Dimension] [nvarchar](50) NOT NULL,
	[Failing_Percentage_Threshold] [nvarchar](50) NOT NULL,
	[PreResult] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [IPEA] SET  READ_WRITE 
GO

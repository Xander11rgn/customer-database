USE [master]
GO
/****** Object:  Database [CustomerLib_Makarov]    Script Date: 17.11.2021 15:15:18 ******/
CREATE DATABASE [CustomerLib_Makarov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Customer', FILENAME = N'G:\SQL Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Customer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Customer_log', FILENAME = N'G:\SQL Server 2019\MSSQL15.MSSQLSERVER\MSSQL\DATA\Customer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CustomerLib_Makarov] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerLib_Makarov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CustomerLib_Makarov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ARITHABORT OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CustomerLib_Makarov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CustomerLib_Makarov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CustomerLib_Makarov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CustomerLib_Makarov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET RECOVERY FULL 
GO
ALTER DATABASE [CustomerLib_Makarov] SET  MULTI_USER 
GO
ALTER DATABASE [CustomerLib_Makarov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CustomerLib_Makarov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CustomerLib_Makarov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CustomerLib_Makarov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CustomerLib_Makarov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CustomerLib_Makarov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CustomerLib_Makarov', N'ON'
GO
ALTER DATABASE [CustomerLib_Makarov] SET QUERY_STORE = OFF
GO
USE [CustomerLib_Makarov]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 17.11.2021 15:15:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressLine] [nvarchar](100) NOT NULL,
	[AddressLine2] [nvarchar](100) NULL,
	[AddressTypeId] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](6) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressTypes]    Script Date: 17.11.2021 15:15:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressTypes](
	[AddressTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AddressType] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_AddressTypes] PRIMARY KEY CLUSTERED 
(
	[AddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_AddressTypes_AddressType] UNIQUE NONCLUSTERED 
(
	[AddressType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 17.11.2021 15:15:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](13) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Countries_CountryName] UNIQUE NONCLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 17.11.2021 15:15:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CustomerPhoneNumber] [nvarchar](16) NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[Notes] [ntext] NOT NULL,
	[TotalPurchasesAmount] [smallmoney] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Customer_Mail] UNIQUE NONCLUSTERED 
(
	[CustomerEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Customer_Phone] UNIQUE NONCLUSTERED 
(
	[CustomerPhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Address_AddressTypes] FOREIGN KEY([AddressTypeId])
REFERENCES [dbo].[AddressTypes] ([AddressTypeId])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Address_AddressTypes]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Address_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Address_Countries]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Address_Customer]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [CK_Address_AddressLine] CHECK  ((len([AddressLine])<=(100)))
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [CK_Address_AddressLine]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [CK_Address_AddressLine2] CHECK  ((len([AddressLine2])<=(100)))
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [CK_Address_AddressLine2]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [CK_Address_City] CHECK  ((len([City])<=(50)))
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [CK_Address_City]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [CK_Address_PostalCode] CHECK  ((len([PostalCode])<=(6)))
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [CK_Address_PostalCode]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [CK_Address_State] CHECK  ((len([State])<=(20)))
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [CK_Address_State]
GO
ALTER TABLE [dbo].[AddressTypes]  WITH CHECK ADD  CONSTRAINT [CK_AddressTypes_AddressType] CHECK  (([AddressType] like 'Shipping' OR [AddressType] like 'Billing'))
GO
ALTER TABLE [dbo].[AddressTypes] CHECK CONSTRAINT [CK_AddressTypes_AddressType]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [CK_Countries_CountryName] CHECK  (([CountryName] like 'United States' OR [CountryName] like 'Canada'))
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [CK_Countries_CountryName]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [CK_Customer_FirstName] CHECK  ((len([FirstName])<=(50)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [CK_Customer_FirstName]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [CK_Customer_LastName] CHECK  ((len([LastName])<=(50)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [CK_Customer_LastName]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [CK_Customer_Mail] CHECK  ((len([CustomerEmail])<=(100) AND [CustomerEmail] like '%@%.%'))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [CK_Customer_Mail]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [CK_Customer_Phone] CHECK  ((len([CustomerPhoneNumber])<=(16) AND [CustomerPhoneNumber] like '+%[0-9]%'))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [CK_Customer_Phone]
GO
USE [master]
GO
ALTER DATABASE [CustomerLib_Makarov] SET  READ_WRITE 
GO

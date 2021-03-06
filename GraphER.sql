USE [master]
GO
/****** Object:  Database [GraphER]    Script Date: 28.01.2021 18:39:30 ******/
CREATE DATABASE [GraphER]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GraphER', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GraphER.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GraphER_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\GraphER_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GraphER] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GraphER].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GraphER] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GraphER] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GraphER] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GraphER] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GraphER] SET ARITHABORT OFF 
GO
ALTER DATABASE [GraphER] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GraphER] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GraphER] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GraphER] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GraphER] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GraphER] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GraphER] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GraphER] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GraphER] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GraphER] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GraphER] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GraphER] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GraphER] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GraphER] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GraphER] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GraphER] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GraphER] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GraphER] SET RECOVERY FULL 
GO
ALTER DATABASE [GraphER] SET  MULTI_USER 
GO
ALTER DATABASE [GraphER] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GraphER] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GraphER] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GraphER] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GraphER] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GraphER', N'ON'
GO
ALTER DATABASE [GraphER] SET QUERY_STORE = OFF
GO
USE [GraphER]
GO
/****** Object:  Table [dbo].[Rejestracja_G]    Script Date: 28.01.2021 18:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rejestracja_G](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [nvarchar](50) NOT NULL,
	[nazwisko] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[telefon] [varchar](10) NOT NULL,
	[haslo] [nvarchar](50) NOT NULL,
	[pow_haslo] [nvarchar](50) NOT NULL,
	[firma] [nvarchar](50) NULL,
	[usluga] [nvarchar](50) NULL,
	[region] [nvarchar](50) NULL,
	[o_mnie] [text] NULL,
 CONSTRAINT [PK_Rejestracja_G_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rez]    Script Date: 28.01.2021 18:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rez](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rezerwacja] [text] NOT NULL,
	[czas] [time](7) NOT NULL,
 CONSTRAINT [PK_Rez] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 28.01.2021 18:39:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email_specjalista] [nvarchar](50) NOT NULL,
	[email_klient] [nvarchar](50) NULL,
	[rezerwacja_data] [text] NULL,
	[rezerwacja_czas_start] [time](7) NULL,
	[rezerwacja_czas_stop] [time](7) NULL,
	[opis] [text] NULL,
 CONSTRAINT [PK_Rezerwacha] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [GraphER] SET  READ_WRITE 
GO

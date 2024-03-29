USE [master]
GO
/****** Object:  Database [gurpreet]    Script Date: 10/11/2019 10:29:14 PM ******/
CREATE DATABASE [gurpreet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gurpreet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\gurpreet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gurpreet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\gurpreet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [gurpreet] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gurpreet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gurpreet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gurpreet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gurpreet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gurpreet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gurpreet] SET ARITHABORT OFF 
GO
ALTER DATABASE [gurpreet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gurpreet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gurpreet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gurpreet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gurpreet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gurpreet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gurpreet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gurpreet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gurpreet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gurpreet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gurpreet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gurpreet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gurpreet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gurpreet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gurpreet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gurpreet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gurpreet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gurpreet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gurpreet] SET  MULTI_USER 
GO
ALTER DATABASE [gurpreet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gurpreet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gurpreet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gurpreet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gurpreet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gurpreet] SET QUERY_STORE = OFF
GO
USE [gurpreet]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 10/11/2019 10:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [varchar](40) NOT NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[candidate]    Script Date: 10/11/2019 10:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidate](
	[username] [varchar](40) NOT NULL,
	[age] [int] NULL,
	[dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publish]    Script Date: 10/11/2019 10:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publish](
	[Id] [int] NOT NULL,
	[publication_place] [varchar](40) NULL,
	[publication_date] [varchar](30) NULL,
	[publisher] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 10/11/2019 10:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[username] [varchar](40) NOT NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([username], [password]) VALUES (N'admin', N'admin')
INSERT [dbo].[publish] ([Id], [publication_place], [publication_date], [publisher]) VALUES (1, N'Canada', N'12/dec/2019', N'IJRCR')
INSERT [dbo].[publish] ([Id], [publication_place], [publication_date], [publisher]) VALUES (2, N'India', N'12/Jan/2020', N'IJUUE')
INSERT [dbo].[publish] ([Id], [publication_place], [publication_date], [publisher]) VALUES (3, N'Canada', N'13/feb/2020', N'IJRRE')
INSERT [dbo].[register] ([username], [password]) VALUES (N'gurpreet', N'123')
ALTER TABLE [dbo].[candidate]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[register] ([username])
GO
USE [master]
GO
ALTER DATABASE [gurpreet] SET  READ_WRITE 
GO

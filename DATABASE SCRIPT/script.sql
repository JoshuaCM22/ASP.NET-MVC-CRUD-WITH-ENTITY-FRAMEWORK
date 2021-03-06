USE [master]
GO
/****** Object:  Database [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB]    Script Date: 26/06/2020 2:29:31 PM ******/
CREATE DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Employee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Employee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET  MULTI_USER 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET QUERY_STORE = OFF
GO
USE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 26/06/2020 2:29:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[Office] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Salary] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (1, N'Joshua C. Magoliman', N'Programmer', N'IT Department', 22, 5000)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary]) VALUES (2, N'Joanna Mae C. Magoliman', N'Corporate Banker', N'Finance Department', 18, 1000)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
USE [master]
GO
ALTER DATABASE [ASP.NET_MVC_CRUD_WITH_ENTITY_FRAMEWORK_DB] SET  READ_WRITE 
GO

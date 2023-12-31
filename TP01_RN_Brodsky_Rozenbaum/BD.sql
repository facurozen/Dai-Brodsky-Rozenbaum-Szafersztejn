USE [master]
GO
/****** Object:  Database [BD]    Script Date: 22/9/2023 12:09:55 ******/
CREATE DATABASE [BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD] SET RECOVERY FULL 
GO
ALTER DATABASE [BD] SET  MULTI_USER 
GO
ALTER DATABASE [BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD', N'ON'
GO
ALTER DATABASE [BD] SET QUERY_STORE = OFF
GO
USE [BD]
GO
/****** Object:  User [Usuario]    Script Date: 22/9/2023 12:09:55 ******/
CREATE USER [Usuario] FOR LOGIN [Usuario] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alumno]    Script Date: 22/9/2023 12:09:55 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Usuario]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 22/9/2023 12:09:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (4, N'Chinogamer20', N'ninjago', N'Agustin', N'Brodsky')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (5, N'Facundito', N'ditodito', N'Facundo', N'Rozenbaum')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (6, N'Usuario', N'Password', N'Nombre', N'Apellido')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (7, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (8, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (9, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (10, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (11, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (12, N'anal', N'pil', N'po', N'lima westr coast')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (13, N'ascsa', N'', N'', N'')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (14, N'ElmasCapito21', N'PepeElgrillo', N'Matias', N'Rozenbaum')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (15, N'ElmasCapito21', N'PepeElgrillo', N'Matias', N'Rozenbaum')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (16, N'Mariposon06', N'marimaripopo', N'Esteban', N'Quito')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (17, N'Mariposon06', N'marimaripopo', N'Esteban', N'Quito')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (18, N'Mariposon06', N'marimaripopo', N'Esteban', N'Quito')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (19, N'sac', N'sadsa', N'asda', N'sa')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (20, N'Susana', N'Horia', N'manteca', N'toca')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (21, N'Acuña', N'elhueevoo', N'Rompe', N'Melano')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (22, N'mari', N'popo', N'mari', N'sasa')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (23, N'Nacho', N'Perdon', N'Tequiero ', N'un Monton')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (24, N'Nacho', N'Perdon', N'Tequiero ', N'un Monton')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (25, N'Nacho', N'Perdon', N'Tequiero ', N'un Monton')
INSERT [dbo].[Usuario] ([Id], [Usuario], [Password], [Nombre], [Apellido]) VALUES (26, N'Facu', N'no', N'lo necesito albeto', N'bullicio')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
USE [master]
GO
ALTER DATABASE [BD] SET  READ_WRITE 
GO

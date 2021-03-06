USE [master]
GO
/****** Object:  Database [Negocio_Regalos]    Script Date: 08/11/2020 07:48:00 p.m. ******/
CREATE DATABASE [Negocio_Regalos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Negocio_Regalos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Negocio_Regalos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Negocio_Regalos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Negocio_Regalos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Negocio_Regalos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Negocio_Regalos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Negocio_Regalos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Negocio_Regalos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Negocio_Regalos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Negocio_Regalos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Negocio_Regalos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Negocio_Regalos] SET  MULTI_USER 
GO
ALTER DATABASE [Negocio_Regalos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Negocio_Regalos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Negocio_Regalos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Negocio_Regalos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Negocio_Regalos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Negocio_Regalos] SET QUERY_STORE = OFF
GO
USE [Negocio_Regalos]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 08/11/2020 07:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[precio] [float] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 08/11/2020 07:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[codigoCompra] [int] IDENTITY(1,1) NOT NULL,
	[codigoPareja] [int] NOT NULL,
	[codigo] [int] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[codigoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposito]    Script Date: 08/11/2020 07:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposito](
	[codigoDeposito] [int] IDENTITY(1,1) NOT NULL,
	[importe] [float] NOT NULL,
	[codigoPareja] [int] NOT NULL,
	[NombreDepositante] [varchar](50) NOT NULL,
	[ApellidoDepositante] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Deposito] PRIMARY KEY CLUSTERED 
(
	[codigoDeposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parejas]    Script Date: 08/11/2020 07:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parejas](
	[codigoPareja] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Parejas] PRIMARY KEY CLUSTERED 
(
	[codigoPareja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 08/11/2020 07:48:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuario] [nvarchar](10) NOT NULL,
	[password] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([codigo], [precio], [descripcion]) VALUES (1, 200, N'Flota Flota')
INSERT [dbo].[Articulos] ([codigo], [precio], [descripcion]) VALUES (2, 4500, N'Termo')
INSERT [dbo].[Articulos] ([codigo], [precio], [descripcion]) VALUES (3, 360, N'Mes Netflix')
INSERT [dbo].[Articulos] ([codigo], [precio], [descripcion]) VALUES (4, 16300, N'Mini Bar')
INSERT [dbo].[Articulos] ([codigo], [precio], [descripcion]) VALUES (5, 8696, N'Vinoteca mini')
SET IDENTITY_INSERT [dbo].[Articulos] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([codigoCompra], [codigoPareja], [codigo]) VALUES (1, 1, 1)
INSERT [dbo].[Compra] ([codigoCompra], [codigoPareja], [codigo]) VALUES (2, 2, 2)
INSERT [dbo].[Compra] ([codigoCompra], [codigoPareja], [codigo]) VALUES (3, 3, 1)
INSERT [dbo].[Compra] ([codigoCompra], [codigoPareja], [codigo]) VALUES (4, 2, 3)
INSERT [dbo].[Compra] ([codigoCompra], [codigoPareja], [codigo]) VALUES (5, 1, 2)
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposito] ON 

INSERT [dbo].[Deposito] ([codigoDeposito], [importe], [codigoPareja], [NombreDepositante], [ApellidoDepositante]) VALUES (1, 15000, 1, N'Ignacio', N'Mansilla')
INSERT [dbo].[Deposito] ([codigoDeposito], [importe], [codigoPareja], [NombreDepositante], [ApellidoDepositante]) VALUES (2, 20000, 2, N'Ignacio', N'Mansilla')
INSERT [dbo].[Deposito] ([codigoDeposito], [importe], [codigoPareja], [NombreDepositante], [ApellidoDepositante]) VALUES (3, 2500, 3, N'Granada', N'Milagros')
SET IDENTITY_INSERT [dbo].[Deposito] OFF
GO
SET IDENTITY_INSERT [dbo].[Parejas] ON 

INSERT [dbo].[Parejas] ([codigoPareja], [nombre]) VALUES (1, N'Pica Pica')
INSERT [dbo].[Parejas] ([codigoPareja], [nombre]) VALUES (2, N'Tommy y dali')
INSERT [dbo].[Parejas] ([codigoPareja], [nombre]) VALUES (3, N'Pipa y tabaco')
SET IDENTITY_INSERT [dbo].[Parejas] OFF
GO
INSERT [dbo].[Usuario] ([usuario], [password]) VALUES (N'parcial', N'lab4')
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Articulos] FOREIGN KEY([codigo])
REFERENCES [dbo].[Articulos] ([codigo])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Articulos]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Parejas] FOREIGN KEY([codigoPareja])
REFERENCES [dbo].[Parejas] ([codigoPareja])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Parejas]
GO
ALTER TABLE [dbo].[Deposito]  WITH CHECK ADD  CONSTRAINT [FK_Deposito_Parejas] FOREIGN KEY([codigoPareja])
REFERENCES [dbo].[Parejas] ([codigoPareja])
GO
ALTER TABLE [dbo].[Deposito] CHECK CONSTRAINT [FK_Deposito_Parejas]
GO
USE [master]
GO
ALTER DATABASE [Negocio_Regalos] SET  READ_WRITE 
GO

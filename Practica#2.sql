USE [muebleria]
GO
/****** Object:  Index [Ventasdeldia]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Ventasdeldia] ON [dbo].[ticket]
GO
/****** Object:  Index [Sucursales]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Sucursales] ON [dbo].[Sucursal]
GO
/****** Object:  Index [Ventas]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Ventas] ON [dbo].[PedidosDomicilio]
GO
/****** Object:  Index [Nombres_Empleados]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Empleados] ON [dbo].[Empleados]
GO
/****** Object:  Index [Nombres_Sofas]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Sofas] ON [dbo].[AlamcenSofas]
GO
/****** Object:  Index [Nombres_Sillones]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Sillones] ON [dbo].[AlamcenSillones]
GO
/****** Object:  Index [Nombres_Salas]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Salas] ON [dbo].[AlamcenSalas]
GO
/****** Object:  Index [Nombres_Recamaras]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Recamaras] ON [dbo].[AlamcenRecamaras]
GO
/****** Object:  Index [Nombres_Libreros]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Libreros] ON [dbo].[AlamcenLibreros]
GO
/****** Object:  Index [Nombres_Colchones]    Script Date: 28/02/2019 23:04:38 ******/
DROP INDEX [Nombres_Colchones] ON [dbo].[AlamcenColchones]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[PedidosDomicilio]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[PedidosDomicilio]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[AlamcenSofas]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenSofas]
GO
/****** Object:  Table [dbo].[AlamcenSillones]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenSillones]
GO
/****** Object:  Table [dbo].[AlamcenSalas]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenSalas]
GO
/****** Object:  Table [dbo].[AlamcenRecamaras]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenRecamaras]
GO
/****** Object:  Table [dbo].[AlamcenLibreros]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenLibreros]
GO
/****** Object:  Table [dbo].[AlamcenColchones]    Script Date: 28/02/2019 23:04:38 ******/
DROP TABLE [dbo].[AlamcenColchones]
GO
USE [master]
GO
/****** Object:  Database [muebleria]    Script Date: 28/02/2019 23:04:38 ******/
DROP DATABASE [muebleria]
GO
/****** Object:  Database [muebleria]    Script Date: 28/02/2019 23:04:38 ******/
CREATE DATABASE [muebleria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'muebleria', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\muebleria.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'muebleria_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\muebleria_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [muebleria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [muebleria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [muebleria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [muebleria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [muebleria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [muebleria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [muebleria] SET ARITHABORT OFF 
GO
ALTER DATABASE [muebleria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [muebleria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [muebleria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [muebleria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [muebleria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [muebleria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [muebleria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [muebleria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [muebleria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [muebleria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [muebleria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [muebleria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [muebleria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [muebleria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [muebleria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [muebleria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [muebleria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [muebleria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [muebleria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [muebleria] SET  MULTI_USER 
GO
ALTER DATABASE [muebleria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [muebleria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [muebleria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [muebleria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [muebleria]
GO
/****** Object:  Table [dbo].[AlamcenColchones]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenColchones](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Librero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenLibreros]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenLibreros](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Librero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenRecamaras]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenRecamaras](
	[Id_Librero] [int] NOT NULL,
	[nombreLibrero] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Librero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSalas]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSalas](
	[Id_Sala] [int] NOT NULL,
	[nombreSala] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSillones]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSillones](
	[Id_Sillon] [int] NOT NULL,
	[nombreSillon] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sillon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlamcenSofas]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlamcenSofas](
	[Id_Sofa] [int] NOT NULL,
	[nombreSofa] [varchar](50) NULL,
	[costo] [money] NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sofa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id_Empleado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[Appaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[fechanac] [date] NULL,
	[edad]  AS (datediff(year,[fechanac],getdate())),
	[nombre_Completo]  AS (((([nombre]+'')+[ApPaterno])+'')+[ApMaterno]),
	[direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidosDomicilio]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidosDomicilio](
	[Id_Pedido] [uniqueidentifier] NOT NULL,
	[producto_id] [int] NULL,
	[dia_compra] [date] NULL,
	[hora_compra] [time](7) NULL,
	[precio_total] [money] NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero]),
PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[negocio_id] [int] NULL,
	[nombre_sucursal] [varchar](30) NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 28/02/2019 23:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ticket](
	[ticket_id] [int] NULL,
	[negocio_id] [varchar](30) NULL,
	[empleado_id] [int] NULL,
	[fecha_compra] [date] NULL,
	[colonia] [varchar](25) NULL,
	[calle] [varchar](25) NULL,
	[numero] [int] NULL,
	[direccion]  AS ((((('colonia:'+[colonia])+'calle:')+[calle])+'numero:')+[numero])
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Colchones]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Colchones] ON [dbo].[AlamcenColchones]
(
	[nombreLibrero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Libreros]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Libreros] ON [dbo].[AlamcenLibreros]
(
	[nombreLibrero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Recamaras]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Recamaras] ON [dbo].[AlamcenRecamaras]
(
	[nombreLibrero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Salas]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Salas] ON [dbo].[AlamcenSalas]
(
	[nombreSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Sillones]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Sillones] ON [dbo].[AlamcenSillones]
(
	[nombreSillon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Sofas]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Sofas] ON [dbo].[AlamcenSofas]
(
	[nombreSofa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Nombres_Empleados]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Nombres_Empleados] ON [dbo].[Empleados]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Ventas]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Ventas] ON [dbo].[PedidosDomicilio]
(
	[dia_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Sucursales]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Sucursales] ON [dbo].[Sucursal]
(
	[nombre_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Ventasdeldia]    Script Date: 28/02/2019 23:04:39 ******/
CREATE NONCLUSTERED INDEX [Ventasdeldia] ON [dbo].[ticket]
(
	[fecha_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [muebleria] SET  READ_WRITE 
GO

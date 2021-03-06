USE [muebleria]
GO
/****** Object:  Trigger [triggerprube]    Script Date: 02/05/2019 3:16:12 ******/
DROP TRIGGER [dbo].[triggerprube]
GO
/****** Object:  Trigger [actualizar3]    Script Date: 02/05/2019 3:16:12 ******/
DROP TRIGGER [dbo].[actualizar3]
GO
/****** Object:  Trigger [actualizar2]    Script Date: 02/05/2019 3:16:12 ******/
DROP TRIGGER [dbo].[actualizar2]
GO
/****** Object:  Trigger [Actualizar_Precio2]    Script Date: 02/05/2019 3:16:12 ******/
DROP TRIGGER [dbo].[Actualizar_Precio2]
GO
/****** Object:  Trigger [Actualizar_Precio]    Script Date: 02/05/2019 3:16:12 ******/
DROP TRIGGER [dbo].[Actualizar_Precio]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Productos]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleados]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Clientes]
GO
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [FK_Tickets_Venta]
GO
ALTER TABLE [dbo].[Tickets] DROP CONSTRAINT [FK_Tickets_Sucursales]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Almacen]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Provedor]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Productos]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Almacenes]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_direcciones]
GO
ALTER TABLE [dbo].[Almacenes] DROP CONSTRAINT [FK_Almacenes_Direccions_Almacen]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK_Almacen_Provedor]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK_Almacen_Almacenes]
GO
/****** Object:  View [dbo].[ventas_del_mes]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[ventas_del_mes]
GO
/****** Object:  View [dbo].[ventas_del_año]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[ventas_del_año]
GO
/****** Object:  View [dbo].[ventas_de_hoy]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[ventas_de_hoy]
GO
/****** Object:  View [dbo].[todos_ticket]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todos_ticket]
GO
/****** Object:  View [dbo].[todos_productos]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todos_productos]
GO
/****** Object:  View [dbo].[todos_empleados]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todos_empleados]
GO
/****** Object:  View [dbo].[todos_almacenes]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todos_almacenes]
GO
/****** Object:  View [dbo].[todas_ventas]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todas_ventas]
GO
/****** Object:  View [dbo].[todas_compras]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[todas_compras]
GO
/****** Object:  View [dbo].[compras_de_hoy]    Script Date: 02/05/2019 3:16:12 ******/
DROP VIEW [dbo].[compras_de_hoy]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Tickets]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Sucursales]
GO
/****** Object:  Table [dbo].[Provedor]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Provedor]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Direcciones_Almacen]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Direcciones_Almacen]
GO
/****** Object:  Table [dbo].[direcciones]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[direcciones]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Almacenes]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 02/05/2019 3:16:12 ******/
DROP TABLE [dbo].[Almacen]
GO
/****** Object:  UserDefinedFunction [dbo].[EnMayusculas]    Script Date: 02/05/2019 3:16:12 ******/
DROP FUNCTION [dbo].[EnMayusculas]
GO
/****** Object:  StoredProcedure [dbo].[ventasdelmes]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[ventasdelmes]
GO
/****** Object:  StoredProcedure [dbo].[ventasdelaño]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[ventasdelaño]
GO
/****** Object:  StoredProcedure [dbo].[ventasdehoy]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[ventasdehoy]
GO
/****** Object:  StoredProcedure [dbo].[todosticket]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todosticket]
GO
/****** Object:  StoredProcedure [dbo].[todosproductos]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todosproductos]
GO
/****** Object:  StoredProcedure [dbo].[todosempleados]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todosempleados]
GO
/****** Object:  StoredProcedure [dbo].[todosalmacenes]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todosalmacenes]
GO
/****** Object:  StoredProcedure [dbo].[todasventas]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todasventas]
GO
/****** Object:  StoredProcedure [dbo].[todascompras]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[todascompras]
GO
/****** Object:  StoredProcedure [dbo].[comprasdehoy]    Script Date: 02/05/2019 3:16:12 ******/
DROP PROCEDURE [dbo].[comprasdehoy]
GO
USE [master]
GO
/****** Object:  Database [muebleria]    Script Date: 02/05/2019 3:16:12 ******/
DROP DATABASE [muebleria]
GO
/****** Object:  Database [muebleria]    Script Date: 02/05/2019 3:16:12 ******/
CREATE DATABASE [muebleria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'muebleria', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\muebleria.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'muebleria_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\muebleria_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  StoredProcedure [dbo].[comprasdehoy]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[comprasdehoy] as
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())
GO
/****** Object:  StoredProcedure [dbo].[todascompras]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[todascompras] as
Select *
from Compra 
go;
GO
/****** Object:  StoredProcedure [dbo].[todasventas]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[todasventas] as
Select *
from Venta 
go;
GO
/****** Object:  StoredProcedure [dbo].[todosalmacenes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[todosalmacenes] as
SELECT *
FROM Almacenes 
go;
GO
/****** Object:  StoredProcedure [dbo].[todosempleados]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[todosempleados] as
select * 
from empleados
go; 
GO
/****** Object:  StoredProcedure [dbo].[todosproductos]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[todosproductos] as
SELECT * 
FROM PRODUCTOS 
go;
GO
/****** Object:  StoredProcedure [dbo].[todosticket]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[todosticket] as
SELECT * 
FROM Tickets 
go;
GO
/****** Object:  StoredProcedure [dbo].[ventasdehoy]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ventasdehoy] as
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())
GO
/****** Object:  StoredProcedure [dbo].[ventasdelaño]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ventasdelaño] as
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE())
GO
/****** Object:  StoredProcedure [dbo].[ventasdelmes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ventasdelmes] as
SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())
GO
/****** Object:  UserDefinedFunction [dbo].[EnMayusculas]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[EnMayusculas]
(
@Nombre Varchar(50),
@Apellido Varchar(50)
)
RETURNS Varchar(100)
AS
BEGIN
 RETURN (UPPER(@Apellido) + ', ' + UPPER(@Nombre))
END
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Poducto_IdAlmacen] [int] NOT NULL,
	[Almacen_Id] [int] NULL,
	[Provedor_ID] [int] NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Poducto_IdAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Almacen_Id] [int] NOT NULL,
	[Nombre_Almacen] [varchar](50) NULL,
	[Direccion_Id] [int] NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Almacen_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cliente_Id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[Appaterno] [varchar](50) NULL,
	[Apmaterno] [varchar](50) NULL,
	[Direccion_Id] [int] NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Compra_Id] [int] NOT NULL,
	[Almacen_Id] [int] NULL,
	[Provedor_Id] [int] NULL,
	[Producto_Id] [int] NULL,
	[Dia_Compra] [date] NULL,
	[Precio_A_Pagar] [money] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Compra_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[direcciones]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[direcciones](
	[Direccion_Id] [int] NOT NULL,
	[colonia] [varchar](50) NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](10) NULL,
 CONSTRAINT [PK_direcciones] PRIMARY KEY CLUSTERED 
(
	[Direccion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direcciones_Almacen]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direcciones_Almacen](
	[Direccion_Id] [int] NOT NULL,
	[Colonia] [varchar](50) NULL,
	[Calle] [varchar](50) NULL,
	[Numero] [int] NULL,
 CONSTRAINT [PK_Direccions_Almacen] PRIMARY KEY CLUSTERED 
(
	[Direccion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 02/05/2019 3:16:12 ******/
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
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Producto_Id] [int] NOT NULL,
	[Nombre_Producto] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Precio_Producto] [money] NULL,
	[Poducto_IdAlmacen] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Producto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provedor]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provedor](
	[Provedor_Id] [int] NOT NULL,
	[Nombre_Provedor] [varchar](50) NULL,
 CONSTRAINT [PK_Provedor] PRIMARY KEY CLUSTERED 
(
	[Provedor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[Sucursal_Id] [int] NOT NULL,
	[Colonia] [varchar](50) NULL,
	[Calle] [varchar](20) NULL,
	[Numuero] [varchar](10) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[Sucursal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[ticket_id] [int] NOT NULL,
	[Sucursal_Id] [int] NULL,
	[Id_Venta] [int] NULL,
	[Pago_Cliente] [money] NULL,
	[Cambio_Cliente] [money] NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] NOT NULL,
	[Producto_Id] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Dia_Venta] [date] NULL,
	[Cliente_Id] [int] NULL,
	[Precio_Neto] [money] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[compras_de_hoy]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[compras_de_hoy] as
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())
GO
/****** Object:  View [dbo].[todas_compras]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[todas_compras] as
Select *
from Compra 
GO
/****** Object:  View [dbo].[todas_ventas]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[todas_ventas] as
Select *
from Venta 
GO
/****** Object:  View [dbo].[todos_almacenes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[todos_almacenes] as
SELECT *
FROM Almacenes
GO
/****** Object:  View [dbo].[todos_empleados]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[todos_empleados] as
select * 
from empleados 
GO
/****** Object:  View [dbo].[todos_productos]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[todos_productos] as
SELECT * 
FROM PRODUCTOS 
GO
/****** Object:  View [dbo].[todos_ticket]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[todos_ticket] as
SELECT * 
FROM Tickets 
GO
/****** Object:  View [dbo].[ventas_de_hoy]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[ventas_de_hoy] as
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())
GO
/****** Object:  View [dbo].[ventas_del_año]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[ventas_del_año] as
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE());
GO
/****** Object:  View [dbo].[ventas_del_mes]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ventas_del_mes] as
SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())
GO
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (400, 200, 300)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (401, 200, 300)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (402, 200, 301)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (403, 200, 301)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (404, 200, 302)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (405, 201, 302)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (406, 201, 303)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (407, 201, 303)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (408, 201, 304)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (409, 201, 304)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (410, 202, 305)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (411, 202, 305)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (412, 202, 306)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (413, 202, 306)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (414, 202, 307)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (415, 203, 307)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (416, 203, 308)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (417, 203, 308)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (418, 203, 308)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (419, 204, 309)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (420, 204, 309)
INSERT [dbo].[Almacen] ([Poducto_IdAlmacen], [Almacen_Id], [Provedor_ID]) VALUES (421, 204, 309)
INSERT [dbo].[Almacenes] ([Almacen_Id], [Nombre_Almacen], [Direccion_Id]) VALUES (200, N'Almacen Solidaridad', 100)
INSERT [dbo].[Almacenes] ([Almacen_Id], [Nombre_Almacen], [Direccion_Id]) VALUES (201, N'Almacen Fomerrey113', 101)
INSERT [dbo].[Almacenes] ([Almacen_Id], [Nombre_Almacen], [Direccion_Id]) VALUES (202, N'Almacen Del Prado', 102)
INSERT [dbo].[Almacenes] ([Almacen_Id], [Nombre_Almacen], [Direccion_Id]) VALUES (203, N'Almacen Victoria', 103)
INSERT [dbo].[Almacenes] ([Almacen_Id], [Nombre_Almacen], [Direccion_Id]) VALUES (204, N'Almacen Treviño', 104)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (800, N'alfonso', N'rodriguez', N'herrera', 700, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (801, N'samantha', N'torres', N'jumenez', 701, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (802, N'rodrigo', N'ramos', N'alvarez', 702, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (803, N'eduardo', N'castro', N'romero', 703, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (804, N'jesus', N'molina', N'fidel', 704, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (805, N'alejandro', N'ortega', N'navarro', 705, 81164595)
INSERT [dbo].[Clientes] ([Cliente_Id], [nombre], [Appaterno], [Apmaterno], [Direccion_Id], [Telefono]) VALUES (806, N'fernando', N'muños', N'castro', 706, 81164595)
INSERT [dbo].[Compra] ([Compra_Id], [Almacen_Id], [Provedor_Id], [Producto_Id], [Dia_Compra], [Precio_A_Pagar]) VALUES (9000, 204, 300, 500, CAST(0x7C3F0B00 AS Date), 1500.0000)
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (700, N'Jardines de anahuac', N'polacos', N'8452')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (701, N'real de anahuac', N'zarsal', N'2352')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (702, N'azteca', N'postal', N'8632')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (703, N'langrage', N'esgrima', N'7531')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (704, N'futuro nogalar', N'dalia', N'7842')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (705, N'año de juarez', N'zarzal', N'1452')
INSERT [dbo].[direcciones] ([Direccion_Id], [colonia], [calle], [numero]) VALUES (706, N'santo domingo', N'dalia', N'4536')
INSERT [dbo].[Direcciones_Almacen] ([Direccion_Id], [Colonia], [Calle], [Numero]) VALUES (100, N'Solidaridad', N'Cabezada', 9863)
INSERT [dbo].[Direcciones_Almacen] ([Direccion_Id], [Colonia], [Calle], [Numero]) VALUES (101, N'Fomerrey113', N'HOz', 8428)
INSERT [dbo].[Direcciones_Almacen] ([Direccion_Id], [Colonia], [Calle], [Numero]) VALUES (102, N'Del Prado', N'Monte alto', 6845)
INSERT [dbo].[Direcciones_Almacen] ([Direccion_Id], [Colonia], [Calle], [Numero]) VALUES (103, N'Victoria', N'Caliza', 2148)
INSERT [dbo].[Direcciones_Almacen] ([Direccion_Id], [Colonia], [Calle], [Numero]) VALUES (104, N'Treviño', N'diabaza', 7854)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (600, N'Alejandro', N'batres', N'Herrera', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (601, N'silerio', N'esquivel', N'ronaldo', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (602, N'ernesto', N'gonzalez', N'mitsui', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (603, N'mauricio', N'lopez', N'rodriguez', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (604, N'osmar', N'gutierres', N'macias', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (605, N'allfonso', N'herrera', N'lopez', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Empleados] ([Id_Empleado], [nombre], [Appaterno], [ApMaterno], [fechanac], [telefono]) VALUES (606, N'fernando', N'milos', N'bolaños', CAST(0x83220B00 AS Date), 81125465)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (500, N'Closet', N'Closet color cafe', 3000.0000, 400)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (501, N'Sillon', N'Sillon color negro', 1000.0000, 401)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (502, N'Banca', N'Bancas color cafe obscuro', 1000.0000, 402)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (503, N'Percheros', N'Percheros color cafe', 500.0000, 403)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (504, N'POOF', N'POOF color cafe', 1500.0000, 404)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (505, N'Periqueras Para Bebe', N'Periqueras Para Bebe color blacno', 2000.0000, 400)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (506, N'Mesa de madera', N'Mesa de madera color cafe obscuro', 3000.0000, 401)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (507, N'Silla de exterior', N'Silla de exterior color cafe obscuro', 1000.0000, 402)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (508, N'Barras para bares', N'Barras para bares color cafe obscuro', 400.0000, 403)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (509, N'Bancos', N'Bancos color cafe', 500.0000, 404)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (510, N'Bases de madera', N'Bases de madera color cafe', 3000.0000, 400)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (511, N'stands', N'stands color negro', 2000.0000, 401)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (512, N'Perfumero', N'Perfumero color cafe obscuro', 1700.0000, 402)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (513, N'Peceras', N'Pecera 4 metros cuadrados', 900.0000, 403)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (514, N'buzones', N'buzones color blanco', 2500.0000, 404)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (515, N'Portarretratos', N'Portarretratos color cafe', 200.0000, 400)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (516, N'Señalamientos', N'Señalamientos decorativos', 300.0000, 401)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (517, N'Mueble escolares', N'Mueble escolares colorblanco', 2000.0000, 402)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (518, N'mueble de laboratorio', N'mueble de laboratorio blanco', 300.0000, 403)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (519, N'porta zapatos', N'porta zapatos color azul', 600.0000, 404)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (520, N'Escritorio', N'Escritorio color cafe', 1200.0000, 403)
INSERT [dbo].[Productos] ([Producto_Id], [Nombre_Producto], [Descripcion], [Precio_Producto], [Poducto_IdAlmacen]) VALUES (521, N'alfonsos', N'es un alfonso', 9000.0000, 403)
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (300, N'Cosmos Acril')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (301, N'Agencia de Comercios y Servicios PANAMA')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (302, N'Industrial Mueblero Escolar')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (303, N'Konfort Mobiliario')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (304, N'Acacia proyectos')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (305, N'Colchones Sommier')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (306, N'Chrometro')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (307, N'Cisesa')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (308, N'Mapli')
INSERT [dbo].[Provedor] ([Provedor_Id], [Nombre_Provedor]) VALUES (309, N'Grupo FIMSA')
INSERT [dbo].[Sucursales] ([Sucursal_Id], [Colonia], [Calle], [Numuero], [Telefono]) VALUES (900, N'Solidaridad', N'Cabezada', N'9863', 87452365)
INSERT [dbo].[Sucursales] ([Sucursal_Id], [Colonia], [Calle], [Numuero], [Telefono]) VALUES (901, N'Fomerrey113', N'HOz', N'8428', 81456532)
INSERT [dbo].[Sucursales] ([Sucursal_Id], [Colonia], [Calle], [Numuero], [Telefono]) VALUES (902, N'Del Prado', N'Monte alto', N'6845', 81145162)
INSERT [dbo].[Sucursales] ([Sucursal_Id], [Colonia], [Calle], [Numuero], [Telefono]) VALUES (903, N'Victoria', N'Caliza', N'2148', 81456231)
INSERT [dbo].[Sucursales] ([Sucursal_Id], [Colonia], [Calle], [Numuero], [Telefono]) VALUES (904, N'Treviño', N'diabaza', N'785', 81749563)
INSERT [dbo].[Tickets] ([ticket_id], [Sucursal_Id], [Id_Venta], [Pago_Cliente], [Cambio_Cliente]) VALUES (9901, 900, 1000, 2500.0000, 500.0000)
INSERT [dbo].[Tickets] ([ticket_id], [Sucursal_Id], [Id_Venta], [Pago_Cliente], [Cambio_Cliente]) VALUES (9902, 901, 1001, 1200.0000, 200.0000)
INSERT [dbo].[Tickets] ([ticket_id], [Sucursal_Id], [Id_Venta], [Pago_Cliente], [Cambio_Cliente]) VALUES (9903, 902, 1002, 1050.0000, 50.0000)
INSERT [dbo].[Tickets] ([ticket_id], [Sucursal_Id], [Id_Venta], [Pago_Cliente], [Cambio_Cliente]) VALUES (9904, 903, 1003, 700.0000, 200.0000)
INSERT [dbo].[Tickets] ([ticket_id], [Sucursal_Id], [Id_Venta], [Pago_Cliente], [Cambio_Cliente]) VALUES (9905, 904, 1004, 1500.0000, 0.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1000, 500, 600, CAST(0xCF3F0B00 AS Date), 800, 3000.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1001, 501, 601, CAST(0xCF3F0B00 AS Date), 801, 1000.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1002, 502, 602, CAST(0xCF3F0B00 AS Date), 802, 1000.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1003, 503, 603, CAST(0xCF3F0B00 AS Date), 803, 500.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1004, 504, 604, CAST(0xCF3F0B00 AS Date), 804, 1500.0000)
INSERT [dbo].[Venta] ([Id_Venta], [Producto_Id], [Id_Empleado], [Dia_Venta], [Cliente_Id], [Precio_Neto]) VALUES (1005, 504, 604, CAST(0x7C3F0B00 AS Date), 804, 1500.0000)
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Almacenes] FOREIGN KEY([Almacen_Id])
REFERENCES [dbo].[Almacenes] ([Almacen_Id])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Almacenes]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Provedor] FOREIGN KEY([Provedor_ID])
REFERENCES [dbo].[Provedor] ([Provedor_Id])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Provedor]
GO
ALTER TABLE [dbo].[Almacenes]  WITH CHECK ADD  CONSTRAINT [FK_Almacenes_Direccions_Almacen] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[Direcciones_Almacen] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Almacenes] CHECK CONSTRAINT [FK_Almacenes_Direccions_Almacen]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_direcciones] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[direcciones] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_direcciones]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Almacenes] FOREIGN KEY([Almacen_Id])
REFERENCES [dbo].[Almacenes] ([Almacen_Id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Almacenes]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Productos] FOREIGN KEY([Producto_Id])
REFERENCES [dbo].[Productos] ([Producto_Id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Productos]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Provedor] FOREIGN KEY([Provedor_Id])
REFERENCES [dbo].[Provedor] ([Provedor_Id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Provedor]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Almacen] FOREIGN KEY([Poducto_IdAlmacen])
REFERENCES [dbo].[Almacen] ([Poducto_IdAlmacen])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Almacen]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Sucursales] FOREIGN KEY([Sucursal_Id])
REFERENCES [dbo].[Sucursales] ([Sucursal_Id])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Sucursales]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Venta] FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Venta] ([Id_Venta])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Venta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Clientes] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[Clientes] ([Cliente_Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Clientes]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleados] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleados] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleados]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Productos] FOREIGN KEY([Producto_Id])
REFERENCES [dbo].[Productos] ([Producto_Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Productos]
GO
/****** Object:  Trigger [dbo].[Actualizar_Precio]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Actualizar_Precio]
ON [dbo].[Productos] 
 AFTER UPDATE AS 
 -- ¿Ha cambiado el estado?
 IF UPDATE(Precio_Producto)
 BEGIN
	-- Actualizamos el campo stateChangedDate a la fecha/hora actual
	UPDATE Productos SET Precio_Producto=(SELECT Precio_Producto FROM inserted) WHERE Producto_Id=(SELECT Producto_Id FROM inserted);
 END;
GO
/****** Object:  Trigger [dbo].[Actualizar_Precio2]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Actualizar_Precio2]
ON [dbo].[Productos] 
 AFTER UPDATE AS 
 BEGIN
	-- Actualizamos el campo stateChangedDate a la fecha/hora actual
	UPDATE Productos SET Precio_Producto=(SELECT Precio_Producto FROM inserted) WHERE Producto_Id=(SELECT Producto_Id FROM inserted);
 END;
GO
/****** Object:  Trigger [dbo].[actualizar2]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[actualizar2]
  on [dbo].[Productos]
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
   end
   else
   begin
    raiserror('El precio y stock no pueden modificarse. La actualización no se realizó.', 10, 1)
    rollback transaction
   end;
GO
/****** Object:  Trigger [dbo].[actualizar3]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[actualizar3]
  on [dbo].[Productos]
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
  
   end;
GO
/****** Object:  Trigger [dbo].[triggerprube]    Script Date: 02/05/2019 3:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[triggerprube] ON [dbo].[Productos]
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted;
 SELECT * FROM inserted;
GO
USE [master]
GO
ALTER DATABASE [muebleria] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [tambo#]    Script Date: 9/15/2018 5:38:38 PM ******/
CREATE DATABASE [tambo#]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tambo#', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tambo#.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tambo#_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\tambo#_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tambo#] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tambo#].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tambo#] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tambo#] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tambo#] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tambo#] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tambo#] SET ARITHABORT OFF 
GO
ALTER DATABASE [tambo#] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tambo#] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tambo#] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tambo#] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tambo#] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tambo#] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tambo#] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tambo#] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tambo#] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tambo#] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tambo#] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tambo#] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tambo#] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tambo#] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tambo#] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tambo#] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tambo#] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tambo#] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tambo#] SET  MULTI_USER 
GO
ALTER DATABASE [tambo#] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tambo#] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tambo#] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tambo#] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [tambo#] SET DELAYED_DURABILITY = DISABLED 
GO
USE [tambo#]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](50) NULL,
	[edad] [int] NULL,
	[dni] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idProducto] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[cantidad] [int] NULL,
	[subtotal] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodoDeEntrega]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodoDeEntrega](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMotorizado] [int] NULL,
	[direccionEntrega] [varchar](100) NULL,
	[direccionTienda] [varchar](100) NULL,
	[horaMax] [varchar](50) NULL,
 CONSTRAINT [PK_MetodoDeEntrega] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Motorizado]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Motorizado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTienda] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[calificacion] [float] NULL,
 CONSTRAINT [PK_Motorizado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idMarca] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[precio] [money] NULL,
	[codigo] [int] NULL,
	[fechaCaducidad] [date] NULL,
	[estado] [varchar](50) NULL,
	[categoria] [varchar](50) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto_Inventario]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Inventario](
	[idInventario] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[stock] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tienda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idInventario] [int] NOT NULL,
	[telefono] [int] NULL,
	[direccion] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_Tienda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 9/15/2018 5:38:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[id] [int] NOT NULL,
	[idTienda] [int] NULL,
	[idMetodoDeEntrega] [int] NULL,
	[idCliente] [int] NULL,
	[fecha] [date] NULL,
	[descuento] [money] NULL,
	[total] [money] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Producto]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Venta]
GO
ALTER TABLE [dbo].[MetodoDeEntrega]  WITH CHECK ADD  CONSTRAINT [FK_MetodoDeEntrega_Motorizado] FOREIGN KEY([idMotorizado])
REFERENCES [dbo].[Motorizado] ([id])
GO
ALTER TABLE [dbo].[MetodoDeEntrega] CHECK CONSTRAINT [FK_MetodoDeEntrega_Motorizado]
GO
ALTER TABLE [dbo].[Motorizado]  WITH CHECK ADD  CONSTRAINT [FK_Motorizado_Tienda] FOREIGN KEY([idTienda])
REFERENCES [dbo].[Tienda] ([id])
GO
ALTER TABLE [dbo].[Motorizado] CHECK CONSTRAINT [FK_Motorizado_Tienda]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([idMarca])
REFERENCES [dbo].[Marca] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[Proveedor] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Inventario_Inventario] FOREIGN KEY([idInventario])
REFERENCES [dbo].[Inventario] ([id])
GO
ALTER TABLE [dbo].[Producto_Inventario] CHECK CONSTRAINT [FK_Producto_Inventario_Inventario]
GO
ALTER TABLE [dbo].[Producto_Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Inventario_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Producto_Inventario] CHECK CONSTRAINT [FK_Producto_Inventario_Producto]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Inventario] FOREIGN KEY([idInventario])
REFERENCES [dbo].[Inventario] ([id])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Inventario]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_MetodoDeEntrega] FOREIGN KEY([idMetodoDeEntrega])
REFERENCES [dbo].[MetodoDeEntrega] ([id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_MetodoDeEntrega]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Tienda] FOREIGN KEY([idTienda])
REFERENCES [dbo].[Tienda] ([id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Tienda]
GO
USE [master]
GO
ALTER DATABASE [tambo#] SET  READ_WRITE 
GO

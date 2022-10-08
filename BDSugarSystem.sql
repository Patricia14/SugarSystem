create database DBSugarSystem
go
Use DBSugarSystem
go

Create table Categoria(
idCategoria int primary key identity,
Descripcion varchar(100)
)
go

Create table Proveedor(
idproveedor int primary key identity,
Nombre varchar(500),
Telefono int,
Correo varchar(100),
Descripcion varchar(100)
)
go

 Create table Producto(
idProducto int primary key identity,
Nombre varchar(500),
Descripcion varchar(500),
idCategoria int references Categoria(idCategoria),
idproveedor int references Proveedor(idProveedor),
Precio decimal(10,2) default 0,
Existencia int,
Imagen varchar(500),
FechaRegistro datetime default getdate(),
)

go


Create table Vendedor(
idVendedor int primary key identity,
Nombres varchar(100),
Apellidos varchar(100),
Correo varchar(100),
Clave varchar(100),
Reestablecer bit default 1,
Activo bit default 1,
FechaRegistro datetime default getdate())
go

Create table Factura(
idFactura int primary key identity,
idVendedor int references Vendedor(idVendedor),
duiCliente int,
MontoTotal decimal(10,2),
FechaVenta datetime default getdate()
)
go
Create table DetalleVenta(
idDetalleVenta int primary key identity,
idFactura int references Factura(idFactura),
idProducto int references Producto(idProducto ))

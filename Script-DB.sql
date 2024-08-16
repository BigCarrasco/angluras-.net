create table Rol(
idRol int primary key identity(1,1),
nombre varchar(50),
fechaRegistro datetime default getdate()
)

create table Menu(
idMenu int primary key identity(1,1),
nombre varchar(50),
icono varchar(50),
url varchar(50)
)

create table MenuRol(
idMenuRol int primary key identity(1,1),
idMenu int references Menu(idMenu),
idRol int references Rol(idRol)
)

create table Usuario(
idUsuario int primary key identity(1,1),
nombreCompleto varchar(100),
correo varchar(40),
idRol int references Rol(idRol),
clave varchar(40),
esActivo bit default 1,
fechaRegistro datetime default getdate()
)

create table Categoria(
idCategoria int primary key identity(1,1),
nombre varchar(50),
esActivo bit default 1,
fechaRegistro datetime default getdate()
)

EXEC sp_rename 'Categoria.idCategoria','idCategoria','COLUMN';

create table Producto(
idProducto int primary key identity(1,1),
nombre varchar(100),
idCategoria int references Categoria(idCategoria),
stock int,
precio decimal(10,2),
esActivo bit default(1), --// boolean
fechaRegistro datetime default getdate()
)

--// Tema de configuración: Almacenar los números de venta que voy registrando, aqui se almacena el ultimo numero de la venta. ((control de numeros);
create table NumeroDocumento(
idNumeroDocumento int primary key identity(1,1),
ultimo_Numero int not null,
fechaRegistro datetime default getdate()
)

create Table Venta(
idVenta int primary key identity(1,1),
numeroDocumento varchar(40), --// Se obtiene desde la tabla NumeroDocumento
tipoPago varchar(50),
total decimal(10,2),
fechaRegistro datetime default getdate()
)

create table DetalleVenta(
idDetallleVenta int primary Key identity(1,1),
idVenta int references Venta(idVenta),
idProducto int references Producto(idProducto),
cantidad int,
precio decimal(10,2),
total decimal(10,2)
)

ALTER AUTHORIZATION ON DATABASE ::DBVENTA to sa;
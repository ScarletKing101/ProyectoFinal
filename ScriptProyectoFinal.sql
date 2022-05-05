use prestamo_bancario;
#drop table Usuario;
#drop table prestamo;

#CREANDO LA TABLA USUARIO
create table Usuario(
idUsuario  int primary key auto_increment not null,
nombreUsuario varchar(45),
clave nvarchar(20)
);

#CREANDO LA TABLA CLIENTES
create table clientes(
idCliente int primary key auto_increment not null,
nombreCompleto varchar(50) not null,
tipoDocumento varchar(45),
numeroDocumento varchar(45),
direccion varchar(45),
ciudad varchar(45),
correo varchar(45),
numeroTelefono varchar(15),
fechaRegistro datetime
);

select * from clientes;

#drop table Clientes;
#CREANDO LA TABLA PRESTAMOS
create table Prestamos(
idPrestamo int primary key auto_increment not null,
fechaRegistro date,
fechaInicio date,
fechaFinal date,
montoPrestamo double(7,2),
interes int,
numeroCuotas int,
montoCuota double(7,2),
totalInteres double(7,2),
montoTotal double(7,2),
nombreCliente varchar(45),
tipoDocumento varchar(45),
numeroDocumento varchar(45),
direccion varchar(45),
ciudad varchar(45),
correo varchar(45),
numeroTelefono varchar(15),
estado varchar(45),
FKCliente int
#foreign key (FKCliente) references clientes (idCliente)
);
select * from Prestamos;

USE PRESTAMO_BANCARIO;
drop table Prestamos;

ALTER TABLE prestamos ADD FOREIGN KEY (FKcliente) REFERENCES Clientes (idCliente);

#CREANDO LA TABLA TIPOMONEDA
create table TipoMoneda(
idTipoMoneda  int primary key auto_increment not null,
divisa varchar(45),
abreviatura nvarchar(45),
FKPrestamos int
);
use prestamo_bancario;
#CREANDO LA TABLA DATOS
create table Datos(
idDatos int primary key auto_increment not null,
representante varchar(45),
ciudad varchar(45),
correo varchar(45),
numeroDocumento varchar(45),
FKPrestamos int
);

#CREANDO LA TABLA CUOTAS
create table Cuotas(
idCuotas int primary key auto_increment not null,
numeroCuota int,
fechaPagoCuota date,
montoCuota double,
estadoCuota varchar(45),
fechaPago date,
proximoPago date,
FKPrestamos int
);

#CREANDO LA TABLA REPORTES
create table Reportes(
numeroOperacion int,
fechaRegistro date,
formaPago date,
tipoMoneda varchar(45),
fechaInicio date,
montoPrestamo double,
interes varchar(45),
numeroCuotas int,
montoCuota varchar(45),
totalInteres double,
montoTotal double,
nombreCliente varchar(45),
tipoDocumento varchar(45),
numeroDocumento varchar(45),
direccion varchar(45),
ciudad varchar(45),
correo varchar(45),
numeroTelefonoCelular varchar(45),
estado varchar(45)
);


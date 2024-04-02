-- Creamos la Base de Datos 
create database Ejercicio2;

-- Usamos la Base de Datos
use Ejercicio2;

-- Creamos la tabla Lugar( Id Lugar, coord X, coord Y, tipo)
CREATE TABLE Lugar (
    id_lugar INT UNSIGNED AUTO_INCREMENT,
    cord_x VARCHAR(150) NOT NULL,
    cord_y VARCHAR(150) NOT NULL
);

-- Creamos la tabla Via_Urbana(
CREATE TABLE Via_Urbana (
    id_lugar INT UNSIGNED AUTO_INCREMENT,
    direccion VARCHAR(150) NOT NULL,
    CP CHAR(5) NOT NULL
);

-- Creamos la tabla Cod_Postal(
CREATE TABLE Cod_Postal (
    CP CHAR(5) NOT NULL,
    provincia VARCHAR(150) NOT NULL,
    localidad VARCHAR(150) NOT NULL
);

-- Creamos la tabla Carretera (
CREATE TABLE Carretera (
    id_lugar INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL,
    tipo_Carretera ENUM('autovía', 'autopista') NOT NULL
)

-- Creamos la tabla Accidente(
CREATE TABLE Accidente (
    Id_Acc INT UNSIGNED AUTO_INCREMENT,
    Id_lugar INT UNSIGNED AUTO_INCREMENT NOT NULL,
    desperfecto VARCHAR(150) NOT NULL,
    Id_Agente INT UNSIGNED AUTO_INCREMENT NOT NULL
)

-- Creamos la tabla Vehiculo(
CREATE TABLE Vehiculo (
    matricula CHAR(6),
    modelo VARCHAR(100) NOT NULL,
    Id_Marca INT UNSIGNED AUTO_INCREMENT NOT NULL
)

-- Creamos la tabla Marca(
CREATE TABLE Marca (
    Id_Marca INT UNSIGNED AUTO_INCREMENT,
    nombreMarca VARCHAR(150) NOT NULL
)

-- Creamos la tabla Damnificado (
create table Damnificado(
id_Dam  iNT unsigned auto_increment,
nombre varchar(100) not null,
ape1 varchar(150) not null,
ape2 varchar(150) not null,
tlfn varchar (12) not null,
edad 
Id_Accidente iNT unsigned auto_increment not null,
gravedad
matricula char (6) not null,
modo
);

-- Creamos la tabla Agente-Trafi(
create table Agente_Trafi(
id_Agente
nombre,
apell1,
apell2,
cuerpo,
tfln,
id AgJefe,
);

-- Creamos la tabla Test(
create table Test(
Id test,
resultado,
fecha,
tipo,
id damni,
id agente
);

-- Creamos tabla Sanitario(
create table Sanitario(
num cole,
Nif,
nombre,
ape1,
ape2
);

-- Creamos tabla Ambulancia(
create table Ambulancia(
matricula,
empresa,
tipo
);

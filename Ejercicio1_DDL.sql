-- Crear la base de datos
CREATE DATABASE Ejercicio1;

-- Usar la base de datos 
USE Ejercicio1;

-- Crear la tabla COD POSTAL (CP, Localidad, provincia)
CREATE TABLE COD_POSTAL (
    CP CHAR(5),
    Localidad VARCHAR(50) NOT NULL,
    provincia VARCHAR(50) NOT NULL,
    CONSTRAINT PK_COD_POSTAL PRIMARY KEY (CP)
);

-- Crear la tabla ARTICULO (Ref, nombre, precio)
CREATE TABLE ARTICULO (
    Ref CHAR(10) ,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    CONSTRAINT PK_ARTICULO PRIMARY KEY (Ref)
);

-- Crear la tabla CLIENTE (DNI, nombre, apd, ap 2, calle, CP)
CREATE TABLE CLIENTE (
    DNI CHAR(9),
    nombre VARCHAR(50) NOT NULL,
    ap1 VARCHAR(50) NOT NULL,
    ap2 VARCHAR(50) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    CP CHAR(5) NOT NULL,
    CONSTRAINT PK_CLIENTE PRIMARY KEY (DNI),
    CONSTRAINT FK_CLIENTE FOREIGN KEY (CP)
        REFERENCES COD_POSTAL (CP)
);

-- Crear la tabla FACTURA (IdFactura, DNI, fedha facturz, total Fachura)
CREATE TABLE FACTURA (
    IdFactura INT,
    DNI CHAR(9) NOT NULL,
    fechaFacture DATE NOT NULL,
    totalFactura DECIMAL(10 , 2 ) NOT NULL,
    CONSTRAINT PK_FACTURA PRIMARY KEY (IdFactura),
    CONSTRAINT FK_FACTURA FOREIGN KEY (DNI)
        REFERENCES CLIENTE (DNI)
);

-- Crear la tabla FACTURA_ARTICULO (Id Facturz, Ref, caulided)
CREATE TABLE FACTURA_ARTICULO (
    IdFactura INT,
    Ref CHAR(10),
    cantidad TINYINT UNSIGNED NOT NULL,
    CONSTRAINT PK_FACTURA_ARTICULO PRIMARY KEY (IdFactura , Ref),
    CONSTRAINT FK_ARTICULO_FACTURA FOREIGN KEY (Ref)
        REFERENCES ARTICULO (Ref),
    CONSTRAINT FK_FACTURA_ARTICULO FOREIGN KEY (IdFactura)
        REFERENCES FACTURA (IdFactura)
);


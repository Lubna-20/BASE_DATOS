create database IF NOT exists ACTIVIDAD_1;

USE ACTIVIDAD_1;



-- PRODUCTO (codigo,nombre,precio)
CREATE TABLE PRODUCTO (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    precio DOUBLE NOT NULL
);

-- CLIENTE (ID_CLIENTE, DNI, NOMBRE, APE1,APE2) SIENDO DM AK (UNIQUE) Y APE2 NULL
CREATE TABLE CLIENTE (
    ID_CLIENTE INT,
    DNI VARCHAR(9) NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    ap1 VARCHAR(150) NOT NULL,
    ap2 VARCHAR(150),
    CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE),
    CONSTRAINT UQ_CLIENTE_DNI UNIQUE (DNI)
);

CREATE TABLE LIBRO (
    ID_LIBRO INT,
    CONTENIDO BLOB NOT NULL,
    CONSTRAINT PK_LIBRO PRIMARY KEY (ID_LIBRO)
);

-- EMPLEADO(DNI, NOMBRE, APE1, APE2, TFNO, MAIL, FRCHANAC,ROL,ULTIMOACCESO)
CREATE TABLE EMPLEADO (
    DNI VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    ape1 VARCHAR(100) NOT NULL,
    ape2 VARCHAR(100),
    tfno VARCHAR(9) NOT NULL,
    mail VARCHAR(100),
    fechaNac DATE NOT NULL,
    rol ENUM('PJ', 'PS', 'AP', 'AF') NOT NULL,
    ultimoAcceso DATETIME NOT NULL,
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (DNI) 
);
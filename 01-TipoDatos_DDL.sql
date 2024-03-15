/*
 BASE DE DATOS INICIAL 
 */

-- Borrar una base de datos si existe
drop database IF exists tipoDatosBD;


-- 1- Crear la base de datos
create database IF NOT exists tipoDatosBD;

-- 2 Usar esa base de datos
use tipoDatosBD;

-- 3- Crear tablba usando entero
CREATE TABLE ENTERO (
    ID INT,
    edad TINYINT,
    puntos SMALLINT,
    sueldo MEDIUMINT,
    superEntero BIGINT
);

-- Creamos  una tabla para poner decimales 
CREATE TABLE DECIMALES (
    ID INT,
    sueldo DECIMAL(8 , 2 ),
    sueldo2 NUMERIC(8 , 2 ),
    sueldo3 FLOAT,
    sueldo4 DOUBLE
);

CREATE TABLE CADENAS (
    ID INT,
    HIJOS CHAR(1), -- 'S' / 'N'
    NOMBRE VARCHAR (150),
    LIBRO TEXT,
    TIT_LIBRO TINYTEXT,
    LIBRO_EXT MEDIUMTEXT,
    SUPER_LIBRO LONGTEXT
);

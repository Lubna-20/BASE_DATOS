-- Creamos la base de datos Alojamiento_Rural;
CREATE DATABASE Alojamiento_Rural;


-- Usamos la base de datos
USE Alojamiento_Rural;


/**
CREAMOS LAS TABLAS
*/

CREATE TABLE CODIGO_POSTAL (
    cp CHAR(5),
    localidad VARCHAR(50) NOT NULL,
    provincia VARCHAR(50) NOT NULL,
    CONSTRAINT PK_cp PRIMARY KEY (cp)
);

-- Crea: ACTIVIDAD (cod_actividad, nombre, descripcion, dificultad)
CREATE TABLE ACTIVIDAD (
    cod_actividad MEDIUMINT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion MEDIUMTEXT NOT NULL,
    dificultad VARCHAR(10) NOT NULL,
    CONSTRAINT PK_cod_actividad PRIMARY KEY (cod_actividad),
    CONSTRAINT CK_dificultad CHECK (dificultad >= 1 AND dificultad <= 10)
);

-- Crea: ALOJAMIENTO (id, nombre, calle, num, cp, telefono, num_habitaciones, cod_emple_encargado)
CREATE TABLE ALOJAMIENTO (
    id INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    num TINYINT UNSIGNED ,
    telefono CHAR(12) NOT NULL,
    cp CHAR(5) NOT NULL,
    num_habitaciones TINYINT UNSIGNED,
    Cod_emple_encargado INT UNSIGNED ,
    CONSTRAINT PK_id PRIMARY KEY (id),
    CONSTRAINT CK_num_habitaciones CHECK (num_habitaciones <= 200)
);

-- Crea: HABITACION (id_alojamiento, numero, tipo, baño, precio)
CREATE TABLE HABITACION (
    id_alojamiento INT UNSIGNED AUTO_INCREMENT,
    numero TINYINT UNSIGNED NOT NULL,
    tipo ENUM('INDIVIDUAL', 'DOBLE', 'TRIPLE'),
    baño TINYINT DEFAULT 1 NOT NULL,
    precio DECIMAL NOT NULL,
    CONSTRAINT PK_habitacion PRIMARY KEY (iD_alojamiento , Numero),
    CONSTRAINT CK_baño CHECK (BaÑo IN ('1' , '0'))
);

-- Crea: EMPLEADO (cod_empleado, NIF, nombre, ape1, ape2, id_alojamiento)
CREATE TABLE EMPLEADO (
    cod_empleado INT UNSIGNED AUTO_INCREMENT,
    NIF VARCHAR(9) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    ape1 VARCHAR(50) NOT NULL,
    ape2 VARCHAR(50) NOT NULL,
    id_alojamiento INT UNSIGNED NOT NULL ,
    CONSTRAINT PK_cod_empleado PRIMARY KEY (COd_empleado),
    CONSTRAINT UQ_EMPLEADO_NIF UNIQUE (NIF)
);


-- Crea: ORGANIZA (id_alojamiento, cod_actividad, dia, hora_ini, hora_fin)
CREATE TABLE ORGANIZA (
    id_alojamiento INT UNSIGNED AUTO_INCREMENT,
    cod_actividad MEDIUMINT UNSIGNED ,
    dia SET('L', 'M', 'X', 'J', 'V', 'S', 'D') NOT NULL,
    hora_ini TIME NOT NULL,
    hora_fin TIME NOT NULL,
    CONSTRAINT PK_cod_actividad PRIMARY KEY (ID_Alojamiento , coD_actividad),
    CONSTRAINT CK_hora_fin CHECK (HOrA_fin > hoRa_ini)
);

/**
MODIFICAMOS LAS TABLAS PARA AÑADIR LAS FKS
*/
ALTER TABLE  ALOJAMIENTO ADD CONSTRAINT FK_CP FOREIGN KEY (CP) RefErENCES CODIGO_POSTAL (CP) ON UPDATE CASCADE;
ALTER TABLE ALOJAMIENTO ADD CONSTRAINT FK_Cod_emple_encargado FOREIGN KEY (COD_Emple_encargado) refErENCES EMPLEADO (Cod_Empleado) ON UPDATE SET NULL ON DELETE SET NULL;
ALTER TABLE EMPLEADO ADD CONSTRAINT FK_Id_alojamiento FOREIGN KEY (ID_aLojamiento) REFERENCES ALOJAMIENTO(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE HABITACION ADD CONSTRAINT FK_Id_alojamiento_habitacion FOREIGN KEY (ID_aLojamiento) REFERENCES ALOJAMIENTO(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ORGANIZA ADD CONSTRAINT FK_Id_alojamiento_organiza FOREIGN KEY (ID_aLojamiento) REFERENCES ALOJAMIENTO(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ORGANIZA ADD CONSTRAINT FK_Cod_actividad_organiza FOREIGN KEY (COD_Actividad) REFERENCES ACTIVIDAD(cod_Actividad) ON DELETE CASCADE ON UPDATE CASCADE;








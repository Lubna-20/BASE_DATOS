use pubs;

-- Añadir una columna llamada telefono a la tabla TITULAR de tipo char(13) no nulo.
alter table TITULAR add column telefono char (13) not null;
-- Modificar la columna domicilio en la tabla EMPLEADO para no permitir nulos.
alter table EMPLEADO modify column domicilio varchar (150) not null;
-- Eliminar la columna fecha_apertura de la tabla PUB.
alter table PUB drop column fecha_apertura;
-- Añadir una restricción UNIQUE a la columna nombre en la tabla PUB.
alter table PUB add constraint un_pub_nombre unique (nombre);
-- Renombrar la tabla EXISTENCIAS a INVENTARIO.
rename table EXISTENCIAS to INVENTRAIO;
rename table INVENTRAIO to INVENTARIO;
-- Renombrar la columna cod_articulo en la tabla INVENTARIO a codigo_producto.
alter table INVENTARIO rename column cod_articulo to codigo_producto;
-- Crear una tabla duplicada de PUB llamada PUB_COPIA. Sólo estructura.
create table PUB_COPIA  like PUB;
-- Añadir un índice idx_nombre_titular a la columna nombre en la tabla TITULAR.
create index idx_nombre_titular ON TITULAR (nombre);
-- Añadir una vista llamada INFO_EMPLEADO que muestre el nombre y domicilio de los empleados.
create view INFO_EMPLEADO as select nombre,domicilio from empleado;
-- Modificar la tabla PUB_EMPLEADO para cambiar el tipo de dato de la columna funcion a varchar(20).
-- Eliminar la restricción CHK_PRECIO de la tabla INVENTARIO.
-- Añadir una nueva columna llamada fecha_contrato no nula a la tabla EMPLEADO. Por defecto hoy (CURRENT_DATE)
-- Renombrar la tabla LOCALIDAD a COD_POSTAL.
-- Renombrar la columna dni_titular en la tabla TITULAR a codigo_titular.
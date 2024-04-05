use biblioteca;

-- Agregar una columna fecha_registro para registrar la fecha en que se registró el usuario en la biblioteca no nulo por defecto 1 de enero de 2024
ALTER TABLE USUARIO ADD COLUMN fecha_registro DATE NOT NULL DEFAULT '2024-01-01';
-- Modificar la columna telefono para que acepte valores únicos.
ALTER TABLE USUARIO MODIFY COLUMN telefono CHAR(12) UNIQUE;
-- Agregar una columna tipo_usuario ('SOCIO', 'EMPLEADO', 'INFANTIL') admite nulo
ALTER TABLE USUARIO ADD COLUMN tipo_usuario ENUM('SOCIO', 'EMPLEADO', 'INFANTIL');
-- Modificar la columna direccion para separarla en múltiples campos como calle, población, CP. 

-- Borra la columna dirección.
ALTER TABLE USUARIO DROP COLUMN direccion;
-- Agregar una columna estado_cuenta ('caducado', 'bloqueado', 'activo') por defecto activo.
ALTER TABLE USUARIO ADD COLUMN estado_cuenta ENUM('caducado', 'bloqueado', 'activo') ;
-- Modificar la columna codigo para que sea autoincremental. ¿Te deja? ¿Qué harías?

-- Crea una tabla DUP_USUARIO que contenga la misma estructura que USUARIO.
create table DUP_USUARIO  like USUARIO;
-- Crea una tabla HCO_USUARIO que contenga la misma estructura y los datos de usuario.
create table HCO_USUARIO   ;
-- Renombra la tabla USUARIO por LECTOR
rename table USUARIO to LECTOR;
-- Renombra la columna nombre por nombre_completo
alter table USUARIO rename column nombre to nombre_completo;
-- Crea una columna pwd no nula que contenga por defecto '12345'
alter table USUARIO ADD COLUMN pwd VARCHAR(255) not null DEFAULT '12345';
-- Crea un índice sobre estado_cuenta.
CREATE INDEX idx_estado_cuenta ON LECTOR(estado_cuenta);
-- Borra el índice.
drop index idx_estado_cuenta ;
-- Crea una vista VLECTOR con los datos del usuario excepto la pwd.
-- Consulta todas las columnas de la vista.
SELECT * FROM vista;
-- Trunca la tabla HCO_USUARIO
-- Muestra todas las tablas de la BD biblioteca.
SHOW TABLES;
-- Muestra la estructura final de LECTOR, HCO_USUARIO, DUP_USUARIO Y VLECTOR.
DESCRIBE LECTOR;
DESCRIBE HCO_USUARIO;
DESCRIBE VLECTOR  ;

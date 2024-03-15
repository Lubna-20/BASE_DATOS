USE ACTIVIDAD_1;

insert INTO PRODUCTO (codigo,nombre,precio) value (1,"martillo",20.5);
insert INTO PRODUCTO (codigo,nombre,precio) value (2,"",20.5); -- ES DISTINTO A NULL

insert into LIBRO (id_libro,contenido) value (1,'data:text/plain;base64,SE9MQSBNVU5ETw==');

insert into EMPLEADO (dni,ape1,nombre,tfno,fechaNac, rol, ultimoAcceso) 
value ('12345678z', 'Fernandez', 'Eva','', '1999-11-20', 'AF','2024-03-11 14:30:00');
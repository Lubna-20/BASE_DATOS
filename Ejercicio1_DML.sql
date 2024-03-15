-- Insertar datos en la tabla COD_POSTAL
INSERT INTO COD_POSTAL (CP, Localidad, provincia) VALUES ('10310', 'Talayuela', 'Caceres');
INSERT INTO COD_POSTAL (CP, Localidad, provincia) VALUES ('10300', 'Navalmoral de la Mata', 'Caceres');

-- Insertar datos en la tabla CLIENTE
INSERT INTO CLIENTE (DNI, nombre, apd, ap2, calle, CP) VALUES ('11111111A', 'Juan', 'García', 'Pérez', 'Calle Mayor 123', '10310');
INSERT INTO CLIENTE (DNI, nombre, apd, ap2, calle, CP) VALUES ('22222222B', 'María', 'López', 'Gómez', 'Calle Tomas 456', '10300');

-- Insertar datos en la tabla ARTICULO
INSERT INTO ARTICULO (Ref, nombre, precio) VALUES ('A123', 'Camisa', 25.50);
INSERT INTO ARTICULO (Ref, nombre, precio) VALUES ('B456', 'Pantalón', 35.99);

-- Insertar datos en la tabla FACTURA
INSERT INTO FACTURA (IdFacture, DNI, fediaFacture, totalFactura) VALUES (1, '11111111A', '2024-03-14', 61.49);
INSERT INTO FACTURA (IdFacture, DNI, fediaFacture, totalFactura) VALUES (2, '22222222B', '2024-03-14', 79.98);

-- Insertar datos en la tabla FACTURA_ARTICULO
INSERT INTO FACTURA_ARTICULO (IdFacture, Ref, cantidad) VALUES (1, 'A123', 2);
INSERT INTO FACTURA_ARTICULO (IdFacture, Ref, cantidad) VALUES (1, 'B456', 1);
INSERT INTO FACTURA_ARTICULO (IdFacture, Ref, cantidad) VALUES (2, 'A123', 3);
INSERT INTO FACTURA_ARTICULO (IdFacture, Ref, cantidad) VALUES (2, 'B456', 1);
/*PoblarOK*/

-- Insertar en Clientes

INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI001', 'Juan Pérez', 'Bogotá', '12345-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI002', 'María Gómez', 'Medellín', '67890-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI003', 'Carlos Ramírez', 'Cali', '11223-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI004', 'Ana Torres', 'Barranquilla', '44556-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI005', 'Luis Herrera', 'Cartagena', '77889-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI006', 'Sofía Mendoza', 'Bucaramanga', '99100-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI007', 'Diego López', 'Pereira', '22334-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI008', 'Laura Castillo', 'Manizales', '55667-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI009', 'Fernando Ríos', 'Cúcuta', '88990-');
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) VALUES ('CLI010', 'Camila Suárez', 'Villavicencio', '10203-');


-- Insertar en PuntosDeVenta

INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI001', 'Pedro Martínez', 'Norte');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI002', 'Lucía Fernández', 'Sur');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI003', 'Javier Gómez', 'Centro');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI004', 'Andrea Torres', 'Oeste');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI005', 'Fernando Ríos', 'Este');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI006', 'Valentina Herrera', 'Norte');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI007', 'Martín Suárez', 'Sur');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI008', 'Carolina Castro', 'Centro');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI009', 'Ricardo Mendoza', 'Oeste');
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI010', 'Camila Ramírez', 'Este');

-- Insertar en Externos 

INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI001', 'Distribuidor', 'distribuidor1@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI002', 'Mayorista', 'mayorista2@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI003', 'Minorista', 'minorista3@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI004', 'Proveedor', 'proveedor4@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI005', 'Cliente VIP', 'vip5@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI006', 'Distribuidor', 'distribuidor6@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI007', 'Mayorista', 'mayorista7@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI008', 'Minorista', 'minorista8@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI009', 'Proveedor', 'proveedor9@email.com');
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI010', 'Cliente VIP', 'vip10@email.com');


-- Insertar en Telefonos

INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3001234567, 'CLI001');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3109876543, 'CLI002');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3204567890, 'CLI003');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3306789012, 'CLI004');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3405678901, 'CLI005');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3504567890, 'CLI006');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3603456789, 'CLI007');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3702345678, 'CLI008');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3801234567, 'CLI009');
INSERT INTO Telefonos (numeroTelefonico, tclienteID) VALUES (3909876543, 'CLI010');

-- Insertar en Pedidos
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED001', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Juan Perez', 'CLI001');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED002', TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'Maria Lopez', 'CLI002');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED003', TO_DATE('2024-03-03', 'YYYY-MM-DD'), 'Carlos Rojas', 'CLI003');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED004', TO_DATE('2024-03-04', 'YYYY-MM-DD'), 'Ana Torres', 'CLI004');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED005', TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Luis Gonzalez', 'CLI005');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED006', TO_DATE('2024-03-06', 'YYYY-MM-DD'), 'Sofia Martinez', 'CLI006');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED007', TO_DATE('2024-03-07', 'YYYY-MM-DD'), 'Pedro Ramirez', 'CLI007');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED008', TO_DATE('2024-03-08', 'YYYY-MM-DD'), 'Elena Suarez', 'CLI008');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED009', TO_DATE('2024-03-09', 'YYYY-MM-DD'), 'Ricardo Diaz', 'CLI009');
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente) VALUES ('PED010', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Laura Herrera', 'CLI010');

-- Insertar en Productos
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO001', 'Pollo 1-1', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), 5000.00, '1.5kg', 'PED001');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO002', 'Broaster', TO_DATE('2024-06-05', 'YYYY-MM-DD'), TO_DATE('2024-03-02', 'YYYY-MM-DD'), 2000.00, '500g', 'PED002');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO003', 'Muslo', TO_DATE('2024-06-10', 'YYYY-MM-DD'), TO_DATE('2024-03-03', 'YYYY-MM-DD'), 7000.00, '1kg', 'PED003');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO004', 'Pollo 1-4', TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2024-03-04', 'YYYY-MM-DD'), 6000.00, '900g', 'PED004');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO005', 'Colombina', TO_DATE('2024-06-20', 'YYYY-MM-DD'), TO_DATE('2024-03-05', 'YYYY-MM-DD'), 4500.00, '800g', 'PED005');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO006', 'Pechuga', TO_DATE('2024-06-25', 'YYYY-MM-DD'), TO_DATE('2024-03-06', 'YYYY-MM-DD'), 5500.00, '1.8kg', 'PED006');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO007', 'Pernil', TO_DATE('2024-06-30', 'YYYY-MM-DD'), TO_DATE('2024-03-07', 'YYYY-MM-DD'), 4800.00, '600g', 'PED007');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO008', 'Ala', TO_DATE('2024-07-05', 'YYYY-MM-DD'), TO_DATE('2024-03-08', 'YYYY-MM-DD'), 3200.00, '700g', 'PED008');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO009', 'Pierna Pernil', TO_DATE('2024-07-10', 'YYYY-MM-DD'), TO_DATE('2024-03-09', 'YYYY-MM-DD'), 7500.00, '500g', 'PED009');

INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO010', 'Rabadilla', TO_DATE('2024-07-15', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 8000.00, '400g', 'PED010');

-- Insertar en Contenidos
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO001', 'PED001', 5);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO002', 'PED002', 10);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO003', 'PED003', 8);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO004', 'PED004', 15);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO005', 'PED005', 7);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO006', 'PED006', 12);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO007', 'PED007', 6);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO008', 'PED008', 9);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO009', 'PED009', 20);
INSERT INTO Contenidos (codigoProducto, codigoPedido, cantidad) VALUES ('PRO010', 'PED010', 11);


-- Insertar en PollosEnteros

INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Pequeño', 'Natural', 'PRO001');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Mediano', 'Condimentado', 'PRO002');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Grande', 'Natural', 'PRO003');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Pequeño', 'Condimentado', 'PRO004');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Mediano', 'Natural', 'PRO005');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Grande', 'Condimentado', 'PRO006');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Pequeño', 'Natural', 'PRO007');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Mediano', 'Condimentado', 'PRO008');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Grande', 'Natural', 'PRO009');
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Pequeño', 'Condimentado', 'PRO010');


-- Insertar en PollosDespresados 

INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Pequeño', 4, 'PRO001');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Mediano', 6, 'PRO002');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Grande', 8, 'PRO003');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Pequeño', 5, 'PRO004');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Mediano', 7, 'PRO005');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Grande', 9, 'PRO006');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Pequeño', 3, 'PRO007');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Mediano', 6, 'PRO008');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Grande', 10, 'PRO009');
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Pequeño', 4, 'PRO010');


-- Insertar en Menudencias

INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Higado', 'Bajo', 'PRO001');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Corazon', 'Medio', 'PRO002');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Mollejas', 'Alto', 'PRO003');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Higado', 'Medio', 'PRO004');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Corazon', 'Bajo', 'PRO005');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Mollejas', 'Medio', 'PRO006');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Higado', 'Alto', 'PRO007');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Corazon', 'Medio', 'PRO008');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Mollejas', 'Bajo', 'PRO009');
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Higado', 'Medio', 'PRO010');

-- Insertar en Deudas

INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU001', 30, TO_DATE('2025-04-10', 'YYYY-MM-DD'), 100.50);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU002', 45, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 200.75);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU003', 60, TO_DATE('2025-06-20', 'YYYY-MM-DD'), 150.00);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU004', 90, TO_DATE('2025-07-25', 'YYYY-MM-DD'), 300.25);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU005', 30, TO_DATE('2025-08-30', 'YYYY-MM-DD'), 120.00);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU006', 45, TO_DATE('2025-09-15', 'YYYY-MM-DD'), 180.75);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU007', 60, TO_DATE('2025-10-20', 'YYYY-MM-DD'), 250.00);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU008', 90, TO_DATE('2025-11-25', 'YYYY-MM-DD'), 400.50);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU009', 30, TO_DATE('2025-12-30', 'YYYY-MM-DD'), 110.25);
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU010', 45, TO_DATE('2026-01-15', 'YYYY-MM-DD'), 220.00);

-- Insertar en Pagos

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG001', 10.50, 'Confirmado', TO_DATE('2025-03-10', 'YYYY-MM-DD'), '14:30', 'Banco A', 'Efectivo');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG002', 5.00, 'En proceso', TO_DATE('2025-03-11', 'YYYY-MM-DD'), '09:15', 'Banco B', 'Transferencia');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG003', 0.00, 'Rechazado', TO_DATE('2025-03-12', 'YYYY-MM-DD'), '11:45', 'Banco C', 'Tarjeta de credito');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG004', 7.25, 'Con deuda', TO_DATE('2025-03-13', 'YYYY-MM-DD'), '16:00', 'Banco D', 'Efectivo');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG005', 12.75, 'Confirmado', TO_DATE('2025-03-14', 'YYYY-MM-DD'), '13:20', 'Banco A', 'Transferencia');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG006', 3.50, 'En proceso', TO_DATE('2025-03-15', 'YYYY-MM-DD'), '08:10', 'Banco B', 'Tarjeta de credito');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG007', 0.00, 'Rechazado', TO_DATE('2025-03-16', 'YYYY-MM-DD'), '17:45', 'Banco C', 'Efectivo');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG008', 9.00, 'Confirmado', TO_DATE('2025-03-17', 'YYYY-MM-DD'), '10:30', 'Banco D', 'Transferencia');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG009', 15.00, 'Con deuda', TO_DATE('2025-03-18', 'YYYY-MM-DD'), '15:20', 'Banco A', 'Tarjeta de credito');

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG010', 4.50, 'En proceso', TO_DATE('2025-03-19', 'YYYY-MM-DD'), '12:05', 'Banco B', 'Efectivo');

-- Insertar en Facturas

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC001', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'Aprobada', 99.99, 'PED001', 'DEU001', 'PAG001');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC002', TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'Cancelada', 150.75, 'PED002', 'DEU002', 'PAG002');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC003', TO_DATE('2024-03-03', 'YYYY-MM-DD'), 'Aprobada', 200.50, 'PED003', 'DEU003', 'PAG003');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC004', TO_DATE('2024-03-04', 'YYYY-MM-DD'), 'Aprobada', 75.25, 'PED004', 'DEU004', 'PAG004');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC005', TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'Cancelada', 125.99, 'PED005', 'DEU005', 'PAG005');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC006', TO_DATE('2024-03-06', 'YYYY-MM-DD'), 'Aprobada', 300.00, 'PED006', 'DEU006', 'PAG006');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC007', TO_DATE('2024-03-07', 'YYYY-MM-DD'), 'Cancelada', 50.99, 'PED007', 'DEU007', 'PAG007');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC008', TO_DATE('2024-03-08', 'YYYY-MM-DD'), 'Aprobada', 400.75, 'PED008', 'DEU008', 'PAG008');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC009', TO_DATE('2024-03-09', 'YYYY-MM-DD'), 'Aprobada', 275.50, 'PED009', 'DEU009', 'PAG009');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC010', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Cancelada', 500.99, 'PED010', 'DEU010', 'PAG010');

-- Insertar en Fisicas 

INSERT INTO Fisicas (serial, codigoFactura) VALUES ('AB1001', 'FAC001');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('CD2002', 'FAC002');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('EF3003', 'FAC003');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('GH4004', 'FAC004');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('IJ5005', 'FAC005');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('KL6006', 'FAC006');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('MN7007', 'FAC007');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('OP8008', 'FAC008');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('QR9009', 'FAC009');
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('ST1010', 'FAC010');

-- Insertar en Electronicas

INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('ABC123XYZ', '08:30', 'FAC001');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('DEF456LMN', '09:45', 'FAC002');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('GHI789OPQ', '11:15', 'FAC003');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('JKL101112', '13:00', 'FAC004');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('MNO131415', '14:25', 'FAC005');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('PQR161718', '15:40', 'FAC006');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('STU192021', '17:55', 'FAC007');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('VWX222324', '19:10', 'FAC008');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('YZA252627', '20:35', 'FAC009');
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('BCD282930', '22:50', 'FAC010');


-- Insertar en Despachos

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES001', 'T', 'T', 'Juan Pérez', TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'Pollos 500kg', 'FAC001');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES002', 'F', 'T', 'María Gómez', TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'Menudencias 200g', 'FAC002');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES003', 'T', 'F', 'Carlos López', TO_DATE('2025-03-12', 'YYYY-MM-DD'), 'Pechugas 1kg', 'FAC003');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES004', 'T', 'T', 'Ana Torres', TO_DATE('2025-03-13', 'YYYY-MM-DD'), 'Alas 300g', 'FAC004');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES005', 'F', 'T', 'Pedro Ramírez', TO_DATE('2025-03-14', 'YYYY-MM-DD'), 'Muslos 2kg', 'FAC005');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES006', 'T', 'T', 'Laura Sánchez', TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'Patas 400g', 'FAC006');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES007', 'F', 'F', 'Fernando Díaz', TO_DATE('2025-03-16', 'YYYY-MM-DD'), 'Filetes 1500g', 'FAC007');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES008', 'T', 'T', 'Gabriela Ruiz', TO_DATE('2025-03-17', 'YYYY-MM-DD'), 'Pollo entero 3kg', 'FAC008');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES009', 'T', 'F', 'Sergio Mendoza', TO_DATE('2025-03-18', 'YYYY-MM-DD'), 'Molidas 700g', 'FAC009');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura) 
VALUES ('DES010', 'F', 'T', 'Valeria Cortés', TO_DATE('2025-03-19', 'YYYY-MM-DD'), 'Huesos 500g', 'FAC010');

-- Insertar en Envios

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV001', 'DES001', 'ABC123', 'Juan Pérez', TO_DATE('2025-03-10', 'YYYY-MM-DD'), '08:30', 'María Gómez', 'Entrega puntual', 'Bogotá', 150.50, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV002', 'DES002', 'DEF456', 'Carlos López', TO_DATE('2025-03-11', 'YYYY-MM-DD'), '10:15', 'Pedro Ramírez', 'Cliente ausente', 'Medellín', 200.00, 'T');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV003', 'DES003', 'GHI789', 'Ana Torres', TO_DATE('2025-03-12', 'YYYY-MM-DD'), '14:45', 'Laura Sánchez', NULL, 'Cali', 175.75, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV004', 'DES004', 'JKL321', 'Sergio Mendoza', TO_DATE('2025-03-13', 'YYYY-MM-DD'), '09:00', 'Fernando Díaz', 'Entrega con retraso', 'Barranquilla', 180.30, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV005', 'DES005', 'MNO654', 'Gabriela Ruiz', TO_DATE('2025-03-14', 'YYYY-MM-DD'), '11:20', 'Valeria Cortés', 'Entregado sin novedades', 'Cartagena', 210.80, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV006', 'DES006', 'PQR987', 'Roberto Martínez', TO_DATE('2025-03-15', 'YYYY-MM-DD'), '15:30', 'Andrea Suárez', 'Paquete dañado', 'Pereira', 160.60, 'T');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV007', 'DES007', 'STU159', 'Manuel Herrera', TO_DATE('2025-03-16', 'YYYY-MM-DD'), '07:50', 'Diana Castro', NULL, 'Bucaramanga', 145.00, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV008', 'DES008', 'VWX753', 'Patricia León', TO_DATE('2025-03-17', 'YYYY-MM-DD'), '13:10', 'Alejandro Ríos', 'Cambio de dirección', 'Manizales', 190.25, 'T');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV009', 'DES009', 'YZA852', 'Ricardo Gómez', TO_DATE('2025-03-18', 'YYYY-MM-DD'), '17:00', 'Natalia Torres', 'Cliente satisfecho', 'Cúcuta', 220.40, 'F');

INSERT INTO Envios (guiaID, idDespacho, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV010', 'DES010', 'DAA326', 'Lorena Medina', TO_DATE('2025-03-19', 'YYYY-MM-DD'), '16:45', 'Javier Peña', 'Entrega manual sin vehículo', 'Villavicencio', 130.90, 'F');

-- Insertar en Paradas

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR001', 'Zona Norte, Bogota', '01:30', 'Bodega Principal', 'Punto de distribución 1', 'ENV001');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR002', 'Zona Sur, Medellin', '02:15', 'Centro de acopio', 'Tienda Mayorista 3', 'ENV002');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR003', 'Zona Centro, Cali', '01:50', 'Planta de producción', 'Sucursal Cali', 'ENV003');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR004', 'Zona Oeste, Barranquilla', '02:40', 'Bodega Regional', 'Cliente Final 2', 'ENV004');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR005', 'Zona Industrial, Cartagena', '01:20', 'Terminal de Carga', 'Punto de Venta 7', 'ENV005');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR006', 'Zona Comercial, Pereira', '02:10', 'Sucursal Central', 'Supermercado Express', 'ENV006');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR007', 'Zona Residencial, Bucaramanga', '01:45', 'Centro de Distribución', 'Domicilio Particular', 'ENV007');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR008', 'Zona Universitaria, Manizales', '02:30', 'Almacén General', 'Universidad Pública', 'ENV008');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR009', 'Zona Empresarial, Cucuta', '01:35', 'Depósito Norte', 'Tienda Corporativa', 'ENV009');

INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR010', 'Zona Rural, Villavicencio', NULL, 'Almacén Campesino', 'Granja Productora', 'ENV010');

/* PoblarNoOK */

-- ERROR: códigoProducto no sigue el formato 'PRO###'
INSERT INTO Productos (codigo, tipo, peso, fechaVencimiento, precio) 
VALUES ('PRD001', 'Pollo entero', 2000, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 15000);
-- Violación de CHECK: REGEXP_LIKE(codigo, '^PRO[0-9]+$')

-- ERROR: parteMenudencia no es válido (solo 'Higado', 'Corazon', 'Mollejas')
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) 
VALUES ('Riñón', 'Medio', 'PRO002');
-- Violación de CHECK: parteMenudencia IN ('Higado', 'Corazon', 'Mollejas')

-- ERROR: clienteID no sigue el formato 'CLI###'
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) 
VALUES ('C001', 'Juan Pérez', 'Cali', '12345678-9');
-- Violación de CHECK: REGEXP_LIKE(clienteID, '^CLI[0-9]+$')

-- ERROR: códigoCliente no existe en la tabla Clientes
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) 
VALUES ('CLI999', 'Ana López', 'Zona Centro');
-- Violación de FOREIGN KEY: FK_PUNTOS_CLIENTES (codigoCliente no existe en Clientes)

-- ERROR: correo electrónico en formato incorrecto
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) 
VALUES ('CLI003', 'Distribuidor', 'correo_invalido.com');
-- Violación de CHECK: REGEXP_LIKE(correoElectronico, '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')

-- ERROR: número telefónico no empieza con 3 (no es un celular)
INSERT INTO Telefonos (numeroTelefonico, tclienteID) 
VALUES (2104567890, 'CLI002');
-- Violación de CHECK: REGEXP_LIKE(numeroTelefonico, '^3[0-9]{9}$')

-- ERROR: estado no permitido (debe ser 'Aprobada' o 'Cancelada')
INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC005', TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'Pendiente', 120.50, 'PED001', 'DEU001', 'PAG001');
-- Violación de CHECK: estado IN ('Aprobada', 'Cancelada')

-- ERROR: serial en formato incorrecto (debe ser dos letras seguidas de números)
INSERT INTO Fisicas (serial, codigoFactura) 
VALUES ('123ABC', 'FAC002');
-- Violación de CHECK: REGEXP_LIKE(serial, '^[A-Z]{2}[0-9]+$')

-- ERROR: codigoFactura incorrecta
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) 
VALUES ('A1B2C3D4E5F6', '14:30', 'FACS003');
-- Violación de CHECK: codigoFactura = 'FAC'

-- ERROR: abono en formato incorrecto
INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) 
VALUES ('DEU004', 30, TO_DATE('2025-06-10', 'YYYY-MM-DD'), '50.00$');
-- Violación de CHECK: REGEXP_LIKE(abono, '^[0-9]+(\.[0-9]+)?\$')

-- ERROR: método de pago no permitido
INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG005', 10.5, 'Confirmado', TO_DATE('2025-04-01', 'YYYY-MM-DD'), '11:45', 'Banco X', 'Bitcoin');
-- Violación de CHECK: metodoPago IN ('Transferencia', 'Efectivo', 'Tarjeta de credito')

-- ERROR: cantidad enviada no sigue el formato 'X kg' o 'X g'
INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura, guiaEnvio) 
VALUES ('DES002', T, T, 'Carlos Ruiz', TO_DATE('2025-05-20', 'YYYY-MM-DD'), '500 litros', 'FAC001', 'ENV001');
-- Violación de CHECK: REGEXP_LIKE(cantidadEnviada, '^[A-Za-z ]+ [0-9]+(g|kg)$')

-- ERROR: placaVehiculo no sigue el formato 'XXX###'
INSERT INTO Envios (guiaID, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV003', 'AB1234', 'Pedro Gómez', TO_DATE('2025-05-15', 'YYYY-MM-DD'), '08:45', 'Tienda Local', NULL, 'Centro Comercial', 100.00, F);
-- Violación de CHECK: placaVehiculo LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'

-- ERROR: puntoPartida y puntoLlegada son iguales
INSERT INTO Paradas (rutaID, zona, tiempoRecorrido, puntoPartida, puntoLlegada, codigoEnvio) 
VALUES ('PAR005', 'Zona Sur, Bogotá', '00:45', 'Bodega Central', 'Bodega Central', 'ENV002');
-- Lógica incorrecta: punto de partida y llegada no pueden ser iguales

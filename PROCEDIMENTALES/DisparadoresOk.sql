/* DisparadoresOk */

-- /* Herencias */

-- TR_PRODUCTOEXCLUSIVO_POLLOSENTEROS;

-- Insertar un producto en la tabla Productos
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO999', 'Pollo 1-5', TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 6000.00, '1.5kg', 'PED001');

-- Insertar el producto en la tabla PollosEnteros
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Grande', 'Natural', 'PRO999'); -- Será aceptado porque el código PRO999 no existe en las tablas PollosDespresados ni Menudencias.



-- TR_PRODUCTOEXCLUSIVO_POLLOSDESPRESADOS;

-- Insertar un producto en la tabla Productos
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO888', 'Pollo 1-2', TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 7000.00, '1.2kg', 'PED002');

-- Insertar el producto en la tabla PollosDespresados
INSERT INTO PollosDespresados (tamañoDespresado, numeroPiezas, codigo) VALUES ('Mediano', 6, 'PRO888'); -- Será aceptado porque el código PRO888 no existe en las tablas PollosEnteros ni Menudencias.



-- TR_PRODUCTOEXCLUSIVO_MENUDENCIAS;

-- Insertar un producto en la tabla Productos
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO777', 'Menudencia', TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 4500.00, '500g', 'PED003');

-- Insertar el producto en la tabla Menudencias
INSERT INTO Menudencias (parteMenudencia, contenidoSangre, codigo) VALUES ('Higado', 'Medio', 'PRO777'); --Será aceptado porque el código PRO777 no existe en las tablas PollosEnteros ni PollosDespresados.



-- TR_FACTURAEXCLUSIVA_FISICAS;

-- Insertar una factura en la tabla Facturas
INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC999', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Aprobada', 150.00, 'PED001', 'DEU001', 'PAG001');


-- Insertar la factura en la tabla Fisicas
INSERT INTO Fisicas (serial, codigoFactura) VALUES ('XY12345', 'FAC999'); -- Será aceptado porque la factura FAC999 no existe en la tabla Electronicas.



-- TR_FACTURAEXCLUSIVA_ELECTRONICAS;

-- Insertar una factura en la tabla Facturas
INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC888', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Aprobada', 250.00, 'PED002', 'DEU002', 'PAG002');

-- Insertar la factura en la tabla Electronicas
INSERT INTO Electronicas (codigoDian, hora, codigoFactura) VALUES ('XYZ123456', '10:30', 'FAC888'); -- Será aceptado porque la factura FAC888 no existe en la tabla Fisicas.



-- TR_CLIENTEEXCLUSIVO_PUNTOSDEVENTA;

-- Insertar un cliente en la tabla Clientes
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) 
VALUES ('CLI011', 'Carlos Pérez', 'Bogotá', '12345-');

-- Insertar el cliente en la tabla PuntosDeVenta
INSERT INTO PuntosDeVenta (codigoCliente, encargado, zona) VALUES ('CLI011', 'Luis Gómez', 'Zona Norte'); -- Será aceptado porque el cliente CLI011 no existe en la tabla Externos.


-- TR_CLIENTEEXCLUSIVO_EXTERNOS;

-- Insertar un cliente en la tabla Clientes
INSERT INTO Clientes (clienteID, nombre, ubicacion, nit) 
VALUES ('CLI012', 'Andrea López', 'Cali', '98765-');

-- Insertar el cliente en la tabla Externos
INSERT INTO Externos (codigoCliente, tipo, correoElectronico) VALUES ('CLI012', 'Distribuidor', 'andrea.lopez@email.com'); -- Será aceptado porque el cliente CLI012 no existe en la tabla PuntosDeVenta.



-- /* Registrar Producto */

-- TR_PRODUCTO_PRECIO_VALIDO;

-- Insertar un producto en la tabla Productos con un precio válido
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO123', 'Pollo Especial', TO_DATE('2024-12-31', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 5500.00, '1.2kg', 'PED011'); -- Será aceptado porque el precio es mayor que 0.



-- TR_PRODUCTO_PESO_VALIDO;

-- Insertar un producto en la tabla Productos con un peso válido
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO124', 'Pollo Entero Mediano', TO_DATE('2024-12-31', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 6000.00, '1.5kg', 'PED012');

-- Insertar el producto en la tabla PollosEnteros
INSERT INTO PollosEnteros (tamañoPollo, estado, codigo) VALUES ('Mediano', 'Natural', 'PRO124'); -- Será aceptado porque el peso 1.5kg equivale a 1500 gramos, que está dentro del rango permitido (1100-1900 gramos) 



-- TR_PRODUCTO_MODIFICACION_RESTRINGIDA;

-- Insertar un producto que no está asociado a ninguna factura
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO200', 'Pollo Libre', TO_DATE('2024-12-31', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 5000.00, '1.2kg', 'PED200');

-- Modificar el producto (será aceptado porque no está asociado a ninguna factura)
UPDATE Productos
SET valorPorKilo = 5500.00
WHERE codigo = 'PRO200'; -- Será aceptado porque el codigoPedido del producto PRO200 no está relacionado con ninguna factura.



-- TR_PRODUCTO_ELIMINACION_RESTRINGIDA;

-- Insertar un producto que no está asociado a ningún pedido, factura o despacho
INSERT INTO Productos (codigo, nombre, fechaCaducidad, fechaProduccion, valorPorKilo, peso, codigoPedido) 
VALUES ('PRO300', 'Pollo Sin Asociaciones', TO_DATE('2024-12-31', 'YYYY-MM-DD'), TO_DATE('2024-11-01', 'YYYY-MM-DD'), 4500.00, '1.2kg', 'PED300');

-- Eliminar el producto (será aceptado porque no está asociado a ningún pedido, factura o despacho)
DELETE FROM Productos
WHERE codigo = 'PRO300'; -- Será aceptado porque el producto PRO300 no tiene relaciones con las tablas Contenidos, Facturas o Despachos.



-- /* Mantener Despacho */

-- TR_DESPACHO_FACTURA_CANCELADA

-- Insertar una factura con estado "Cancelada"
INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC999', TO_DATE('2025-04-01', 'YYYY-MM-DD'), 'Cancelada', 150.00, 'PED999', 'DEU999', 'PAG999');

-- Insertar un despacho asociado a la factura cancelada
INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura, guiaEnvio) 
VALUES ('DES999', 'T', 'T', 'Juan Pérez', TO_DATE('2025-04-02', 'YYYY-MM-DD'), 'Pollos 500kg', 'FAC999', 'ENV999'); -- Será aceptado porque la factura FAC999 tiene estado "Cancelada".



-- TR_ENVIO_DEVUELTO_OBSERVACIONES

-- Insertar un envío devuelto con observaciones
INSERT INTO Envios (guiaID, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion) 
VALUES ('ENV011', 'XYZ123', 'Carlos Pérez', TO_DATE('2025-04-20', 'YYYY-MM-DD'), '10:00', 'Tienda Central', 'Producto dañado durante el transporte', 'Bogotá', 180.00, 'T'); -- Será aceptado porque el envío tiene observaciones y está marcado como devuelto.



-- TR_ENVIO_ADICION_RESTRICCION

-- Insertar un envío cumpliendo con las restricciones del trigger
INSERT INTO Envios (guiaID, placaVehiculo, conductor, ubicacion, costo) 
VALUES ('ENV012', 'XYZ456', 'María López', 'Medellín', 200.00); -- Será aceptado porque los campos obligatorios (guiaID, ubicacion, costo, y conductor) están presentes y no son nulos.



-- TR_DESPACHO_MODIFICACION_RESTRINGIDA

-- Insertar un despacho sin envío asociado
INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura, guiaEnvio) 
VALUES ('DES011', 'T', 'T', 'Laura Gómez', TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'Pollos 300kg', 'FAC011', NULL);

-- Modificar el despacho (será aceptado porque no tiene un envío asociado)
UPDATE Despachos
SET encargado = 'Carlos Ramírez'
WHERE despachoID = 'DES011'; -- Será aceptado porque el despacho DES011 no tiene un envío asociado (guiaEnvio es NULL).


/* REGISTRAR PEDIDOS */

-- TR_PEDIDOS_ID_BI

INSERT INTO Pedidos (clienteID, fechaPedido, estado)
VALUES ('CLI001', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');



-- TR_PEDIDOS_FACTURADOS_BU

-- Crear un nuevo pedido sin facturas asociadas
INSERT INTO Pedidos (pedidoID, clienteID, fechaPedido, estado)
VALUES ('PED001', 'CLI001', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');

-- Modificar el pedido que no tiene facturas asociadas
UPDATE Pedidos
SET estado = 'Enviado'
WHERE pedidoID = 'PED001'; -- Será aceptado porque el pedido PED001 no tiene facturas asociadas.

-- TR_PEDIDOS_PAGO_BD

-- Crear un pedido sin pagos asociados
INSERT INTO Pedidos (pedidoID, clienteID, fechaPedido, estado)
VALUES ('PED003', 'CLI003', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');

-- Eliminar un pedido que no tiene pagos asociados
DELETE FROM Pedidos
WHERE pedidoID = 'PED003';


/* MANTENER FACTURAS */

-- TR_FACTURAS_ID_BI

INSERT INTO Facturas (codigoPedido, estado)
VALUES ('PED001', 'Pendiente');

SELECT * FROM Facturas WHERE codigoPedido = 'PED001';

-- TR_PAGOS_SALDO_PENDIENTE_BI

-- el pago es de 500,  es menor que el saldo pendiente de 700
INSERT INTO Pagos (pagoID, codigoFactura, monto)
VALUES ('PAY001', 'FAC001', 500);


-- TR_FACTURAS_PENDIENTES_BU

-- Crear una factura con estado "Pendiente"
INSERT INTO Facturas (facturaID, estado, monto, codigoDeuda)
VALUES ('FAC001', 'Pendiente', 1000, 'DEUDA001');

-- Actualizar la factura con estado "Pendiente"
UPDATE Facturas
SET monto = 800
WHERE facturaID = 'FAC001' AND estado = 'Pendiente';


-- TR_FACTURAS_DEUDA_BU

-- Crear una factura sin deuda asociada
INSERT INTO Facturas (facturaID, estado, monto, codigoDeuda)
VALUES ('FAC002', 'Pendiente', 1000, NULL);

-- Eliminar la factura sin deuda
DELETE FROM Facturas
WHERE facturaID = 'FAC002';



/* MANTENER Clientes */

-- TR_CLIENTES_BU

-- Crear un cliente sin pedidos activos
INSERT INTO Clientes (clienteID, nombre, ubicacion, correo)
VALUES ('CLI005', 'Ana Pérez', 'Medellín', 'anaperez@example.com');

-- Verificar que el cliente no tiene pedidos activos
SELECT * FROM Pedidos WHERE codigoCliente = 'CLI005';

-- Modificar la información del cliente
UPDATE Clientes
SET nombre = 'Ana Pérez González', ubicacion = 'Medellín', correo = 'anaperezg@example.com'
WHERE clienteID = 'CLI005'; -- Será aceptado porque el cliente CLI005 no tiene pedidos activos. 


-- TR_CLIENTES_ELIMINAR_BD

-- Crear un cliente sin facturas pendientes ni deudas
INSERT INTO Clientes (clienteID, nombre, ubicacion, correo)
VALUES ('CLI004', 'Carlos Gómez', 'Cali', 'carlosgomez@example.com');

-- Verificar que no hay facturas pendientes para este cliente
SELECT * FROM Facturas WHERE codigoCliente = 'CLI004'; 

-- Verificar que no hay deudas para este cliente
SELECT * FROM Deudas WHERE clienteID = 'CLI004';

-- Intentar eliminar el cliente (debería permitirlo porque no tiene facturas pendientes ni deudas)
DELETE FROM Clientes WHERE clienteID = 'CLI004';


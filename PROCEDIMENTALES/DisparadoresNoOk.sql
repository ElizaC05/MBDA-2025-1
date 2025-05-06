/* DISPARADORES NO OK */

/* MANTENER Clientes */
-- TR_CLIENTES_BU
-- Crear cliente con pedidos
INSERT INTO Clientes (clienteID, nombre, ubicacion, correo)
VALUES ('CLI002', 'Maria Lopez', 'Cartagena', 'marialopez@example.com');

-- Crear un pedido para el cliente
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente)
VALUES ('PED001', TO_DATE('2024-04-12', 'YYYY-MM-DD'), 'Carlos', 'CLI002');

UPDATE Clientes
SET nombre = 'Maria López Actualizada', ubicacion = 'Cali', correo = 'marialopeznew@example.com'
WHERE clienteID = 'CLI002'; -- No se puede modificar la información de contacto mientras el cliente tenga pedidos activos


-- TR_CLIENTES_ELIMINAR_BD

-- -- Crear un cliente con una factura pendiente
INSERT INTO Clientes (clienteID, nombre, ubicacion, correo)
VALUES ('CLI002', 'Maria Lopez', 'Cartagena', 'marialopez@example.com');

-- Crear una factura pendiente para este cliente
INSERT INTO Facturas (facturaID, codigoCliente, estado)
VALUES ('FAC001', 'CLI002', 'Pendiente');

-- Intentar eliminar el cliente con una factura pendiente
DELETE FROM Clientes WHERE clienteID = 'CLI002'; -- No se puede eliminar el cliente porque tiene facturas pendientes o deudas




/* MANTENER FACTURAS */

-- TR_PAGOS_SALDO_PENDIENTE_BI

-- Insertar producto 
INSERT INTO Productos (codigo, nombre, valorPorKilo)
VALUES ('PRD001', 'Pollo', 5000);

-- Insertar pedido
INSERT INTO Pedidos (pedidoID, codigoCliente, fechaPedido)
VALUES ('PED001', 'CLI001', SYSDATE);

-- Insertar pedido
INSERT INTO Contenidos (codigoPedido, codigoProducto, cantidad)
VALUES ('PED001', 'PRD001', 2);

-- Insertar deuda 
INSERT INTO Deudas (deudaID, abono)
VALUES ('DEU001', 5000);

-- Insertar factura 
INSERT INTO Facturas (facturaID, codigoPedido, codigoDeuda)
VALUES ('FAC001', 'PED001', 'DEU001'); -- El monto del pago excede el saldo pendiente de la factura.


-- TR_FACTURAS_PENDIENTES_BU

-- Insertar factura con estado pendiente (sí permite modificaciones)
INSERT INTO Facturas (facturaID, codigoPedido, estado)
VALUES ('FAC002', 'PED001', 'Pendiente');

-- Insertar factura con estado pagada (no permite modificaciones)
INSERT INTO Facturas (facturaID, codigoPedido, estado)
VALUES ('FAC003', 'PED001', 'Pagada');

UPDATE Facturas
SET estado = 'Anulada'
WHERE facturaID = 'FAC003'; -- Solo se permiten modificaciones en facturas pendientes o con saldo.


-- TR_FACTURAS_DEUDA_BU

-- Insertar factura con deuda 
INSERT INTO Facturas (facturaID, codigoDeuda, estado)
VALUES ('FAC004', 1, 'Pendiente');

-- Insertar una deuda 
INSERT INTO Deudas (deudaID, abono)
VALUES (1, 0);

DELETE FROM Facturas
WHERE facturaID = 'FAC004'; -- No se pueden eliminar facturas que tengan deuda asociada.


/* REGISTRAR PEDIDOS */

-- TR_PEDIDOS_ID_BI
-- Intentar crear un pedido con un ID
INSERT INTO Pedidos (pedidoID, clienteID, fechaPedido, estado)
VALUES ('PED100', 'CLI002', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');

-- TR_PEDIDOS_FACTURADOS_BU

-- Crear un nuevo pedido
INSERT INTO Pedidos (pedidoID, clienteID, fechaPedido, estado)
VALUES ('PED002', 'CLI002', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');

-- Crear una factura asociada a este pedido
INSERT INTO Facturas (facturaID, codigoPedido, estado)
VALUES ('FAC001', 'PED002', 'Pendiente');

-- Intentar modificar un pedido que tiene una factura asociada 
UPDATE Pedidos
SET estado = 'Enviado'
WHERE pedidoID = 'PED002'; -- No se puede modificar el estado del pedido porque tiene una factura asociada.

-- TR_PEDIDOS_PAGO_BD

-- Crear un nuevo pedido
INSERT INTO Pedidos (pedidoID, clienteID, fechaPedido, estado)
VALUES ('PED004', 'CLI004', TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Pendiente');

-- Crear una factura asociada al pedido
INSERT INTO Facturas (facturaID, codigoPedido, estado, codigoPago)
VALUES ('FAC002', 'PED004', 'Pendiente', 'PAY001');

-- Crear un pago asociado a la factura
INSERT INTO Pagos (pagoID, codigoFactura, monto)
VALUES ('PAY001', 'FAC002', 500);

-- Intentar eliminar un pedido que ya ha sido pagado 
DELETE FROM Pedidos
WHERE pedidoID = 'PED004'; -- No se puede eliminar el pedido porque ya ha sido pagado.


/* REGISTRAR PRODUCTOS */

-- TR_PRODUCTO_PRECIO_VALIDO
INSERT INTO Productos (codigo, nombre, valorPorKilo)
VALUES ('PROD002', 'Producto B', 0); -- El precio es 0, lo cual no es válido

-- TR_PRODUCTO_PESO_VALIDO
-- Intentar insertar un producto con peso inválido (2.000g)
INSERT INTO Productos (codigo, nombre, peso)
VALUES ('POLLO002', 'Pollo Entero', '2000g');  -- El peso está fuera del rango de 1.100g - 1.900g

-- TR_PRODUCTO_ELIMINACION_RESTRINGIDA

-- Insertar un producto y asociarlo a un pedido
INSERT INTO Productos (codigo, nombre, valorPorKilo)
VALUES ('P004', 'Pollo Muslo', 12.0);

-- Insertar un pedido
INSERT INTO Pedidos (pedidoID, clienteID)
VALUES ('PED002', 'CLI001');

-- Insertar un contenido (asociar el producto al pedido)
INSERT INTO Contenidos (codigoPedido, codigoProducto, cantidad)
VALUES ('PED002', 'P004', 3);

DELETE FROM Productos
WHERE codigo = 'P004';  -- No se puede eliminar el producto porque está asociado a un pedido.



/* MANTENER DESPACHO */

-- TR_DESPACHO_FACTURA_CANCELADA
-- Insertar una factura con un estado diferente de 'Cancelada'
INSERT INTO Facturas (facturaID, codigoPedido, estado)
VALUES ('FAC001', 'PED001', 'Pendiente');

-- Intentar agregar un despacho para la factura que tiene estado 'Pendiente'
INSERT INTO Despachos (despachoID, codigoFactura, fechaDespacho)
VALUES ('DESP001', 'FAC001', SYSDATE); -- No se puede agregar un despacho para una factura que no está cancelada.   

-- TR_ENVIO_DEVUELTO_OBSERVACIONES
INSERT INTO Envios (envioID, devolucion, observaciones) 
VALUES ('ENV001', 'T', NULL);

-- TR_DESPACHO_MODIFICACION_RESTRINGIDA
UPDATE Despachos
SET direccionDestino = 'Nueva Dirección'
WHERE guiaEnvio = 'ENV001';
-- Error: No se puede modificar un despacho si ya tiene un envío asociado.


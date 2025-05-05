/* AccionesOK */


/* REGISTRAR PEDIDOS */
-- Al eliminar un pedido todas sus facturas deben ser eliminadas 

-- Insertar cliente
INSERT INTO Clientes (clienteID, nombre, nit, ubicacion)
VALUES ('CLI999', 'Cliente Test', '999999999-', 'Dirección Test');

--Insertar pedido asociado
INSERT INTO Pedidos (pedidoID, fechaCreacion, encargado, codigoCliente)
VALUES ('PED900', SYSDATE, 'Encargado Test', 'CLI999');

-- Insertar factura asociada al pedido

INSERT INTO Deudas (deudaID, plazo, fechaVencimiento, abono) VALUES ('DEU999', 30, TO_DATE('2025-04-10', 'YYYY-MM-DD'), 100.50);

INSERT INTO Pagos (pagoID, descuento, estado, fecha, hora, entidadFinanciera, metodoPago) 
VALUES ('PAG999', 1.50, 'Confirmado', TO_DATE('2025-03-10', 'YYYY-MM-DD'), '14:30', 'Banco A', 'Efectivo');

INSERT INTO Facturas (facturaID, fechaEmision, estado, valorUnitario, codigoPedido, codigoDeuda, codigoPago) 
VALUES ('FAC999', TO_DATE('2025-03-01', 'YYYY-MM-DD'), 'Aprobada', 99.99, 'PED900', 'DEU999', 'PAG999');


-- Verificar que la factura existe
SELECT * FROM Facturas WHERE codigoPedido = 'PED999';

-- Eliminar el pedido
DELETE FROM Pedidos WHERE pedidoID = 'PED999';

-- Verificar si la factura fue eliminada 
SELECT * FROM Facturas WHERE codigoPedido = 'PED999';



/* MANTENER FACTURAS */
-- Al eliminar un pago se deben eliminar todos los pagos asociados

--  Insertar un pago
INSERT INTO Pagos (pagoID, metodoPago, fecha)
VALUES ('PAG999', 'Efectivo', SYSDATE);

-- Insertar una factura asociada a ese pago
INSERT INTO Facturas (facturaID, estado, codigoPago)
VALUES ('FAC999', 'Pendiente', 'PAG999');

-- Verificar la factura
SELECT * FROM Facturas WHERE codigoPago = 'PAG999';

-- Eliminar el pago
DELETE FROM Pagos WHERE pagoID = 'PAG999';

-- Verificar que la factura se elimine
SELECT * FROM Facturas WHERE codigoPago = 'PAG999';

-- /* Mantener Despacho */

-- El

-- Al eliminar un despachos sus envios quedan desconocidos

-- Insertar un despacho y un envío relacionado
INSERT INTO Envios (guiaID, placaVehiculo, conductor, fechaEntrega, horaEntrega, destinatario, observaciones, ubicacion, costo, devolucion, codigoDespacho)
VALUES ('ENV123', 'AAA111', 'Luis Gómez', TO_DATE('2025-04-13', 'YYYY-MM-DD'), '08:30', 'Tienda B', NULL, 'Ciudad B', 25000, 'N', 'DESP001');

INSERT INTO Despachos (despachoID, disponibilidadCarros, revisionProductos, encargado, fechaEstimada, cantidadEnviada, codigoFactura, guiaEnvio)
VALUES ('DESP001', 'S', 'S', 'Pedro López', TO_DATE('2025-04-14', 'YYYY-MM-DD'), '80', 'FAC001', 'ENV123');

-- Verificar relación

SELECT * FROM Envios WHERE guiaID = 'ENV123';

-- Eliminar el despacho

DELETE FROM Despachos WHERE despachoID = 'DESP001';

-- Verificar que el envío quedó sin despacho

SELECT * FROM Envios WHERE guiaID = 'ENV123'; -- La columna "codigoDespacho" debe estar en NULL ahora
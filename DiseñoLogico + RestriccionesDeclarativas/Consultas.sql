/*Consultas*/

-- <Consultar los pedidos pendientes por facturar>
SELECT P.pedidoID, P.fechaCreacion, P.encargado, P.codigoCliente 
FROM Pedidos P
LEFT JOIN Facturas F ON P.pedidoID = F.codigoPedido
WHERE F.codigoPedido IS NULL;

-- <Consultar productos proximos a caducar>
SELECT codigo, nombre, peso, fechaCaducidad
FROM Productos
WHERE fechaCaducidad BETWEEN SYSDATE AND SYSDATE + 30
ORDER BY fechaCaducidad ASC;

-- <Consultar el inventario de productos>
SELECT nombre, COUNT(*) AS cantidadDisponible
FROM Productos
GROUP BY nombre
ORDER BY cantidadDisponible DESC;

-- <Consultar devoluciones de productos>
SELECT guiaID, devolucion
FROM Envios 
ORDER BY fechaEntrega DESC;

-- <Consultar estado de los envíos>

SELECT guiaID, ubicacion, 
       CASE 
           WHEN fechaEntrega <= SYSDATE THEN 'Entregado'
           ELSE 'En tránsito'
       END AS estadoEnvio
FROM Envios
ORDER BY fechaEntrega ASC;

-- <Consultar direcciones de envío>

SELECT c.clienteID, c.ubicacion AS direccionEnvio, e.guiaID, e.destinatario
FROM Clientes c
JOIN Pedido p ON c.clienteID = p.codigoCliente
JOIN Factura f ON p.pedidoID = f.codigoPedido
JOIN Despacho d ON f.facturaID = d.codigoFactura
JOIN Envios e ON d.guiaID = e.guiaID 
ORDER BY e.guiaID;

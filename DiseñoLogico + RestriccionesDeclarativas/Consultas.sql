/*Consultas*/


-- <Consultar los pedidos con mayor cantidad de productos>
SELECT p.pedidoID,
       SUM(c.cantidad) AS cantidadProducto,
       LISTAGG(pr.nombre, ', ') WITHIN GROUP (ORDER BY pr.nombre) AS Productos
FROM Pedidos p
JOIN Contenidos c ON p.pedidoID = c.codigoPedido
JOIN Productos pr ON c.codigoProducto = pr.codigo
GROUP BY p.pedidoID
ORDER BY cantidadProducto DESC;

-- <Consultar los pedidos pendientes por facturar>
SELECT P.pedidoID, P.fechaCreacion, P.encargado, P.codigoCliente 
FROM Pedidos P
LEFT JOIN Facturas F ON P.pedidoID = F.codigoPedido
WHERE F.codigoPedido IS NULL;


-- <Consultar las facturas con saldo pendiente>
SELECT 
    f.facturaID,
    c.nombre AS nombreCliente,
    c.telefono,
    d.saldoPendiente
FROM Facturas f
JOIN Clientes c ON p.codigoCliente = c.clienteID
JOIN Pedidos p ON f.codigoPedido = p.pedidoID
JOIN Deudas d ON f.codigoDeuda = d.deudaID
WHERE f.estado = 'Pendiente'
  AND d.saldoPendiente > 0; 


-- <Consultar los pagos rechazados de un pedido>
SELECT 
    p.pagoID,
    c.nombre AS nombreCliente,
    t.numeroTelefonico AS telefono,
    p.metodoPago
FROM Pagos p
JOIN Facturas f ON p.pagoID = f.codigoPago
JOIN Pedidos ped ON f.codigoPedido = ped.pedidoID
JOIN Clientes c ON ped.codigoCliente = c.clienteID
JOIN Telefonos t ON t.tclienteID = c.clienteID
WHERE p.estado = 'Rechazado';


-- <Consultar productos proximos a caducar>
SELECT codigo, nombre, peso, fechaCaducidad
FROM Productos
WHERE fechaCaducidad BETWEEN SYSDATE AND SYSDATE + 30
ORDER BY fechaCaducidad ASC;


-- <Consultar la zona de los clientes de punto de venta>
SELECT 
    c.nombre AS NombreCliente,
    c.ubicacion AS Ubicacion,
    pv.encargado AS Encargado
FROM 
    Clientes c
JOIN 
    PuntosDeVenta pv ON c.clienteID = pv.codigoCliente;


-- <Consultar el Nit de los clientes externos>
SELECT 
    c.nombre AS NombreCliente,
    c.ubicacion AS Ubicacion,
    c.nit AS Nit
FROM 
    Clientes c
JOIN 
    Externos e ON c.clienteID = e.codigoCliente;


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
JOIN Pedidos p ON c.clienteID = p.codigoCliente
JOIN Facturas f ON p.pedidoID = f.codigoPedido
JOIN Despachos d ON f.facturaID = d.codigoFactura
JOIN Envios e ON d.despachoID = e.guiaID 
ORDER BY e.guiaID;

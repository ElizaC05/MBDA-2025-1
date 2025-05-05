/*XPoblar*/

-- Deshabilitar temporalmente las restricciones referenciales
ALTER SESSION SET CONSTRAINTS = DEFERRED;

-- Eliminar los datos de todas las tablas
DELETE FROM Clientes;
DELETE FROM PuntosDeVenta;
DELETE FROM Externos;
DELETE FROM Telefonos;
DELETE FROM Pedidos;
DELETE FROM Contenidos;
DELETE FROM Productos;
DELETE FROM PollosEnteros;
DELETE FROM PollosDespresados;
DELETE FROM Menudencias;
DELETE FROM Facturas;
DELETE FROM Fisicas;
DELETE FROM Electronicas;
DELETE FROM Deudas;
DELETE FROM Pagos;
DELETE FROM Despachos;
DELETE FROM Envios;
DELETE FROM Paradas;

-- Confirmar los cambios
COMMIT;

-- Habilitar nuevamente las restricciones referenciales
ALTER SESSION SET CONSTRAINTS = IMMEDIATE;
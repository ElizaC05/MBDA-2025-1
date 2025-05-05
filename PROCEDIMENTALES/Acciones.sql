/* Acciones */


/* REGISTRAR PEDIDOS*/
-- Al eliminar un pedido todas sus facturas deben ser eliminadas 

ALTER TABLE Facturas DROP CONSTRAINT FK_FACTURAS_PEDIDOS;
ALTER TABLE Facturas
ADD CONSTRAINT FK_FACTURAS_PEDIDOS
    FOREIGN KEY (codigoPedido) REFERENCES Pedidos(pedidoID)
    ON DELETE CASCADE;

/* MANTENER FACTURAS*/

-- Al eliminar un pago se deben eliminar todos los pagos asociados


ALTER TABLE Facturas DROP CONSTRAINT FK_FACTURAS_PAGOS;
ALTER TABLE Facturas
ADD CONSTRAINT FK_FACTURAS_PAGOS
    FOREIGN KEY (codigoPago) REFERENCES Pagos(pagoID)
    ON DELETE CASCADE;


-- /* Mantener Despacho */

-- El

-- Al eliminar un despachos sus envios quedan desconocidos

ALTER TABLE Envios DROP CONSTRAINT FK_ENVIOS_DESPACHOS;
ALTER TABLE Envios ADD CONSTRAINT FK_ENVIOS_DESPACHOS
    FOREIGN KEY (idDespacho) REFERENCES Despachos(despachoID)
    ON DELETE SET NULL;
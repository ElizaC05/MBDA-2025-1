/*ATRIBUTOS*/

ALTER TABLE Pedidos ADD CONSTRAINT CK_PEDIDOS_ID
    CHECK (REGEXP_LIKE(pedidoID, '^PED[0-9]+$'));

ALTER TABLE Pedidos ADD CONSTRAINT CK_PEDIDOS_IDCLIENTE
    CHECK (REGEXP_LIKE(codigoCliente, '^CLI[0-9]+$'));

ALTER TABLE Contenidos ADD CONSTRAINT CK_CONTENIDOS_IDPRODUCTO
    CHECK (REGEXP_LIKE(codigoProducto, '^PRO[0-9]+$'));

ALTER TABLE Contenidos ADD CONSTRAINT CK_CONTENIDOS_IDPEDIDO
    CHECK (REGEXP_LIKE(codigoPedido, '^PED[0-9]+$'));

ALTER TABLE Contenidos ADD CONSTRAINT CK_CONTENIDOS_CANTIDAD
    CHECK (cantidad >= 0);

ALTER TABLE Productos ADD CONSTRAINT CK_PRODUCTOS_CODIGO
    CHECK (REGEXP_LIKE(codigo, '^PRO[0-9]+$'));

ALTER TABLE Productos ADD CONSTRAINT CK_VALORKILO
    CHECK (valorPorKilo >= 0);

ALTER TABLE Productos ADD CONSTRAINT CK_PRODUCTOS_PESO
    CHECK (REGEXP_LIKE(peso, '^[0-9]+(\.[0-9]+)?(g|kg|mg|lb)$'));

ALTER TABLE Productos ADD CONSTRAINT CK_PRODUCTOS_PEDIDOID
    CHECK (REGEXP_LIKE(codigoPedido, '^PED[0-9]+$'));

ALTER TABLE PollosEnteros ADD CONSTRAINT CK_TPOLLO_ENTEROS
    CHECK (tamañoPollo IN ('Pequeño', 'Mediano', 'Grande'));

ALTER TABLE PollosEnteros ADD CONSTRAINT CK_ESTADOPOLLO_ENTEROS
    CHECK (estado IN ('Condimentado', 'Natural'));

ALTER TABLE PollosEnteros ADD CONSTRAINT CK_ENTEROS_CODIGOPRODUCTO
    CHECK (REGEXP_LIKE(codigo, '^PRO[0-9]+$'));    

ALTER TABLE PollosDespresados ADD CONSTRAINT CK_TPOLLO_DESPRESADOS
    CHECK (tamañoDespresado IN ('Pequeño', 'Mediano', 'Grande'));

ALTER TABLE PollosDespresados ADD CONSTRAINT CK_PIEZAS_DESPRESADOS
    CHECK (numeroPiezas >= 0);

ALTER TABLE PollosDespresados ADD CONSTRAINT CK_DESPRESADOS_CODIGOPRODUCTO
    CHECK (REGEXP_LIKE(codigo, '^PRO[0-9]+$'));    

ALTER TABLE Menudencias ADD CONSTRAINT CK_TPOLLOM_MENUDENCIAS
    CHECK (parteMenudencia IN ('Higado', 'Corazon', 'Mollejas'));

ALTER TABLE Menudencias ADD CONSTRAINT CK_CONTENIDOSANGRE_MENUDENCIAS
    CHECK (contenidoSangre IN ('Bajo', 'Medio', 'Alto'));

ALTER TABLE Menudencias ADD CONSTRAINT CK_MENUDENCIAS_CODIGOPRODUCTO
    CHECK (REGEXP_LIKE(codigo, '^PRO[0-9]+$'));    

ALTER TABLE Clientes ADD CONSTRAINT CK_CLIENTES_ID
    CHECK (REGEXP_LIKE(clienteID, '^CLI[0-9]+$'));

ALTER TABLE Clientes ADD CONSTRAINT CK_CLIENTES_NIT
    CHECK (REGEXP_LIKE(nit, '^[0-9]+-$'));

ALTER TABLE PuntosDeVenta ADD CONSTRAINT CK_PUNTOS_CODIGOCLIENTE
    CHECK (REGEXP_LIKE(codigoCliente, '^CLI[0-9]+$'));

ALTER TABLE Externos ADD CONSTRAINT CK_EXTERNOS_CODIGOCLIENTE
    CHECK (REGEXP_LIKE(codigoCliente, '^CLI[0-9]+$'));

ALTER TABLE Externos ADD CONSTRAINT CK_EXTERNOS_CORREO
    CHECK (REGEXP_LIKE(correoElectronico, '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'));

ALTER TABLE Telefonos ADD CONSTRAINT CK_TELEFONO_IDCLIENTE
    CHECK (REGEXP_LIKE(tclienteID, '^CLI[0-9]+$'));

ALTER TABLE Telefonos ADD CONSTRAINT CK_TELEFONO_NUMERO
    CHECK (REGEXP_LIKE(numeroTelefonico, '^3[0-9]{9}$'));

ALTER TABLE Facturas ADD CONSTRAINT CK_FACTURA_ID
    CHECK (REGEXP_LIKE(facturaID, '^FAC[0-9]+$'));

ALTER TABLE Facturas ADD CONSTRAINT CK_ESTADO_FACTURAS 
    CHECK (estado IN ('Aprobada', 'Cancelada'));

ALTER TABLE Facturas ADD CONSTRAINT CK_VALOR_FACTURAS
    CHECK (REGEXP_LIKE(valorUnitario, '^[0-9]+(\.[0-9]+)?\$'));

ALTER TABLE Facturas ADD CONSTRAINT CK_FACTURAS_IDPEDIDO
    CHECK (REGEXP_LIKE(codigoPedido, '^PED[0-9]+$'));

ALTER TABLE Facturas ADD CONSTRAINT CK_FACTURAS_IDDEUDA
    CHECK (REGEXP_LIKE(codigoDeuda, '^DEU[0-9]+$'));

ALTER TABLE Facturas ADD CONSTRAINT CK_FACTURAS_IDPAGO
    CHECK (REGEXP_LIKE(codigoPago, '^PAG[0-9]+$'));

ALTER TABLE Fisicas ADD CONSTRAINT CK_FISICAS_SERIAL
    CHECK (REGEXP_LIKE(serial, '^[A-Z]{2}[0-9]+$') AND LENGTH(serial) <= 15);

ALTER TABLE Fisicas ADD CONSTRAINT CK_FISICAS_CODIGOFACTURA
    CHECK (REGEXP_LIKE(codigoFactura, '^FAC[0-9]+$'));

ALTER TABLE Electronicas ADD CONSTRAINT CK_ELECTRONICAS_CODIGOFACTURA
    CHECK (REGEXP_LIKE(codigoFactura, '^FAC[0-9]+$'));

ALTER TABLE Electronicas ADD CONSTRAINT CK_ELECTRONICAS_DIAN
    CHECK (REGEXP_LIKE(codigoDian, '^[A-Za-z0-9]+$') AND LENGTH(codigoDian) <= 64);

ALTER TABLE Electronicas ADD CONSTRAINT CK_ELECTRONICAS_HORA
    CHECK (REGEXP_LIKE(hora, '^([01][0-9]|2[0-3]):[0-5][0-9]$'));

ALTER TABLE Deudas ADD CONSTRAINT CK_DEUDAS_ID
    CHECK (REGEXP_LIKE(deudaID, '^DEU[0-9]+$'));

ALTER TABLE Deudas ADD CONSTRAINT CK_DEUDAS_ABONO
    CHECK (REGEXP_LIKE(abono, '^[0-9]+(\.[0-9]+)?\$'));

ALTER TABLE Pagos ADD CONSTRAINT CK_PAGOS_ID
    CHECK (REGEXP_LIKE(pagoID, '^PAG[0-9]+$'));

ALTER TABLE Pagos ADD CONSTRAINT CK_PAGOS_DESCUENTO
    CHECK (descuento >= 0 AND descuento <= 100);

ALTER TABLE Pagos ADD CONSTRAINT CK_PAGOS_ESTADO
    CHECK (estado IN ('Rechazado', 'En proceso', 'Confirmado', 'Con deuda'));

ALTER TABLE Pagos ADD CONSTRAINT CK_PAGOS_HORA
    CHECK (REGEXP_LIKE(hora, '^([01][0-9]|2[0-3]):[0-5][0-9]$'));

ALTER TABLE Pagos ADD CONSTRAINT CK_PAGOS_METODO
    CHECK (metodoPago IN ('Transferencia', 'Efectivo', 'Tarjeta de credito'));

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_ID
    CHECK (REGEXP_LIKE(despachoID, '^DES[0-9]+$'));

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_CANTIDAD
    CHECK (REGEXP_LIKE(cantidadEnviada, '^[A-Za-z ]+ [0-9]+(g|kg)$') AND LENGTH(cantidadEnviada) <= 100);

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_CODIGOFACTURA
    CHECK (REGEXP_LIKE(codigoFactura, '^FAC[0-9]+$'));

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_GUIAENVIO
    CHECK (REGEXP_LIKE(guiaEnvio, '^ENV[0-9]+$'));

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_DISPONIBILIDAD
    CHECK (disponibilidadCarros IN ('T', 'F'));

ALTER TABLE Despachos ADD CONSTRAINT CK_DESPACHOS_REVISION
    CHECK (revisionProductos IN ('T', 'F'));

ALTER TABLE Envios ADD CONSTRAINT CK_PLACA_ENVIOS
    CHECK (placaVehiculo LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

ALTER TABLE Envios ADD CONSTRAINT CK_ENVIOS_ID
    CHECK (REGEXP_LIKE(guiaID, '^ENV[0-9]+$'));

ALTER TABLE Envios ADD CONSTRAINT CK_ENVIOS_HORAENTREGA
    CHECK (REGEXP_LIKE(horaEntrega, '^([01][0-9]|2[0-3]):[0-5][0-9]$'));

ALTER TABLE Envios ADD CONSTRAINT CK_ENVIOS_COSTO
    CHECK (REGEXP_LIKE(costo, '^[0-9]+(\.[0-9]+)?\$'));

ALTER TABLE Envios ADD CONSTRAINT CK_ENVIOS_DEVOLUCION
    CHECK (devolucion IN ('T', 'F'));

ALTER TABLE Paradas ADD CONSTRAINT CK_PARADAS_ID
    CHECK (REGEXP_LIKE(rutaID, '^PAR[0-9]+$'));

ALTER TABLE Paradas ADD CONSTRAINT CK_PARADAS_ZONA
    CHECK (REGEXP_LIKE(zona, '^[A-Za-z0-9#.,\- ]+$') AND LENGTH(zona) <= 60);

ALTER TABLE Paradas ADD CONSTRAINT CK_PARADAS_TIEMPO
    CHECK (REGEXP_LIKE(tiempoRecorrido, '^([01][0-9]|2[0-3]):[0-5][0-9]$'));

ALTER TABLE Paradas ADD CONSTRAINT CK_PARADAS_CODIGOENVIO
    CHECK (REGEXP_LIKE(codigoEnvio, '^ENV[0-9]+$'));





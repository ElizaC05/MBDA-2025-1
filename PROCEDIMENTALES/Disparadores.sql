/* Disparadores */

-- /* Herencias */

-- Herencia Producto

CREATE TRIGGER TR_PRODUCTOEXCLUSIVO_POLLOSENTEROS
BEFORE INSERT ON PollosEnteros
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el código ya está en PollosDespresados
    SELECT COUNT(*)
    INTO conteo
    FROM PollosDespresados
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El código ya está en PollosDespresados. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en Menudencias
    SELECT COUNT(*)
    INTO conteo
    FROM Menudencias
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'El código ya está en Menudencias. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en la tabla Productos
    SELECT COUNT(*)
    INTO conteo
    FROM Productos
    WHERE codigo = :NEW.codigo;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El código no existe en la tabla Productos. Debe estar registrado como producto.');
    END IF;
END;
/


CREATE TRIGGER TR_PRODUCTOEXCLUSIVO_POLLOSDESPRESADOS
BEFORE INSERT ON PollosDespresados
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el código ya está en PollosEnteros
    SELECT COUNT(*)
    INTO conteo
    FROM PollosEnteros
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El código ya está en PollosEnteros. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en Menudencias
    SELECT COUNT(*)
    INTO conteo
    FROM Menudencias
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20004, 'El código ya está en Menudencias. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en la tabla Productos
    SELECT COUNT(*)
    INTO conteo
    FROM Productos
    WHERE codigo = :NEW.codigo;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El código no existe en la tabla Productos. Debe estar registrado como producto.');
    END IF;
END;
/


CREATE TRIGGER TR_PRODUCTOEXCLUSIVO_MENUDENCIAS
BEFORE INSERT ON Menudencias
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el código ya está en PollosEnteros
    SELECT COUNT(*)
    INTO conteo
    FROM PollosEnteros
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20005, 'El código ya está en PollosEnteros. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en PollosDespresados
    SELECT COUNT(*)
    INTO conteo
    FROM PollosDespresados
    WHERE codigo = :NEW.codigo;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20006, 'El código ya está en PollosDespresados. Solo puede pertenecer a una tabla.');
    END IF;

    -- Verificar si el código ya está en la tabla Productos
    SELECT COUNT(*)
    INTO conteo
    FROM Productos
    WHERE codigo = :NEW.codigo;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El código no existe en la tabla Productos. Debe estar registrado como producto.');
    END IF;
END;
/


-- Herencia Factura

CREATE TRIGGER TR_FACTURAEXCLUSIVA_FISICAS
BEFORE INSERT ON Fisicas
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si la factura ya está registrada como Electrónica
    SELECT COUNT(*)
    INTO conteo
    FROM Electronicas
    WHERE codigoFactura = :NEW.codigoFactura;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20007, 'Esta factura ya está registrada como Electrónica. No puede ser también Física.');
    END IF;

    -- Verificar si la factura ya está registrada en la tabla Facturas
    SELECT COUNT(*)
    INTO conteo
    FROM Facturas
    WHERE facturaID = :NEW.codigoFactura;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20008, 'El código de factura no existe en la tabla Facturas. Debe estar registrado como factura.');
    END IF;
END;
/

CREATE TRIGGER TR_FACTURAEXCLUSIVA_ELECTRONICAS
BEFORE INSERT ON Electronicas
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si la factura ya está registrada como Física
    SELECT COUNT(*)
    INTO conteo
    FROM Fisicas
    WHERE codigoFactura = :NEW.codigoFactura;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20008, 'Esta factura ya está registrada como Física. No puede ser también Electrónica.');
    END IF;

    -- Verificar si la factura ya está registrada en la tabla Facturas
    SELECT COUNT(*)
    INTO conteo
    FROM Facturas
    WHERE facturaID = :NEW.codigoFactura;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20009, 'El código de factura no existe en la tabla Facturas. Debe estar registrado como factura.');
    END IF;
END;
/

-- Herencia Cliente

CREATE TRIGGER TR_CLIENTEEXCLUSIVO_PUNTOSDEVENTA
BEFORE INSERT ON PuntosDeVenta
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el cliente ya está registrado como Externo
    SELECT COUNT(*)
    INTO conteo
    FROM Externos
    WHERE codigoCliente = :NEW.codigoCliente;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20009, 'Este cliente ya está registrado como Externo. No puede ser también Punto de Venta.');
    END IF;

    -- Verificar si el cliente ya está registrado en la tabla Clientes
    SELECT COUNT(*)
    INTO conteo
    FROM Clientes
    WHERE clienteID = :NEW.codigoCliente;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20031, 'El código del cliente no existe en la tabla Clientes. Debe estar registrado como cliente.');
    END IF;
END;
/

CREATE TRIGGER TR_CLIENTEEXCLUSIVO_EXTERNOS
BEFORE INSERT ON Externos
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el cliente ya está registrado como Punto de Venta
    SELECT COUNT(*)
    INTO conteo
    FROM PuntosDeVenta
    WHERE codigoCliente = :NEW.codigoCliente;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20010, 'Este cliente ya está registrado como Punto de Venta. No puede ser también Externo.');
    END IF;

    -- Verificar si el cliente ya está registrado en la tabla Clientes
    SELECT COUNT(*)
    INTO conteo
    FROM Clientes
    WHERE clienteID = :NEW.codigoCliente;

    IF conteo = 0 THEN
        RAISE_APPLICATION_ERROR(-20031, 'El código del cliente no existe en la tabla Clientes. Debe estar registrado como cliente.');
    END IF;
END;
/

/* REGISTRAR PEDIDOS*/

-- Adicionar

-- al adicionar un pedido el id debe generarse secuencialmente y automaticamente
CREATE TRIGGER TR_PEDIDOS_ID_BI
    BEFORE INSERT ON Pedidos
    FOR EACH ROW
DECLARE
    v_nuevoId NUMBER;
BEGIN

    SELECT NVL(MAX(TO_NUMBER(SUBSTR(pedidoID, 4))), 0) + 1
    INTO v_nuevoId
    FROM Pedidos;

    :NEW.pedidoID := 'PED' || LPAD(v_nuevoId, 3, '0');
END;
/

-- Modificar

-- No se pueden modificar los pedidos que ya fueron facturados 
CREATE TRIGGER TR_PEDIDOS_FACTURADOS_BU
BEFORE UPDATE ON Pedidos
FOR EACH ROW
DECLARE
    v_facturas INT;
BEGIN
    SELECT COUNT(*)
    INTO v_facturas
    FROM Facturas
    WHERE codigoPedido = :OLD.pedidoID;

    IF v_facturas > 0 THEN
        RAISE_APPLICATION_ERROR(-20022, 'No se pueden modificar los pedidos que ya fueron facturados.');
    END IF;
END;
/

-- Eliminar

-- Solo se puede eliminar un pedido si no se ha realizado el pago correspondiente

CREATE TRIGGER TR_PEDIDOS_PAGO_BD
BEFORE DELETE ON Pedidos
FOR EACH ROW
DECLARE
    v_pago INT;
BEGIN
    SELECT COUNT(*)
    INTO v_pago
    FROM Facturas f
    JOIN Pagos p ON f.codigoPago = p.pagoID
    WHERE f.codigoPedido = :OLD.pedidoID;

    IF v_pago > 0 THEN
        RAISE_APPLICATION_ERROR(-20023, 'No se puede eliminar un pedido que ya ha sido pagado.');
    END IF;
END;
/



/* MANTENER FACTURAS */

-- Adicionar

-- al agregar una factura el id debe generarse secuencialmente y automaticamente
CREATE TRIGGER TR_FACTURAS_ID_BI
    BEFORE INSERT ON Facturas
    FOR EACH ROW
DECLARE
    v_nuevoId NUMBER;
BEGIN
    
    SELECT NVL(MAX(TO_NUMBER(SUBSTR(facturaID, 4))), 0) + 1
    INTO v_nuevoId
    FROM Facturas;
    
    :NEW.facturaID := 'FAC' || LPAD(v_nuevoId, 3, '0');
    
END;
/

-- No se puede adicionar un pago mayor al saldo pendiente de la factura.
CREATE OR REPLACE TRIGGER TR_PAGOS_SALDO_PENDIENTE_BI
BEFORE INSERT ON Pagos
FOR EACH ROW
DECLARE
    v_valorTotalFactura NUMBER;
    v_abono NUMBER;
    v_saldoPendiente NUMBER;
    v_codigoFactura VARCHAR2(10);
    v_montoPago NUMBER; -- Monto del pago real
BEGIN
    -- Obtener el código de la factura asociada al pago
    SELECT facturaID
    INTO v_codigoFactura
    FROM Facturas
    WHERE codigoPago = :NEW.pagoID;

    -- Calcular el valor total de la factura
    SELECT SUM(pr.valorPorKilo * c.cantidad)
    INTO v_valorTotalFactura
    FROM Facturas f
    JOIN Pedidos p ON f.codigoPedido = p.pedidoID
    JOIN Contenidos c ON c.codigoPedido = p.pedidoID
    JOIN Productos pr ON pr.codigo = c.codigoProducto
    WHERE f.facturaID = v_codigoFactura;

    -- Obtener el abono asociado a la deuda de la factura
    SELECT d.abono
    INTO v_abono
    FROM Facturas f
    JOIN Deudas d ON f.codigoDeuda = d.deudaID
    WHERE f.facturaID = v_codigoFactura;

    -- Calcular el saldo pendiente
    v_saldoPendiente := v_valorTotalFactura - v_abono;

    -- Calcular el monto del pago real (puedes ajustar esta lógica según sea necesario)
    v_montoPago := v_valorTotalFactura * (1 - (:NEW.descuento / 100));

    -- Validar que el monto del pago no exceda el saldo pendiente
    IF v_montoPago > v_saldoPendiente THEN
        RAISE_APPLICATION_ERROR(-20024, 'El monto del pago excede el saldo pendiente de la factura.');
    END IF;
END;
/

-- Modificar

--  Solo se permiten modificaciones en facturas pendientes.
CREATE TRIGGER TR_FACTURAS_PENDIENTES_BU
BEFORE UPDATE ON Facturas
FOR EACH ROW
BEGIN
    IF :OLD.estado != 'Pendiente' THEN
        RAISE_APPLICATION_ERROR(-20025, 'Solo se permiten modificaciones en facturas pendientes o con saldo.');
    END IF;
END;
/

-- Eliminar
-- No se pueden eliminar facturas que tengan deuda.
CREATE TRIGGER TR_FACTURAS_DEUDA_BU
BEFORE DELETE ON Facturas
FOR EACH ROW
DECLARE
    v_deuda INT;
BEGIN
    IF :OLD.codigoDeuda IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_deuda
        FROM Deudas d
        WHERE d.deudaID = :OLD.codigoDeuda;

        IF v_deuda > 0 THEN
            RAISE_APPLICATION_ERROR(-20026, 'No se pueden eliminar facturas que tengan deuda.');
        END IF;
    END IF;
END;
/


/* MANTENER Clientes */

-- Modificar

--Solo se puede modificar la información de un cliente si no tiene pedidos activos en proceso.
CREATE OR REPLACE TRIGGER TR_CLIENTES_BU
BEFORE UPDATE ON Clientes
FOR EACH ROW
DECLARE
    v_pedidos_activos INT;
BEGIN
    SELECT COUNT(*)
    INTO v_pedidos_activos
    FROM Pedidos p
    WHERE p.codigoCliente = :OLD.clienteID;

    IF v_pedidos_activos > 0 THEN
        RAISE_APPLICATION_ERROR(-20027, 'No se puede modificar la información de contacto mientras el cliente tenga pedidos activos.');
    END IF;
END;
/

-- Eliminar
-- Un cliente no puede eliminarse si tiene una factura en pendiente o tiene una deuda


CREATE OR REPLACE TRIGGER TR_CLIENTES_ELIMINAR_BD
BEFORE DELETE ON Clientes
FOR EACH ROW
DECLARE
    v_factura_pendiente INT;
    v_deuda_existente INT;
BEGIN
    -- Verificar si el cliente tiene facturas pendientes
    SELECT COUNT(*)
    INTO v_factura_pendiente
    FROM Facturas f
    JOIN Pedidos p ON f.codigoPedido = p.pedidoID
    WHERE p.codigoCliente = :OLD.clienteID
    AND f.estado = 'Pendiente';
    
    -- Verificar si el cliente tiene deudas
    SELECT COUNT(*)
    INTO v_deuda_existente
    FROM Deudas d
    JOIN Facturas f ON d.deudaID = f.codigoDeuda
    JOIN Pedidos p ON f.codigoPedido = p.pedidoID
    WHERE p.codigoCliente = :OLD.clienteID;
    
    -- Lanzar error si el cliente tiene facturas pendientes o deudas
    IF v_factura_pendiente > 0 OR v_deuda_existente > 0 THEN
        RAISE_APPLICATION_ERROR(-20030, 'No se puede eliminar el cliente porque tiene facturas pendientes o deudas.');
    END IF;
END;
/


-- /* Registrar Producto */


-- Ad


-- El precio del producto no puede ser menor o igual a 0

CREATE TRIGGER TR_PRODUCTO_PRECIO_VALIDO
BEFORE INSERT OR UPDATE ON Productos
FOR EACH ROW
BEGIN
    IF :NEW.valorPorKilo <= 0 THEN
        RAISE_APPLICATION_ERROR(-20011, 'El precio del producto no puede ser menor o igual a 0.');
    END IF;
END;
/


-- El peso de los tipos pollo entero y despresado solo puede estar en el rango 1.100 - 1900 g


CREATE OR REPLACE TRIGGER TR_PRODUCTO_PESO_VALIDO
BEFORE INSERT OR UPDATE ON Productos
FOR EACH ROW
DECLARE
    pesoEnGramos NUMBER;
    conteo NUMBER; -- Variable para verificar si el código pertenece a PollosEnteros o PollosDespresados
BEGIN
    -- Convertir el peso a gramos para validación
    IF REGEXP_LIKE(:NEW.peso, '^[0-9]+(\.[0-9]+)?kg$') THEN
        pesoEnGramos := TO_NUMBER(REGEXP_SUBSTR(:NEW.peso, '^[0-9]+(\.[0-9]+)?')) * 1000;
    ELSIF REGEXP_LIKE(:NEW.peso, '^[0-9]+(\.[0-9]+)?g$') THEN
        pesoEnGramos := TO_NUMBER(REGEXP_SUBSTR(:NEW.peso, '^[0-9]+(\.[0-9]+)?'));
    ELSE
        pesoEnGramos := NULL; -- Si no es un formato válido, se considera nulo
    END IF;

    -- Verificar si el código pertenece a PollosEnteros o PollosDespresados
    SELECT COUNT(*)
    INTO conteo
    FROM (
        SELECT codigo FROM PollosEnteros
        UNION
        SELECT codigo FROM PollosDespresados
    )
    WHERE codigo = :NEW.codigo;

    -- Validar el rango de peso si el código pertenece a PollosEnteros o PollosDespresados
    IF conteo > 0 THEN
        IF pesoEnGramos IS NULL OR pesoEnGramos < 1100 OR pesoEnGramos > 1900 THEN
            RAISE_APPLICATION_ERROR(-20012, 'El peso de los tipos pollo entero y despresado debe estar en el rango 1.100 - 1.900 g.');
        END IF;
    END IF;
END;
/


-- Mo


-- No se puede modificar un producto si ya tiene una factura asociada

CREATE TRIGGER TR_PRODUCTO_MODIFICACION_RESTRINGIDA
BEFORE UPDATE ON Productos
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO conteo
    FROM Facturas
    WHERE codigoPedido = :OLD.codigoPedido;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20013, 'No se puede modificar un producto si ya tiene una factura asociada.');
    END IF;
END;
/



-- El

-- Un producto no puede eliminarse si ya está asociado a un pedido, factura o despacho 

CREATE TRIGGER TR_PRODUCTO_ELIMINACION_RESTRINGIDA
BEFORE DELETE ON Productos
FOR EACH ROW
DECLARE
    conteoPedidos NUMBER;
    conteoFacturas NUMBER;
    conteoDespachos NUMBER;
BEGIN
    -- Verificar si el producto está asociado a un pedido
    SELECT COUNT(*)
    INTO conteoPedidos
    FROM Contenidos
    WHERE codigoProducto = :OLD.codigo;

    IF conteoPedidos > 0 THEN
        RAISE_APPLICATION_ERROR(-20014, 'No se puede eliminar un producto que está asociado a un pedido.');
    END IF;

    -- Verificar si el producto está asociado a una factura
    SELECT COUNT(*)
    INTO conteoFacturas
    FROM Facturas
    WHERE codigoPedido = :OLD.codigoPedido;

    IF conteoFacturas > 0 THEN
        RAISE_APPLICATION_ERROR(-20015, 'No se puede eliminar un producto que está asociado a una factura.');
    END IF;

    -- Verificar si el producto está asociado a un despacho
    SELECT COUNT(*)
    INTO conteoDespachos
    FROM Despachos
    WHERE codigoFactura IN (SELECT facturaID FROM Facturas WHERE codigoPedido = :OLD.codigoPedido);

    IF conteoDespachos > 0 THEN
        RAISE_APPLICATION_ERROR(-20016, 'No se puede eliminar un producto que está asociado a un despacho.');
    END IF;
END;
/



-- /* Mantener Despacho */


-- Ad


-- Un despacho no puede adicionarse si la factura no ha sido totalmente cancelada

CREATE TRIGGER TR_DESPACHO_FACTURA_CANCELADA
BEFORE INSERT ON Despachos
FOR EACH ROW
DECLARE
    estadoFactura VARCHAR2(10);
BEGIN
    SELECT estado
    INTO estadoFactura
    FROM Facturas
    WHERE facturaID = :NEW.codigoFactura;

    IF estadoFactura != 'Cancelada' THEN
        RAISE_APPLICATION_ERROR(-20017, 'No se puede adicionar un despacho si la factura no ha sido totalmente cancelada.');
    END IF;
END;
/


-- Si un envio es devuelto debe tener observaciones

CREATE TRIGGER TR_ENVIO_DEVUELTO_OBSERVACIONES
BEFORE INSERT OR UPDATE ON Envios
FOR EACH ROW
BEGIN
    IF :NEW.devolucion = 'T' AND (:NEW.observaciones IS NULL OR LENGTH(TRIM(:NEW.observaciones)) = 0) THEN
        RAISE_APPLICATION_ERROR(-20018, 'Si un envío es devuelto, debe tener observaciones.');
    END IF;
END;
/


-- Al adicionar un envio solo se necesitara la guia, ubicacion, costo y conductor.

CREATE TRIGGER TR_ENVIO_ADICION_RESTRICCION
BEFORE INSERT ON Envios
FOR EACH ROW
BEGIN
    IF :NEW.guiaID IS NULL OR :NEW.ubicacion IS NULL OR :NEW.costo IS NULL OR :NEW.conductor IS NULL THEN
        RAISE_APPLICATION_ERROR(-20019, 'Al adicionar un envío, solo se necesita la guía, ubicación, costo y conductor. Estos campos no pueden ser nulos.');
    END IF;

    IF :NEW.fechaEntrega IS NOT NULL OR :NEW.horaEntrega IS NOT NULL OR :NEW.destinatario IS NOT NULL OR :NEW.observaciones IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20020, 'Al adicionar un envío, no se deben incluir fecha de entrega, hora de entrega, destinatario u observaciones.');
    END IF;
END;
/


-- Mo


-- No se puede modificar un despacho si ya tiene un envío asociado

CREATE OR REPLACE TRIGGER TR_DESPACHO_MODIFICACION_RESTRINGIDA
BEFORE UPDATE ON Despachos
FOR EACH ROW
DECLARE
    conteo NUMBER;
BEGIN
    -- Verificar si el despacho ya tiene un envío asociado
    SELECT COUNT(*)
    INTO conteo
    FROM Envios
    WHERE idDespacho = :OLD.despachoID;

    IF conteo > 0 THEN
        RAISE_APPLICATION_ERROR(-20021, 'No se puede modificar un despacho si ya tiene un envío asociado.');
    END IF;
END;
/
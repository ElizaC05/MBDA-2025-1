    /*TABLAS*/

CREATE TABLE Pedidos(
    pedidoID VARCHAR2(10) NOT NULL,
    fechaCreacion DATE NOT NULL,
    encargado VARCHAR2(15), 
    codigoCliente VARCHAR2(10) NOT NULL
);

CREATE TABLE Contenidos(
    codigoProducto VARCHAR2(10) NOT NULL, 
    codigoPedido VARCHAR2(10) NOT NULL, 
    cantidad NUMBER(3) NOT NULL
);


CREATE TABLE Productos(
    codigo VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(15) NOT NULL,
    fechaCaducidad DATE NOT NULL,
    fechaProduccion DATE NOT NULL,
    valorPorKilo NUMBER (10,2) NOT NULL,
    peso VARCHAR2(15) NOT NULL,
    codigoPedido VARCHAR2(10) NOT NULL
);

CREATE TABLE PollosEnteros(
    TamañoPollo VARCHAR2(10) NOT NULL,
    estado VARCHAR2(15) NOT NULL,
    codigo VARCHAR2(10) NOT NULL
);

CREATE TABLE PollosDespresados(
    TamañoDespresado VARCHAR2(10) NOT NULL,
    numeroPiezas NUMBER(3) NOT NULL,
    codigo VARCHAR2(10) NOT NULL
);

CREATE TABLE Menudencias(
    parteMenudencia VARCHAR2(10) NOT NULL,
    contenidoSangre VARCHAR2(5) NOT NULL,
    codigo VARCHAR2(10) NOT NULL
);

CREATE TABLE Clientes(
    clienteID VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(30) NOT NULL,
    ubicacion VARCHAR2(25) NOT NULL,
    nit VARCHAR2(15)
);

CREATE TABLE PuntosDeVenta(
    codigoCliente VARCHAR2(10) NOT NULL,
    encargado VARCHAR2 NOT NULL,
    zona VARCHAR2 NOT NULL
);

CREATE TABLE Externos(
    codigoCliente VARCHAR2(10) NOT NULL,
    tipo VARCHAR2 NOT NULL,
    correoElectronico VARCHAR2(50)
);

CREATE TABLE Telefonos(
    numeroTelefonico NUMBER(10) NOT NULL,
    tclienteID VARCHAR2(10) NOT NULL
);

CREATE TABLE Facturas(
    facturaID VARCHAR2(10) NOT NULL,
    fechaEmision DATE NOT NULL,
    estado VARCHAR2(10) NOT NULL,
    valorUnitario NUMBER (4,2) NOT NULL,
    codigoPedido VARCHAR2(10) NOT NULL,
    codigoDeuda VARCHAR2(10) NOT NULL,
    codigoPago VARCHAR2(10) NOT NULL
);

CREATE TABLE Fisicas(
    serial VARCHAR2(15) NOT NULL,
    codigoFactura VARCHAR2(10) NOT NULL
);

CREATE TABLE Electronicas(
    codigoDian VARCHAR2(64) NOT NULL,
    hora VARCHAR2(10) NOT NULL,
    codigoFactura VARCHAR2(10) NOT NULL
);

CREATE TABLE Deudas(
    deudaID VARCHAR2(10) NOT NULL,
    plazo NUMBER(3) NOT NULL,
    fechaVencimiento DATE NOT NULL,
    abono NUMBER (4,2) NOT NULL
);

CREATE TABLE Pagos(
    pagoID VARCHAR2(10) NOT NULL,
    descuento DECIMAL (5,2) NOT NULL,
    estado VARCHAR2(10) NOT NULL,
    fecha DATE NOT NULL,
    hora VARCHAR2(10) NOT NULL,
    entidadFinanciera VARCHAR2(15) NOT NULL,
    metodoPago VARCHAR2(10) NOT NULL
);

CREATE TABLE Despachos(
    despachoID VARCHAR2(10) NOT NULL,
    disponibilidadCarros CHAR(1) NOT NULL,
    revisionProductos CHAR(1) NOT NULL,
    encargado VARCHAR2(15) NOT NULL,
    fechaEstimada DATE NOT NULL,
    cantidadEnviada VARCHAR2(100) NOT NULL, 
    codigoFactura  VARCHAR2(10) NOT NULL,
    guiaEnvio VARCHAR2(10) NOT NULL
);

CREATE TABLE Envios(
    guiaID VARCHAR2(10) NOT NULL, 
    placaVehiculo VARCHAR2(6),
    conductor VARCHAR2(15) NOT NULL,
    fechaEntrega DATE NOT NULL,
    horaEntrega VARCHAR2(10) NOT NULL,
    destinatario VARCHAR2(15) NOT NULL, 
    observaciones VARCHAR2(50),
    ubicacion VARCHAR2(25) NOT NULL,
    costo NUMBER (4,2) NOT NULL,
    devolucion CHAR(1)
);

CREATE TABLE Paradas(
    rutaID VARCHAR2(10) NOT NULL,
    zona VARCHAR2(25) NOT NULL,
    tiempoRecorrido VARCHAR2(10),
    puntoPartida VARCHAR2(20) NOT NULL,
    puntoLlegada VARCHAR2(20) NOT NULL,
    codigoEnvio VARCHAR2(10) NOT NULL
);

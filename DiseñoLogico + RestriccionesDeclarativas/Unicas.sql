/*UNICAS*/

ALTER TABLE Clientes ADD CONSTRAINT UQ_CLIENTE_NIT
    UNIQUE (nit);

ALTER TABLE Externos ADD CONSTRAINT UQ_EXTERNOS_CORREO
    UNIQUE (correoElectronico);

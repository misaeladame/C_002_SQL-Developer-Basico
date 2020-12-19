--DROP TABLE CLIENTES;
------------------------------------
-- CREA LAS TABLAS
------------------------------------
CREATE TABLE CLIENTES
(
    CD_CLIENTE VARCHAR2(10) NOT NULL,
    ST_NOMBRE VARCHAR2(30) NULL,
    TX_DIRECCION VARCHAR(200) NULL,
    ST_STATUS CHAR(1) CONSTRAINT CONSTRAINT001 CHECK (ST_STATUS IN ('S', 'N')),
    NU_NUMERO1 INTEGER NULL,
    NU_NUMERO2 INTEGER NULL,
    FH_FECHA DATE NULL
);

--------------------------------------
--  CREA LOS INDICES
--------------------------------------
CREATE UNIQUE INDEX CLIENTE_001 ON CLIENTES
(
    CD_CLIENTE ASC,
    ST_NOMBRE ASC
);

-----------------------------------------
--  CREA LA LLAVE PRIMARIA
-----------------------------------------
ALTER TABLE CLIENTES
ADD CONSTRAINT CLIENTE_001 PRIMARY KEY
(
    CD_CLIENTE,
    ST_NOMBRE
);

-----------------------------------------
-- CARGA DE DATOS GLOBAL
-----------------------------------------
INSERT INTO CLIENTES (CD_CLIENTE, ST_NOMBRE, TX_DIRECCION, ST_STATUS, NU_NUMERO1, NU_NUMERO2, FH_FECHA)
VALUES (1, 'CLIENTE1', 'CALLE 12', 'S', 1000, 2000, '10/10/2025');

COMMIT;

SELECT * FROM CLIENTES;
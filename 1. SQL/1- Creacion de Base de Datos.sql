USE master
GO
CREATE DATABASE TechnoLife
GO
use TechnoLife
GO
CREATE
  TABLE boleta
  (
    id_boleta       INTEGER NOT NULL IDENTITY,
    total           INTEGER ,
    id_empleado     INTEGER NOT NULL ,
    id_forma_pago   INTEGER NOT NULL ,
    id_sucursal     INTEGER NOT NULL ,
    id_pedido_local INTEGER
  )
  ON "default"
GO
ALTER TABLE boleta ADD CONSTRAINT boleta_PK PRIMARY KEY CLUSTERED (id_boleta)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE categoria
  (
    id_cate     INTEGER NOT NULL IDENTITY,
    nombre_cate VARCHAR (40) NOT NULL ,
    activo      INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE categoria ADD CONSTRAINT categoria_pk PRIMARY KEY CLUSTERED (
id_cate)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE cliente
  (
    id_cliente       INTEGER NOT NULL IDENTITY,
    rut_cliente      VARCHAR (30) NOT NULL ,
    nombres          VARCHAR (60) NOT NULL ,
    apellidos        VARCHAR (30) NOT NULL ,
    fecha_nacimiento DATE ,
    id_comuna        INTEGER NOT NULL ,
    telefono         INTEGER ,
    correo           VARCHAR (50) NOT NULL ,
    activo           INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE cliente ADD CONSTRAINT cliente_PK PRIMARY KEY CLUSTERED (id_cliente
)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE compra_online
  (
    id_compra_online INTEGER NOT NULL IDENTITY,
    id_cliente       INTEGER NOT NULL ,
    descuento        INTEGER ,
    total            INTEGER ,
    glosa            VARCHAR (300) ,
    id_forma_envio   INTEGER NOT NULL ,
    id_forma_pago    INTEGER NOT NULL ,
    id_sucursal      INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE compra_online ADD CONSTRAINT compra_online_PK PRIMARY KEY CLUSTERED
(id_compra_online)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE comuna
  (
    id_comuna     INTEGER NOT NULL IDENTITY,
    nombre_comuna VARCHAR (30)
  )
  ON "default"
GO
ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY CLUSTERED (id_comuna)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE control_cliente
  (
    id_control_c INTEGER NOT NULL IDENTITY,
    id_cliente   INTEGER NOT NULL ,
    usuario      VARCHAR (30) NOT NULL ,
    clave        VARCHAR (30) NOT NULL ,
    activo       INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE control_cliente ADD CONSTRAINT control_cliente_PK PRIMARY KEY
CLUSTERED (id_control_c)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE control_empleado
  (
    codigo INTEGER NOT NULL IDENTITY,
    usuario     VARCHAR (30) NOT NULL ,
    clave       VARCHAR (30) NOT NULL ,
    id_tipo     INTEGER NOT NULL ,
    id_empleado INTEGER NOT NULL ,
    activo      INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE control_empleado ADD CONSTRAINT control_empleado_PK PRIMARY KEY
CLUSTERED (codigo)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE detalle_boleta
  (
    id_detalle    INTEGER NOT NULL IDENTITY,
    id_producto_p INTEGER NOT NULL ,
    id_boleta     INTEGER NOT NULL ,
    precio        INTEGER ,
    cant          INTEGER ,
    total         INTEGER
  )
  ON "default"
GO
ALTER TABLE detalle_boleta ADD CONSTRAINT detalle_boleta_PK PRIMARY KEY
CLUSTERED (id_detalle)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE detalle_compra_online
  (
    id_detalle_online INTEGER NOT NULL IDENTITY,
    id_compra_online  INTEGER NOT NULL ,
    id_producto_p     INTEGER NOT NULL ,
    precio            INTEGER ,
    cant              INTEGER ,
    total             INTEGER
  )
  ON "default"
GO
ALTER TABLE detalle_compra_online ADD CONSTRAINT detalle_compra_online_PK
PRIMARY KEY CLUSTERED (id_detalle_online)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE detalle_pedido_local
  (
    id_detalle_local INTEGER NOT NULL IDENTITY,
    id_pedido_local  INTEGER NOT NULL ,
    id_producto_p    INTEGER NOT NULL ,
    precio           INTEGER ,
    cant             INTEGER ,
    total            INTEGER
  )
  ON "default"
GO
ALTER TABLE detalle_pedido_local ADD CONSTRAINT detalle_pedido_local_PK PRIMARY
KEY CLUSTERED (id_detalle_local)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE direccion_cliente
  (
    id_direccion INTEGER NOT NULL IDENTITY,
    id_cliente   INTEGER NOT NULL ,
    id_comuna    INTEGER NOT NULL ,
    direccion    VARCHAR (100) 
  )
  ON "default"
GO
ALTER TABLE direccion_cliente ADD CONSTRAINT direccion_cliente_PK PRIMARY KEY
CLUSTERED (id_direccion)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE empleado
  (
    id_empleado      INTEGER NOT NULL IDENTITY,
    rut_empleado     VARCHAR (30) NOT NULL ,
    nombres          VARCHAR (60) NOT NULL ,
    apellidos        VARCHAR (30) NOT NULL ,
    fecha_nacimiento DATE ,
    telefono         INTEGER ,
    direccion 	VARCHAR(40),
    id_comuna        INTEGER NOT NULL ,
    correo           VARCHAR (50) NOT NULL ,
    activo           INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE empleado ADD CONSTRAINT empleado_PK PRIMARY KEY CLUSTERED (
id_empleado)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE forma_envio
  (
    id_forma_envio INTEGER NOT NULL IDENTITY,
    nombre_envio   VARCHAR (30) NOT NULL
  )
  ON "default"
GO
ALTER TABLE forma_envio ADD CONSTRAINT forma_envio_pk PRIMARY KEY CLUSTERED (
id_forma_envio)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE forma_pago
  (
    id_forma_pago INTEGER NOT NULL IDENTITY,
    nombre_pago   VARCHAR (30) NOT NULL
  )
  ON "default"
GO
ALTER TABLE forma_pago ADD CONSTRAINT forma_pago_pk PRIMARY KEY CLUSTERED (
id_forma_pago)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE pedido_local
  (
    id_pedido_local INTEGER NOT NULL IDENTITY,
    id_cliente      INTEGER NOT NULL ,
    glosa           VARCHAR (300) ,
    descuento       INTEGER ,
    total           INTEGER ,
    fecha_termino   DATE ,
    fecha_inscrita  DATE ,
    id_forma_envio  INTEGER NOT NULL ,
    id_sucursal     INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE pedido_local ADD CONSTRAINT pedido_local_PK PRIMARY KEY CLUSTERED (
id_pedido_local)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE producto
  (
    id_producto     INTEGER NOT NULL IDENTITY,
    cod_producto    INTEGER NOT NULL ,
    nombre_producto VARCHAR (50) NOT NULL ,
    imagen          VARCHAR (60) ,
    stock	     INTEGER NOT NULL ,
    activo          INTEGER NOT NULL ,
    id_cate         INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE producto ADD CONSTRAINT producto_PK PRIMARY KEY CLUSTERED (
id_producto)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE producto_precio
  (
    id_producto_p INTEGER NOT NULL IDENTITY,
    id_producto   INTEGER NOT NULL ,
    descripcion   VARCHAR (40) NOT NULL ,
    precio        INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE producto_precio ADD CONSTRAINT producto_precio_PK PRIMARY KEY
CLUSTERED (id_producto_p)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE sucursal
  (
    id_sucursal     INTEGER NOT NULL IDENTITY,
    nombre_sucursal 	VARCHAR (30), 
    id_comuna	INTEGER
  )
  ON "default"
GO
ALTER TABLE sucursal ADD CONSTRAINT sucursal_pk PRIMARY KEY CLUSTERED (
id_sucursal)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE tipo_usuario
  (
    id_tipo     INTEGER NOT NULL IDENTITY,
    nombre_tipo VARCHAR (30) NOT NULL
  )
  ON "default"
GO
ALTER TABLE tipo_usuario ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY CLUSTERED (
id_tipo)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

ALTER TABLE boleta
ADD CONSTRAINT bo_pago_fk FOREIGN KEY
(
id_forma_pago
)
REFERENCES forma_pago
(
id_forma_pago
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE boleta
ADD CONSTRAINT bol_sucl_fk FOREIGN KEY
(
id_sucursal
)
REFERENCES sucursal
(
id_sucursal
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE boleta
ADD CONSTRAINT bole_emple_fk FOREIGN KEY
(
id_empleado
)
REFERENCES empleado
(
id_empleado
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE cliente
ADD CONSTRAINT cliente_comuna_fk FOREIGN KEY
(
id_comuna
)
REFERENCES comuna
(
id_comuna
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE control_cliente
ADD CONSTRAINT cocl_clien_fk FOREIGN KEY
(
id_cliente
)
REFERENCES cliente
(
id_cliente
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE control_empleado
ADD CONSTRAINT coem_empl_fk FOREIGN KEY
(
id_empleado
)
REFERENCES empleado
(
id_empleado
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE control_empleado
ADD CONSTRAINT conu_tius_fk FOREIGN KEY
(
id_tipo
)
REFERENCES tipo_usuario
(
id_tipo
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_compra_online
ADD CONSTRAINT de_compra_online_fk FOREIGN KEY
(
id_compra_online
)
REFERENCES compra_online
(
id_compra_online
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_boleta
ADD CONSTRAINT debo_bole_fk FOREIGN KEY
(
id_boleta
)
REFERENCES boleta
(
id_boleta
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_boleta
ADD CONSTRAINT debo_producto_precio_fk FOREIGN KEY
(
id_producto_p
)
REFERENCES producto_precio
(
id_producto_p
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_compra_online
ADD CONSTRAINT depe_producto_precio_fk FOREIGN KEY
(
id_producto_p
)
REFERENCES producto_precio
(
id_producto_p
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_pedido_local
ADD CONSTRAINT deta_local_pedi_local_fk FOREIGN KEY
(
id_pedido_local
)
REFERENCES pedido_local
(
id_pedido_local
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE detalle_pedido_local
ADD CONSTRAINT deta_prpr_fk FOREIGN KEY
(
id_producto_p
)
REFERENCES producto_precio
(
id_producto_p
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE direccion_cliente
ADD CONSTRAINT dire_clie_fk FOREIGN KEY
(
id_cliente
)
REFERENCES cliente
(
id_cliente
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE direccion_cliente
ADD CONSTRAINT direccion_cliente_comuna_fk FOREIGN KEY
(
id_comuna
)
REFERENCES comuna
(
id_comuna
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE empleado
ADD CONSTRAINT empl_comu_fk FOREIGN KEY
(
id_comuna
)
REFERENCES comuna
(
id_comuna
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE compra_online
ADD CONSTRAINT pedido_forma_fk FOREIGN KEY
(
id_forma_envio
)
REFERENCES forma_envio
(
id_forma_envio
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE pedido_local
ADD CONSTRAINT pelo_cliente_fk FOREIGN KEY
(
id_cliente
)
REFERENCES cliente
(
id_cliente
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE compra_online
ADD CONSTRAINT pelo_cliente_fkv FOREIGN KEY
(
id_cliente
)
REFERENCES cliente
(
id_cliente
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE pedido_local
ADD CONSTRAINT pelo_forma_envio_fk FOREIGN KEY
(
id_forma_envio
)
REFERENCES forma_envio
(
id_forma_envio
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE pedido_local
ADD CONSTRAINT pelo_sucursal_fk FOREIGN KEY
(
id_sucursal
)
REFERENCES sucursal
(
id_sucursal
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE compra_online
ADD CONSTRAINT peon_forma_fk FOREIGN KEY
(
id_forma_pago
)
REFERENCES forma_pago
(
id_forma_pago
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE compra_online
ADD CONSTRAINT peon_sucursal_fk FOREIGN KEY
(
id_sucursal
)
REFERENCES sucursal
(
id_sucursal
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE producto_precio
ADD CONSTRAINT prod_prec_prod_fk FOREIGN KEY
(
id_producto
)
REFERENCES producto
(
id_producto
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE producto
ADD CONSTRAINT producto_categoria_fk FOREIGN KEY
(
id_cate
)
REFERENCES categoria
(
id_cate
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE sucursal
ADD CONSTRAINT sucursal_comuna_fk FOREIGN KEY
(
id_comuna
)
REFERENCES comuna
(
id_comuna
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO
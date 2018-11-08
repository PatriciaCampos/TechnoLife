CREATE Procedure DaoBoletaInsertar
as
begin
    declare @numero as int
	declare @total as int
	declare @emp int
	declare @pago int
	declare @sucur int
	declare @pedido int
	set @numero =(Select COUNT(*)+1 from boleta)
	
	set @total= (Select SUM(total.cantPre) 
				from (Select (cantidad.ProCant*pres.proPrecio) as cantPre
						from (Select cant as ProCant from detalle_boleta where id_boleta=@numero) cantidad
							,(Select precio as proPrecio from producto_precio) pres) total)
	
	insert into boleta(id_boleta,total,id_empleado,id_forma_pago,id_sucursal,id_pedido_local)
			values(@numero,@total,@emp,@pago,@sucur,@pedido)
	
end
GO


CREATE PROCEDURE DaoBoletaActualizar(
	 @numero  int,
	 @total  int,
	 @emp int,
	 @pago int,
	 @sucur int,
	 @pedido int
)
AS
BEGIN
	UPDATE boleta set total=@total,@emp=id_empleado,@pago=id_forma_pago,
		@sucur=	id_sucursal,@pedido= id_pedido_local
	WHERE @numero=id_boleta
END
GO



Create Procedure DAOBoletaEliminar(
	@idboleta INTEGER
)
as
begin
delete from boleta 
 where @idboleta = id_boleta
end
GO



CREATE PROCEDURE DAOBoletaBuscar
(
  @id_boleta INTEGER 
)
AS
BEGIN
SELECT * FROM boleta WHERE id_boleta=@id_boleta
END
GO

CREATE procedure DAOCategoriaInsertar
(
 @nombre_cate varchar(40),
 @activo INTEGER
)
as
begin
 insert into categoria ([nombre_cate], [activo] ) values (@nombre_cate, @activo)
end
GO



CREATE procedure DAOCategoriaActualizar
(
  @id_cate INTEGER,
  @nombre_cate varchar(40),
  @activo INTEGER
) 
as
update categoria set nombre_cate = @nombre_cate, activo = @activo
where id_cate = @id_cate
GO



CREATE procedure DAOCategoriaEliminar
(
 @id_cate INTEGER 
)
as
delete from categoria 
 where @id_cate = id_cate
GO



CREATE PROCEDURE DAOCategoriaBuscar
(
  @id_cate INTEGER 
)
AS
BEGIN
SELECT * FROM categoria WHERE id_cate =@id_cate 
END
GO


CREATE procedure DAOClienteInsertar
(
 @rut_cliente VARCHAR(30),
 @nombres VARCHAR (60),
 @apellidos VARCHAR (30),
 @fecha_nacimiento DATE,
 @id_comuna INTEGER,
 @telefono INTEGER,
 @correo VARCHAR (50),
 @activo INTEGER
)
as
begin
 insert into Cliente ([rut_cliente], [nombres], [apellidos], [fecha_nacimiento], [id_comuna], [telefono], [correo], [activo]) 
 values (@rut_cliente, @nombres, @apellidos, @fecha_nacimiento, @id_comuna, @telefono, @correo, @activo)
end
GO


CREATE procedure DAOClienteActualizar
(
 @id_cliente INTEGER,
 @rut_cliente VARCHAR(30),
 @nombres VARCHAR (60),
 @apellidos VARCHAR (30),
 @fecha_nacimiento DATE,
 @id_comuna INTEGER,
 @telefono INTEGER,
 @correo VARCHAR (50),
 @activo INTEGER
) 
as
update Cliente set rut_cliente = @rut_cliente, nombres = @nombres, apellidos = @apellidos, fecha_nacimiento = @fecha_nacimiento, id_comuna = @id_comuna, telefono = @telefono, correo = @correo, activo = @activo
where id_cliente = @id_cliente
GO



CREATE procedure DAOClienteEliminar
(
 @id_cliente INTEGER
)
as
delete from Cliente 
 where @id_cliente = id_cliente
GO



CREATE PROCEDURE DAOClienteBuscar
(
  @rut_cliente  INTEGER 
)
AS
BEGIN
SELECT * FROM cliente WHERE rut_cliente  = @rut_cliente 
END
GO


CREATE Procedure DAOCompraOnlineInsertar
(
    @id_cliente       INTEGER,
    @descuento        INTEGER,
    @total            INTEGER,
    @glosa            VARCHAR (300),
    @id_forma_envio   INTEGER,
    @id_forma_pago    INTEGER,
    @id_sucursal      INTEGER
)
as
begin
 insert into compra_online ([id_cliente], [descuento], [total], [glosa], [id_forma_envio], [id_forma_pago], [id_sucursal]) 
 values (@id_cliente, @descuento, @total, @glosa, @id_forma_envio, @id_forma_pago, @id_sucursal)
end
GO


CREATE procedure DAOCompraOnlineActualizar
(
    @id_compra_online INTEGER,
    @id_cliente       INTEGER,
    @descuento        INTEGER,
    @total            INTEGER,
    @glosa            VARCHAR(300),
    @id_forma_envio   INTEGER,
    @id_forma_pago    INTEGER,
    @id_sucursal      INTEGER
) 
as
update compra_online set @id_compra_online = id_compra_online, @id_cliente = id_cliente, @descuento = descuento, @total = total, @glosa = glosa, @id_forma_envio = id_forma_envio, @id_forma_pago = id_forma_pago, @id_sucursal = id_sucursal
where @id_compra_online = id_compra_online
GO



CREATE procedure DAOCompraOnlineEliminar
(
 @id_compra_online INTEGER
)
as
delete  from compra_online 
 where @id_compra_online = id_compra_online
GO



CREATE PROCEDURE DAOCompraOnlineBuscar
(
  @id_compra_online INTEGER 
)
AS
BEGIN
SELECT * FROM compra_online WHERE id_compra_online = @id_compra_online 
END
GO


CREATE procedure DAOComunaInsertar
(
 @nombre_comuna varchar(30)
)
as
begin
 insert into comuna ([nombre_comuna]) values (@nombre_comuna)
end
GO



CREATE procedure DAOComunaActualizar
(
 @id_comuna INTEGER,
 @nombre_comuna varchar(30)
) 
as
update comuna set nombre_comuna= @nombre_comuna
where id_comuna = @id_comuna
GO



CREATE procedure DAOComunaEliminar
(
@id_comuna INTEGER
)
as
delete from comuna 
 where @id_comuna = id_comuna
GO



CREATE PROCEDURE DAOComunaBuscar
(
  @id_comuna  INTEGER 
)
AS
BEGIN
SELECT * FROM comuna WHERE id_comuna  = @id_comuna 
END
GO


CREATE Procedure DAOControlClienteInsertar
(
 @id_cliente INTEGER,
 @usuario varchar(30),
 @clave varchar(30),
 @activo INTEGER
)
as
begin
 insert into control_cliente ([id_cliente], [usuario], [clave],[activo]) 
 values (@id_cliente,@usuario,@clave,@activo)
end
GO



CREATE procedure DAOControlClienteActualizar
(
 @id_control_c INTEGER,
 @id_cliente INTEGER,
 @usuario varchar(30),
 @clave varchar(30),
 @activo INTEGER
) 
as
update control_cliente set id_cliente = @id_cliente, usuario = @usuario, clave  = @clave , activo  = @activo
where id_control_c = @id_control_c 
GO



CREATE procedure DAOControlClienteEliminar
(
  @id_control_c INTEGER
)
as
delete  from control_cliente 
 where @id_control_c = id_control_c 
GO



CREATE PROCEDURE DAOControlClienteBuscar
(
  @id_control_c INTEGER 
)
AS
BEGIN
SELECT * FROM control_cliente WHERE id_control_c = @id_control_c 
END
GO


CREATE procedure DAOControlEmpleadoInsertar
(
    @usuario	VARCHAR (30),
    @clave          	VARCHAR (30),
    @id_tipo        	INTEGER,
    @id_empleado	INTEGER,
    @activo         	INTEGER
)
as
begin
 insert into control_empleado ([usuario], [clave], [id_tipo], 
 [id_empleado], [activo]) 
 values (@usuario, @clave, @id_tipo, @id_empleado, @activo)
end
GO


CREATE procedure DAOControlEmpleadoActualizar
(
    @codigo			INTEGER,
    @usuario		VARCHAR (30),
    @clave          VARCHAR (30),
    @id_tipo        INTEGER,
    @id_empleado	INTEGER,
    @activo         INTEGER
) 
as
update control_empleado set usuario= @usuario, clave= @clave, id_tipo= @id_tipo, 
id_empleado= @id_empleado, activo= @activo
where codigo = @codigo
GO


CREATE procedure DAOControlEmpleadoEliminar
(
 @codigo INTEGER 
)
as
delete from control_empleado 
 where @codigo = codigo
GO



CREATE PROCEDURE DAOControlEmpleadoBuscar
(
  @codigo INTEGER 
)
AS
BEGIN
SELECT * FROM control_empleado WHERE codigo= @codigo
END
GO



CREATE Procedure DAODetalleBoletaInsertar
(
 @id_producto_p INTEGER,
 @id_boleta INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_boleta ([id_producto_p], [id_boleta], [precio], [cant], [total]) 
values (@id_producto_p, @id_boleta, @precio, @cant, @total)
end
GO


CREATE procedure DAODetalleBoletaActualizar
(
 @id_detalle INTEGER,
 @id_producto_p INTEGER,
 @id_boleta INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_boleta set id_producto_p = @id_producto_p, id_boleta = @id_boleta, precio = @precio, cant = @cant, total = @total
where id_detalle = @id_detalle
GO


CREATE procedure DAODetalleBoletaEliminar
(
 @id_detalle INTEGER 
)
as
delete from detalle_boleta 
 where @id_detalle = id_detalle
GO



CREATE PROCEDURE DAODetalleBoletaBuscar
(
  @id_detalle INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_boleta WHERE id_detalle = @id_detalle 
END
GO



CREATE procedure DAODetalleCompraOnlineInsertar
(
 @id_compra_online INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_compra_online ([id_compra_online],[id_producto_p], [precio], [cant], [total]) 
values (@id_compra_online, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure DAODetalleCompraOnlineActualizar
(
 @id_detalle_online INTEGER,
 @id_compra_online INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_compra_online set @id_compra_online = @id_compra_online ,id_producto_p = @id_producto_p, precio = @precio, cant = @cant, total = @total
where id_detalle_online = @id_detalle_online
GO


CREATE procedure DAODetalleCompraOnlineEliminar
(
 @id_detalle_online INTEGER 
)
as
delete from detalle_compra_online 
 where @id_detalle_online = id_detalle_online
GO



CREATE PROCEDURE DAODetalleCompraOnlineBuscar
(
  @id_detalle_online INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_compra_online WHERE id_detalle_online = @id_detalle_online 
END
GO



CREATE procedure DAODetallePedidoLocalInsertar
(
 @id_pedido_local INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_pedido_local ([id_pedido_local], [id_producto_p], [precio], [cant], [total]) 
values (@id_pedido_local, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure DAODetallePedidoLocalActualizar
(
 @id_detalle_local INTEGER,
 @id_pedido_local INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_pedido_local set id_pedido_local = @id_pedido_local, id_producto_p = @id_producto_p, precio = @precio, cant = @cant, total = @total
where id_detalle_local = @id_detalle_local
GO


CREATE procedure DAODetallePedidoLocalEliminar
(
 @id_detalle_local INTEGER 
)
as
delete from detalle_pedido_local 
 where @id_detalle_local = id_detalle_local
GO



CREATE PROCEDURE DAODetallePedidoLocalBuscar
(
  @id_detalle_local INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_pedido_local WHERE id_detalle_local = @id_detalle_local 
END
GO


CREATE Procedure DAODireccionClienteInsertar
(
    @id_cliente   INTEGER,
    @id_comuna    INTEGER,
    @direccion    VARCHAR (100)
)
as
begin
 insert into direccion_cliente ([id_cliente], [id_comuna], [direccion]) 
 values (@id_cliente, @id_comuna, @direccion)
end
GO


CREATE procedure DAODireccionClienteActualizar
(
    @id_direccion INTEGER,
    @id_cliente   INTEGER,
    @id_comuna    INTEGER,
    @direccion    VARCHAR (100)
) 
as
update direccion_cliente set @id_direccion = id_direccion, @id_cliente = id_cliente, @id_comuna = id_comuna, @direccion = direccion
where @id_cliente = id_cliente
GO


CREATE procedure DAODireccionClienteEliminar
(
 @id_direccion INTEGER
)
as
delete  from direccion_cliente 
 where @id_direccion = id_direccion
GO



CREATE PROCEDURE DAODireccionClienteBuscar
(
  @id_direccion INTEGER 
)
AS
BEGIN
SELECT * FROM direccion_cliente WHERE id_direccion = @id_direccion 
END
GO


CREATE procedure DAOEmpleadoInsertar
(
    @rut_empleado     VARCHAR (30),
    @nombres          VARCHAR (60),
    @apellidos        VARCHAR (30),
    @fecha_nacimiento DATE,
    @telefono         INTEGER ,
    @id_comuna        INTEGER,
    @correo           VARCHAR (50),
    @activo           INTEGER
)
as
begin
 insert into empleado ([rut_empleado], [nombres], [apellidos], 
 [fecha_nacimiento], [telefono], [id_comuna], [correo], [activo]) 
 values (@rut_empleado, @nombres, @apellidos, @fecha_nacimiento, @telefono,
 @id_comuna, @correo, @activo)
end
GO


CREATE procedure DAOEmpleadoActualizar
(
    @id_empleado      INTEGER,
    @rut_empleado     VARCHAR (30),
    @nombres          VARCHAR (60),
    @apellidos        VARCHAR (30),
    @fecha_nacimiento DATE,
    @telefono         INTEGER ,
    @id_comuna        INTEGER,
    @correo           VARCHAR (50),
    @activo           INTEGER
) 
as
update empleado set rut_empleado= @rut_empleado, nombres= @nombres, apellidos= @apellidos,
fecha_nacimiento= @fecha_nacimiento, telefono= @telefono, id_comuna= @id_comuna,
correo= @correo, activo= @activo
where id_empleado = @id_empleado
GO


CREATE procedure DAOEmpleadoEliminar
(
 @id_empleado INTEGER 
)
as
delete from empleado 
 where @id_empleado = id_empleado
GO



CREATE PROCEDURE DAOEmpleadoBuscar
(
  @id_empleado INTEGER 
)
AS
BEGIN
SELECT * FROM empleado WHERE id_empleado = @id_empleado 
END
GO


 CREATE PROCEDURE DAOFormaEnvioInsertar
(
   @nombre_envio   VARCHAR(30)
)
AS
BEGIN
 INSERT INTO forma_envio(nombre_envio) 
 VALUES (@nombre_envio)
END
GO



CREATE PROCEDURE DAOFormaEnvioActualizar
(
   @id_forma_envio INTEGER,
   @nombre_envio   VARCHAR(30)
) 
AS
UPDATE forma_envio SET nombre_envio = @nombre_envio
WHERE id_forma_envio = @id_forma_envio
GO



CREATE PROCEDURE DAOFormaEnvioEliminar
(
  @id_forma_envio INTEGER
)
AS
DELETE FROM forma_envio 
 WHERE @id_forma_envio = id_forma_envio
GO



CREATE PROCEDURE DAOFormaEnvioBuscar
(
   @id_forma_envio INTEGER
)
AS
BEGIN
SELECT * FROM forma_envio WHERE id_forma_envio=@id_forma_envio
END
GO


 CREATE PROCEDURE DAOFormaPagoInsertar
(
  @nombre_pago VARCHAR(30)
)
AS
BEGIN
 INSERT INTO forma_pago (nombre_pago) 
 VALUES (@nombre_pago)
END
GO



CREATE PROCEDURE DAOFormaPagoActualizar
(
  @id_forma_pago INTEGER ,
  @nombre_pago VARCHAR(30)
) 
AS
UPDATE forma_pago SET nombre_pago = @nombre_pago
WHERE id_forma_pago = @id_forma_pago
GO



CREATE PROCEDURE DAOFormaPagoEliminar
(
  @id_forma_pago INTEGER
)
AS
DELETE FROM forma_pago 
 WHERE @id_forma_pago = id_forma_pago
GO



CREATE PROCEDURE DAOFormaPagoBuscar
(
  @id_forma_pago INTEGER 
)
AS
BEGIN
SELECT * FROM forma_pago WHERE id_forma_pago=@id_forma_pago
END
GO


CREATE procedure DAOPedidoLocalInsertar
(
 @id_cliente INTEGER,
 @glosa VARCHAR(300),
 @descuento INTEGER,
 @total INTEGER,
 @fecha_termino DATE,
 @fecha_inscrita DATE,
 @id_forma_envio INTEGER,
 @id_sucursal INTEGER
)
as
begin
insert into pedido_local ([id_cliente], [glosa], [descuento], [total], [fecha_termino], [fecha_inscrita], [id_forma_envio], [id_sucursal]) 
values (@id_cliente, @glosa, @descuento, @total, @fecha_termino, @fecha_inscrita, @id_forma_envio, @id_sucursal)
end
GO


CREATE procedure DAOPedidoLocalActualizar
(
 @id_pedido_local INTEGER,
 @id_cliente INTEGER,
 @glosa VARCHAR(300),
 @descuento INTEGER,
 @total INTEGER,
 @fecha_termino DATE,
 @fecha_inscrita DATE,
 @id_forma_envio INTEGER,
 @id_sucursal INTEGER
) 
as
update pedido_local set id_cliente = @id_cliente, glosa = @glosa, descuento = @descuento, total = @total, fecha_termino = @fecha_termino, fecha_inscrita = @fecha_inscrita, id_forma_envio = @id_forma_envio, id_sucursal = @id_sucursal
where id_pedido_local = @id_pedido_local
GO


CREATE procedure DAOPedidoLocalEliminar
(
 @id_pedido_local INTEGER 
)
as
delete from pedido_local 
 where @id_pedido_local = id_pedido_local
GO



CREATE PROCEDURE DAOPedidoLocalBuscar
(
  @id_pedido_local INTEGER 
)
AS
BEGIN
SELECT * FROM pedido_local WHERE id_pedido_local =@id_pedido_local 
END
GO


CREATE Procedure DAOProductoInsertar
(
 @codProducto INTEGER,
 @nombreProducto varchar(50),
 @imagen varchar(60),
 @stock INTEGER,
 @activo INTEGER,
 @idCate INTEGER
)
as
begin
insert into Producto ([cod_producto], [nombre_producto], [imagen], [stock], [activo],[id_cate]) 
values (@codProducto, @nombreProducto, @imagen, @stock,
 @activo,
 @idCate)
end
GO



CREATE procedure DAOProductoActualizar
(
 @id_producto INTEGER,
 @cod_producto INTEGER,
 @nombre_producto varchar(50),
 @imagen varchar(60),
 @stock INTEGER,
 @activo INTEGER,
 @idCate INTEGER
) 
as
update producto set cod_producto = @cod_producto, nombre_producto= @nombre_producto, imagen = @imagen, stock=@stock,activo=@activo, id_cate=@idCate
where id_producto = @id_producto 
GO



CREATE procedure DAOProductoEliminar
(
 @id_producto INTEGER 
)
as
delete from producto 
 where @id_producto = id_producto
GO



CREATE PROCEDURE DAOProductoBuscar
(
  @id_producto INTEGER 
)
AS
BEGIN
SELECT * FROM producto WHERE id_producto =@id_producto 
END
GO




CREATE procedure DAOProductoPrecioInsertar
(
 @id_producto INTEGER,
 @descripcion VARCHAR(40),
 @precio INTEGER
)
as
begin
 insert into producto_precio ([id_producto], [descripcion], [precio]) 
values (@id_producto, @descripcion, @precio)
end
GO


CREATE procedure DAOProductoPrecioActualizar
(
 @id_producto_p INTEGER,
 @id_producto INTEGER,
 @descripcion VARCHAR(40),
 @precio INTEGER
) 
as
update producto_precio set id_producto = @id_producto, descripcion = @descripcion, precio = @precio
where id_producto_p = @id_producto_p
GO


CREATE procedure DAOProductoPrecioEliminar
(
 @id_producto_p INTEGER 
)
as
delete from producto_precio 
 where @id_producto_p = id_producto_p
GO



CREATE PROCEDURE DAOProductoPrecioBuscar
(
  @id_producto_p INTEGER 
)
AS
BEGIN
SELECT * FROM producto_precio WHERE id_producto_p = @id_producto_p  
END
GO


CREATE procedure DAOSucursalInsertar
(
 @nombre_sucursal varchar(30),
 @id_comuna INTEGER
)
as
begin
 insert into sucursal ([nombre_sucursal], [id_comuna]) values (@nombre_sucursal, @id_comuna)
end
GO


CREATE procedure DAOSucursalActualizar
(
 @id_sucursal INTEGER,
 @nombre_sucursal varchar(30),
 @id_comuna INTEGER
) 
as
update sucursal set nombre_sucursal= @nombre_sucursal, id_comuna= @id_comuna
where id_sucursal = @id_sucursal
GO


CREATE procedure DAOSucursalEliminar
(
@id_sucursal INTEGER
)
as
delete from sucursal 
 where @id_sucursal = id_sucursal
GO



CREATE PROCEDURE DAOSucursalBuscar
(
  @id_sucursal INTEGER 
)
AS
BEGIN
SELECT * FROM sucursal WHERE id_sucursal = @id_sucursal 
END
GO


 CREATE PROCEDURE DAOTipoUsuarioInsertar
(
  @nombre_tipo VARCHAR(30)
)
AS
BEGIN
 INSERT INTO tipo_usuario(nombre_tipo) 
 VALUES (@nombre_tipo)
END
GO



CREATE PROCEDURE DAOTipoUsuarioActualizar
(
 @id_tipo     INTEGER,
 @nombre_tipo VARCHAR(30)
) 
AS
UPDATE tipo_usuario SET nombre_tipo = @nombre_tipo
WHERE id_tipo = @id_tipo
GO



CREATE PROCEDURE DAOTipoUsuarioEliminar
(
  @id_tipo     INTEGER
)
AS
DELETE FROM tipo_usuario 
 WHERE @id_tipo = id_tipo
GO



CREATE PROCEDURE DAOTipoUsuarioBuscar
(
 @id_tipo     INTEGER
)
AS
BEGIN
SELECT * FROM tipo_usuario WHERE id_tipo=@id_tipo
END
GO
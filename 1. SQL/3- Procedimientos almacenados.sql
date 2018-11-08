CREATE PROCEDURE NEGBoletaInsertar
(
  @total INTEGER,
  @id_empleado INTEGER,
  @id_forma_pago INTEGER,
  @id_sucursal INTEGER,
  @id_pedido_local INTEGER
)
AS
BEGIN
BEGIN TRY
	EXEC dbo.DaoBoletaInsertar @total,@id_empleado,@id_forma_pago,@id_sucursal,@id_pedido_local 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGCategoriaInsertar
(
  @nombre_cate varchar(40),
  @activo INTEGER
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_cate FROM categoria WHERE nombre_cate=@nombre_cate)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOCategoriaInsertar @nombre_cate,@activo 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO




CREATE PROCEDURE NEGClienteInsertar
@id_cliente INTEGER,
@rut_cliente VARCHAR(30),
@nombres VARCHAR(60),
@apellidos VARCHAR(30),
@fecha_nacimiento DATE,
@id_comuna INTEGER,
@telefono INTEGER,
@correo VARCHAR(50),
@activo INTEGER,
@direccion VARCHAR(100),
@usuario VARCHAR(30),
@clave VARCHAR(30)

as
if exists (select * from cliente where rut_cliente = @rut_cliente)
begin
print('Ya existe');
return 
end

begin
declare @num as int
exec DAOClienteInsertar @rut_cliente, @nombres, @apellidos, @fecha_nacimiento, @id_comuna, @telefono, @correo, @activo
set @num = (select MAX(id_cliente) from cliente)
exec DAOControlClienteInsertar @num, @usuario, @clave, @activo
exec DAODireccionClienteInsertar @num, @id_comuna, @direccion
end

begin 
select * from cliente where rut_cliente = @rut_cliente
end
go

CREATE PROCEDURE NEGClienteLogin
(
	@usuario varchar(30),
	@clave	 varchar(30)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT * FROM control_cliente WHERE usuario=@usuario AND clave=@clave)
	PRINT 'Inicio de sesión exitoso';
 ELSE
	PRINT 'Usuario y contraseña no registrado';
END TRY 
BEGIN CATCH
  PRINT 'ERROR AL INICIAR SESIÓN'
END CATCH
END
GO


CREATE PROCEDURE NEGComunaInsertar
(
  @nombre_comuna VARCHAR(50)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_comuna FROM comuna WHERE nombre_comuna=@nombre_comuna)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOComunaInsertar @nombre_comuna 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGControlEmpleadoInsertar
(
    @usuario	VARCHAR (30),
    @clave      VARCHAR (30),
    @id_tipo    INTEGER,
    @id_empleado INTEGER,
    @activo     INTEGER
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT id_empleado FROM control_empleado WHERE id_empleado=@id_empleado)
	PRINT 'DATO YA EXISTE'
 ELSE 
	EXEC dbo.DAOControlEmpleadoInsertar @usuario,@clave,@id_tipo,@id_empleado,@activo 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO



CREATE PROCEDURE NEGEmpleadoInsertar
(
	@rut_empleado varchar(30),
	@nombres varchar(60),
	@apellidos varchar(30),
	@fecha_nacimiento date,
	@telefono int,
	@id_comuna int,
	@correo varchar(50),
	@activo int 
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT rut_empleado FROM empleado WHERE rut_empleado=@rut_empleado)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOEmpleadoInsertar @rut_empleado,@nombres,@apellidos,@fecha_nacimiento,@telefono,
	                             @id_comuna,@correo,@activo
END TRY 
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGFormaEnvioInsertar
(
  @nombre_envio VARCHAR(30)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_envio FROM forma_envio WHERE nombre_envio=@nombre_envio)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOFormaEnvioInsertar @nombre_envio 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGFormaPagoInsertar
(
  @nombre_pago VARCHAR(30)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_pago FROM forma_pago WHERE nombre_pago=@nombre_pago)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOFormaPagoInsertar @nombre_pago 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGProductoInsertar
(
  @codProducto int,
  @nombreProducto varchar(50),
  @imagen varchar(60),
  @tamano varchar(60),
  @activo int,
  @idCate int
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT cod_producto FROM producto WHERE cod_producto=@codProducto)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOProductoInsertar @codProducto,@nombreProducto,@imagen,@tamano,@activo,@idCate 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGProductoPrecioInsertar
(
  @id_producto INTEGER,
  @descripcion VARCHAR(40),
  @precio INTEGER
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT id_producto FROM producto_precio WHERE id_producto=@id_producto)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOProductoPrecioInsertar @id_producto,@descripcion,@precio 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGSucursalInsertar
(
  @nombre_sucursal VARCHAR(30)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_sucursal FROM sucursal WHERE nombre_sucursal=@nombre_sucursal)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOSucursalInsertar @nombre_sucursal 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO


CREATE PROCEDURE NEGTipoUsuarioInsertar
(
  @nombre_tipo VARCHAR(30)
)
AS
BEGIN
BEGIN TRY
 IF EXISTS(SELECT nombre_tipo FROM tipo_usuario WHERE nombre_tipo=@nombre_tipo)
	PRINT 'DATO YA EXISTE'
 ELSE
	EXEC dbo.DAOTipoUsuarioInsertar @nombre_tipo 
END TRY
BEGIN CATCH
  PRINT 'ERROR AL INSERTAR'
END CATCH
END
GO





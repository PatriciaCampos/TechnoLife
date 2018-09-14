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
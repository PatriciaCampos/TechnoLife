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

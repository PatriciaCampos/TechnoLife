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

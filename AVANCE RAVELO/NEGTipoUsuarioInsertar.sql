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



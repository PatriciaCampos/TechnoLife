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

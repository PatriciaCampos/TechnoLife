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

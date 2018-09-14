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


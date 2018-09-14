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
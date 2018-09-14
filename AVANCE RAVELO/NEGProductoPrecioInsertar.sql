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
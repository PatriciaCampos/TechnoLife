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
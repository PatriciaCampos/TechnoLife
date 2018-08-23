CREATE PROCEDURE SP_ELIMINAR_FORMA_PAGO
(
  @id_forma_pago INTEGER
)
AS
DELETE FROM forma_pago 
 WHERE @id_forma_pago = id_forma_pago
GO



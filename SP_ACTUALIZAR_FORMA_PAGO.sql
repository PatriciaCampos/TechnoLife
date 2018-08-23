CREATE PROCEDURE SP_ACTUALIZAR_FORMA_PAGO
(
  @id_forma_pago INTEGER ,
  @nombre_pago VARCHAR(30)
) 
AS
UPDATE forma_pago SET nombre_pago = @nombre_pago
WHERE id_forma_pago = @id_forma_pago
GO


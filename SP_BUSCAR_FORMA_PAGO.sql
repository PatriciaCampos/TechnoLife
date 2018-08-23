CREATE PROCEDURE SP_BUSCAR_FORMA_PAGO
(
  @id_forma_pago INTEGER 
)
AS
BEGIN
SELECT * FROM forma_pago WHERE id_forma_pago=@id_forma_pago
END
GO




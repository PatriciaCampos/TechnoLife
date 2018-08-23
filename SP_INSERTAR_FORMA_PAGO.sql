 CREATE PROCEDURE SP_INSERTAR_FORMA_PAGO
(
  @id_forma_pago INTEGER ,
  @nombre_pago VARCHAR(30)
)
AS
BEGIN
 INSERT INTO forma_pago(
  id_forma_pago,
  nombre_pago
 ) 
 VALUES (
  @id_forma_pago,
  @nombre_pago
 )
END
GO



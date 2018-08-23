CREATE PROCEDURE SP_ELIMINAR_FORMA_ENVIO
(
  @id_forma_envio INTEGER
)
AS
DELETE FROM forma_envio 
 WHERE @id_forma_envio = id_forma_envio
GO


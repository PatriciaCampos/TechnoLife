CREATE PROCEDURE SP_ACTUALIZAR_FORMA_ENVIO
(
   @id_forma_envio INTEGER,
   @nombre_envio   VARCHAR(30)
) 
AS
UPDATE forma_envio SET nombre_envio = @nombre_envio
WHERE id_forma_envio = @id_forma_envio
GO

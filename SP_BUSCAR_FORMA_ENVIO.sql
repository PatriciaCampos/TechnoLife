CREATE PROCEDURE SP_BUSCAR_FORMA_ENVIO
(
   @id_forma_envio INTEGER
)
AS
BEGIN
SELECT * FROM forma_envio WHERE id_forma_envio=@id_forma_envio
END
GO




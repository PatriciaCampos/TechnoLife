CREATE PROCEDURE SP_ELIMINAR_TIPO_USUARIO
(
  @id_tipo     INTEGER
)
AS
DELETE FROM tipo_usuario 
 WHERE @id_tipo = id_tipo
GO

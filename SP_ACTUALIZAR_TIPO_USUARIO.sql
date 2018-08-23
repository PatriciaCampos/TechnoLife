CREATE PROCEDURE SP_ACTUALIZAR_TIPO_USUARIO
(
 @id_tipo     INTEGER,
 @nombre_tipo VARCHAR(30)
) 
AS
UPDATE tipo_usuario SET nombre_tipo = @nombre_tipo
WHERE id_tipo = @id_tipo
GO

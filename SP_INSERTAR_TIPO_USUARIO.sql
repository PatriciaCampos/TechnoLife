 CREATE PROCEDURE SP_INSERTAR_TIPO_USUARIO
(
 @id_tipo     INTEGER,
 @nombre_tipo VARCHAR(30)
)
AS
BEGIN
 INSERT INTO tipo_usuario(
 id_tipo, 
 nombre_tipo
 ) 
 VALUES (
 @id_tipo, 
 @nombre_tipo
 )
END
GO

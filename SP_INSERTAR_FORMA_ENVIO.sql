 CREATE PROCEDURE SP_INSERTAR_FORMA_ENVIO
(
   @id_forma_envio INTEGER,
   @nombre_envio   VARCHAR(30)
)
AS
BEGIN
 INSERT INTO forma_envio(
  id_forma_envio,
  nombre_envio
 ) 
 VALUES (
  @id_forma_envio,
  @nombre_envio
 )
END
GO


  

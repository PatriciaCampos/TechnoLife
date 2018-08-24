CREATE procedure SP_ACTUALIZAR_CATEGORIA
(
  @id_cate INTEGER,
  @nombre_cate varchar(40),
  @activo INTEGER
) 
as
update categoria set nombre_cate = @nombre_cate, activo = @activo
where id_cate = @id_cate
GO

EXEC SP_ACTUALIZAR_CATEGORIA 1, "Computadores", 0

SELECT * FROM CATEGORIA


DROP PROCEDURE SP_ACTUALIZAR_CATEGORIA
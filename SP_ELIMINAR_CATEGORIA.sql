CREATE procedure PROC_ELIMINAR_CATEGORIA
(
 @id_cate INTEGER 
)
as
delete from categoria 
 where @id_cate = id_cate
GO

EXEC PROC_ELIMINAR_CATEGORIA 1

USE tecno;

SELECT * FROM categoria

DROP PROCEDURE SP_ELIMINAR_CATEGORIA
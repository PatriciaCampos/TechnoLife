CREATE procedure PROC_ELIMINAR_COMUNA
(
@id_comuna INTEGER
)
as
delete from comuna 
 where @id_comuna = id_comuna

GO

EXEC PROC_ELIMINAR_COMUNA 1

SELECT * FROM COMUNA
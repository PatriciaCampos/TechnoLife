CREATE procedure PROC_ACTUALIZAR_COMUNA
(
 @id_comuna INTEGER,
 @nombre_comuna varchar(30)
) 
as
update comuna set nombre_comuna= @nombre_comuna
where id_comuna = @id_comuna
GO

EXEC PROC_ACTUALIZAR_COMUNA 1, "Renca"

SELECT * FROM COMUNA
CREATE procedure PROC_ELIMINAR_EMPLEADO
(
 @id_empleado INTEGER 
)
as
delete from empleado 
 where @id_empleado = id_empleado
GO

EXEC PROC_ELIMINAR_EMPLEADO 1


SELECT * FROM EMPLEADO
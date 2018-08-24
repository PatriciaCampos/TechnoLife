CREATE procedure PROC_ELIMINAR_SUCURSAL
(
@id_sucursal INTEGER
)
as
delete from sucursal 
 where @id_sucursal = id_sucursal

GO

EXEC PROC_ELIMINAR_SUCURSAL 1

SELECT * FROM SUCURSAL


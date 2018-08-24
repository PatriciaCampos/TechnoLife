CREATE procedure PROC_ACTUALIZAR_SUCURSAL
(
 @id_sucursal INTEGER,
 @nombre_sucursal varchar(30)
) 
as
update sucursal set nombre_sucursal= @nombre_sucursal
where id_sucursal = @id_sucursal
GO

EXEC PROC_ACTUALIZAR_SUCURSAL 1, "Sucursal Valparaiso"
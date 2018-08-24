CREATE Procedure PROC_INSERTAR_SUCURSAL
(
 @id_sucursal INTEGER,
 @nombre_sucursal varchar(30)
)
as
begin
 insert into sucursal ([id_sucursal], [nombre_sucursal]) values (@id_sucursal, @nombre_sucursal)
end
GO

USE TECNO

EXEC PROC_INSERTAR_SUCURSAL 1, "Sucursal Rancagua"

SELECT * FROM SUCURSAL
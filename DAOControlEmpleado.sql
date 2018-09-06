CREATE Procedure SP_INSERTAR_CONTROL_EMPLEADO
(
    @codigo			INTEGER,
    @usuario		VARCHAR (30),
    @clave          VARCHAR (30),
    @id_tipo        INTEGER,
    @id_empleado	INTEGER,
    @activo         INTEGER
)
as
begin
 insert into control_empleado ([codigo], [usuario], [clave], [id_tipo], 
 [id_empleado], [activo]) 
 values (@codigo, @usuario, @clave, @id_tipo, @id_empleado, @activo)
end
GO


CREATE procedure SP_ACTUALIZAR_CONTROL_EMPLEADO
(
    @codigo			INTEGER,
    @usuario		VARCHAR (30),
    @clave          VARCHAR (30),
    @id_tipo        INTEGER,
    @id_empleado	INTEGER,
    @activo         INTEGER
) 
as
update control_empleado set usuario= @usuario, clave= @clave, id_tipo= @id_tipo, 
id_empleado= @id_empleado, activo= @activo
where codigo = @codigo
GO


CREATE procedure SP_ELIMINAR_CONTROL_EMPLEADO
(
 @codigo INTEGER 
)
as
delete from control_empleado 
 where @codigo = codigo
GO

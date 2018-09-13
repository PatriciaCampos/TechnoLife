CREATE procedure DAOControlEmpleadoInsertar
(
    @usuario	VARCHAR (30),
    @clave          	VARCHAR (30),
    @id_tipo        	INTEGER,
    @id_empleado	INTEGER,
    @activo         	INTEGER
)
as
begin
 insert into control_empleado ([usuario], [clave], [id_tipo], 
 [id_empleado], [activo]) 
 values (@usuario, @clave, @id_tipo, @id_empleado, @activo)
end
GO


CREATE procedure DAOControlEmpleadoActualizar
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


CREATE procedure DAOControlEmpleadoEliminar
(
 @codigo INTEGER 
)
as
delete from control_empleado 
 where @codigo = codigo
GO



CREATE PROCEDURE DAOControlEmpleadoBuscar
(
  @codigo INTEGER 
)
AS
BEGIN
SELECT * FROM control_empleado WHERE codigo= @codigo
END
GO


CREATE Procedure SFAC_InsertarCliente
(
 @id_cliente INTEGER,
 @rut_cliente VARCHAR(10),
 @nombres VARCHAR,
 @apellidos VARCHAR,
 @fecha_nacimiento DATE,
 @id_comuna INTEGER,
 @telefono INTEGER,
 @correo VARCHAR,
 @activo INTEGER
)
as
begin
 insert into Cliente ([id_cliente], [rut_cliente], [nombres], [apellidos], [fecha_nacimiento], [id_comuna], [telefono], [correo], [activo]) 
 values (@id_cliente, @rut_cliente, @nombres, @apellidos, @fecha_nacimiento, @id_comuna, @telefono, @correo, @activo)
end
GO



CREATE procedure SFAC_EliminarCliente
(
 @id_cliente INTEGER
)
as
delete  from Cliente 
 where @id_cliente = id_cliente

GO


CREATE procedure SFAC_ActualizarCliente
(
 @id_cliente INTEGER,
 @rut_cliente VARCHAR(10),
 @nombres VARCHAR,
 @apellidos VARCHAR,
 @fecha_nacimiento DATE,
 @id_comuna INTEGER,
 @telefono INTEGER,
 @correo VARCHAR,
 @activo INTEGER
) 
as
update Cliente set @id_cliente = id_cliente, @rut_cliente = rut_cliente, @nombres = nombres, @apellidos = apellidos, @fecha_nacimiento = fecha_nacimiento, @id_comuna = id_comuna, @telefono = telefono, @correo = correo, @activo = activo
where @id_cliente = id_cliente
GO



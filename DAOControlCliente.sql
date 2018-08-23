CREATE Procedure pro_InsertarControlCliente
(
 @idControl int,
 @idCliente int,
 @usuario varchar(30),
 @clave varchar(30),
 @activo int

)
as
begin
 insert into control_cliente ([id_control_c], [id_cliente], [usuario], [clave],[activo]) 
 values (@idControl,@idCliente,@usuario,@clave,@activo)
end
GO
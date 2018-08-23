

CREATE Procedure SFAC_InsertarDireccionCliente
(
    @id_direccion INTEGER,
    @id_cliente   INTEGER,
    @nombres      VARCHAR,
    @apellidos    VARCHAR,
    @informacion  VARCHAR,
    @zip          VARCHAR,
    @id_comuna    INTEGER,
    @direccion    VARCHAR,
    @telefono     VARCHAR,
    @celular      VARCHAR
)
as
begin
 insert into direccion_cliente ([id_direccion], [id_cliente], [nombres], [apellidos], [informacion], [zip], [id_comuna], [direccion], [telefono], [celular]) 
 values (@id_direccion, @id_cliente, @nombres, @apellidos, @informacion, @zip, @id_comuna, @direccion, @telefono, @celular)
end
GO



CREATE procedure SFAC_EliminarDireccionCliente
(
 @id_direccion INTEGER
)
as
delete  from direccion_cliente 
 where @id_direccion = id_direccion

GO


CREATE procedure SFAC_ActualizarDireccionCliente
(
    @id_direccion INTEGER,
    @id_cliente   INTEGER,
    @nombres      VARCHAR,
    @apellidos    VARCHAR,
    @informacion  VARCHAR,
    @zip          VARCHAR,
    @id_comuna    INTEGER,
    @direccion    VARCHAR,
    @telefono     VARCHAR,
    @celular      VARCHAR
) 
as
update direccion_cliente set @id_direccion = id_direccion, @id_cliente = id_cliente, @nombres = nombres, @apellidos = apellidos, @informacion = informacion, @zip = zip, @id_comuna = id_comuna, @direccion = direccion, @telefono = telefono, @celular = celular
where @id_cliente = id_cliente
GO



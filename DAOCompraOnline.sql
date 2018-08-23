

CREATE Procedure SFAC_InsertarCompraOnline
(
    @id_compra_online INTEGER,
    @id_cliente       INTEGER,
    @descuento        INTEGER,
    @total            INTEGER,
    @glosa            VARCHAR,
    @id_forma_envio   INTEGER,
    @id_forma_pago    INTEGER,
    @id_sucursal      INTEGER
)
as
begin
 insert into compra_online ([id_compra_online], [id_cliente], [descuento], [total], [glosa], [id_forma_envio], [id_forma_pago], [id_sucursal]) 
 values (@id_compra_online, @id_cliente, @descuento, @total, @glosa, @id_forma_envio, @id_forma_pago, @id_sucursal)
end
GO



CREATE procedure SFAC_EliminarCompraOnline
(
 @id_compra_online INTEGER
)
as
delete  from compra_online 
 where @id_compra_online = id_compra_online

GO


CREATE procedure SFAC_ActualizarCompraOnline
(
     @id_compra_online INTEGER,
    @id_cliente       INTEGER,
    @descuento        INTEGER,
    @total            INTEGER,
    @glosa            VARCHAR,
    @id_forma_envio   INTEGER,
    @id_forma_pago    INTEGER,
    @id_sucursal      INTEGER
) 
as
update compra_online set @id_compra_online = id_compra_online, @id_cliente = id_cliente, @descuento = descuento, @total = total, @glosa = glosa, @id_forma_envio = id_forma_envio, @id_forma_pago = id_forma_pago, @id_sucursal = id_sucursal
where @id_compra_online = id_compra_online
GO



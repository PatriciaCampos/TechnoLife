CREATE procedure DAOPedidoLocalInsertar
(
 @id_cliente INTEGER,
 @glosa VARCHAR(300),
 @descuento INTEGER,
 @total INTEGER,
 @fecha_termino DATE,
 @fecha_inscrita DATE,
 @id_forma_envio INTEGER,
 @id_sucursal INTEGER
)
as
begin
insert into pedido_local ([id_cliente], [glosa], [descuento], [total], [fecha_termino], [fecha_inscrita], [id_forma_envio], [id_sucursal]) 
values (@id_cliente, @glosa, @descuento, @total, @fecha_termino, @fecha_inscrita, @id_forma_envio, @id_sucursal)
end
GO


CREATE procedure DAOPedidoLocalActualizar
(
 @id_pedido_local INTEGER,
 @id_cliente INTEGER,
 @glosa VARCHAR(300),
 @descuento INTEGER,
 @total INTEGER,
 @fecha_termino DATE,
 @fecha_inscrita DATE,
 @id_forma_envio INTEGER,
 @id_sucursal INTEGER
) 
as
update pedido_local set id_cliente = @id_cliente, glosa = @glosa, descuento = @descuento, total = @total, fecha_termino = @fecha_termino, fecha_inscrita = @fecha_inscrita, id_forma_envio = @id_forma_envio, id_sucursal = @id_sucursal
where id_pedido_local = @id_pedido_local
GO


CREATE procedure DAOPedidoLocalEliminar
(
 @id_pedido_local INTEGER 
)
as
delete from pedido_local 
 where @id_pedido_local = id_pedido_local
GO



CREATE PROCEDURE DAOPedidoLocalBuscar
(
  @id_pedido_local INTEGER 
)
AS
BEGIN
SELECT * FROM pedido_local WHERE id_pedido_local =@id_pedido_local 
END
GO
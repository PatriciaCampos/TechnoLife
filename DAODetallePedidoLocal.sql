
CREATE procedure DAODetallePedidoLocalInsertar
(
 @id_pedido_local INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_pedido_local ([id_pedido_local], [id_producto_p], [precio], [cant], [total]) 
values (@id_pedido_local, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure DAODetallePedidoLocalActualizar
(
 @id_detalle_local INTEGER,
 @id_pedido_local INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_pedido_local set id_pedido_local = @id_pedido_local, id_producto_p = @id_producto_p, precio = @precio, cant = @cant, total = @total
where id_detalle_local = @id_detalle_local
GO


CREATE procedure DAODetallePedidoLocalEliminar
(
 @id_detalle_local INTEGER 
)
as
delete from detalle_pedido_local 
 where @id_detalle_local = id_detalle_local
GO



CREATE PROCEDURE DAODetallePedidoLocalBuscar
(
  @id_detalle_local INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_pedido_local WHERE id_detalle_local = @id_detalle_local 
END
GO
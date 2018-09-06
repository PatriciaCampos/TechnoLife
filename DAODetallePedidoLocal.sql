
CREATE Procedure SP_INSERTAR_DETALLE_PEDIDO_LOCAL
(
 @id_detalle_local INTEGER,
 @id_pedido_local INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_pedido_local ([id_detalle_local], [id_pedido_local], [id_producto_p], [precio], [cant], [total]) 
values (@id_detalle_local, @id_pedido_local, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure SP_ACTUALIZAR_DETALLE_PEDIDO_LOCAL
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


CREATE procedure SP_ELIMINAR_DETALLE_PEDIDO_LOCAL
(
 @id_detalle_local INTEGER 
)
as
delete from detalle_pedido_local 
 where @id_detalle_local = id_detalle_local
GO
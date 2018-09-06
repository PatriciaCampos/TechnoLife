
CREATE Procedure SP_INSERTAR_DETALLE_COMPRA_ONLINE
(
 @id_detalle_online INTEGER,
 @id_compra_online INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_compra_online ([id_detalle_online], [id_compra_online],[id_producto_p], [precio], [cant], [total]) 
values (@id_detalle_online, @id_compra_online, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure SP_ACTUALIZAR_DETALLE_COMPRA_ONLINE
(
 @id_detalle_online INTEGER,
 @id_compra_online INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_compra_online set @id_compra_online = @id_compra_online ,id_producto_p = @id_producto_p, id_boleta = @id_boleta, precio = @precio, cant = @cant, total = @total
where id_detalle_online = @id_detalle_online
GO


CREATE procedure SP_ELIMINAR_DETALLE_COMPRA_ONLINE
(
 @id_detalle_online INTEGER 
)
as
delete from detalle_compra_online 
 where @id_detalle_online = id_detalle_online
GO
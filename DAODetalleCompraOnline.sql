
CREATE procedure DAODetalleCompraOnlineInsertar
(
 @id_compra_online INTEGER,
 @id_producto_p INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_compra_online ([id_compra_online],[id_producto_p], [precio], [cant], [total]) 
values (@id_compra_online, @id_producto_p, @precio, @cant, @total)
end
GO


CREATE procedure DAODetalleCompraOnlineActualizar
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


CREATE procedure DAODetalleCompraOnlineEliminar
(
 @id_detalle_online INTEGER 
)
as
delete from detalle_compra_online 
 where @id_detalle_online = id_detalle_online
GO



CREATE PROCEDURE DAODetalleCompraOnlineBuscar
(
  @id_detalle_online INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_compra_online WHERE id_detalle_online = @id_detalle_online 
END
GO
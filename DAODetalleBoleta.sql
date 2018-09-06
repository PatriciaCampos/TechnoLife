
CREATE Procedure SP_INSERTAR_DETALLE_BOLETA
(
 @id_detalle INTEGER,
 @id_producto_p INTEGER,
 @id_boleta INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_boleta ([id_detalle], [id_producto_p], [id_boleta], [precio], [cant], [total]) 
values (@id_detalle, @id_producto_p, @id_boleta, @precio, @cant, @total)
end
GO


CREATE procedure SP_ACTUALIZAR_DETALLE_BOLETA
(
 @id_detalle INTEGER,
 @id_producto_p INTEGER,
 @id_boleta INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
) 
as
update detalle_boleta set id_producto_p = @id_producto_p, id_boleta = @id_boleta, precio = @precio, cant = @cant, total = @total
where id_detalle = @id_detalle
GO


CREATE procedure SP_ELIMINAR_DETALLE_BOLETA
(
 @id_detalle INTEGER 
)
as
delete from detalle_boleta 
 where @id_detalle = id_detalle
GO
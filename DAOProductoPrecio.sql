
CREATE procedure DAOProductoPrecioInsertar
(
 @id_producto INTEGER,
 @descripcion VARCHAR(40),
 @precio INTEGER
)
as
begin
 insert into producto_precio ([id_producto], [descripcion], [precio]) 
values (@id_producto, @descripcion, @precio)
end
GO


CREATE procedure DAOProductoPrecioActualizar
(
 @id_producto_p INTEGER,
 @id_producto INTEGER,
 @descripcion VARCHAR(40),
 @precio INTEGER
) 
as
update producto_precio set id_producto = @id_producto, descripcion = @descripcion, precio = @precio
where id_producto_p = @id_producto_p
GO


CREATE procedure DAOProductoPrecioEliminar
(
 @id_producto_p INTEGER 
)
as
delete from producto_precio 
 where @id_producto_p = id_producto_p
GO



CREATE PROCEDURE DAOProductoPrecioBuscar
(
  @id_producto_p INTEGER 
)
AS
BEGIN
SELECT * FROM producto_precio WHERE id_producto_p = @id_producto_p  
END
GO
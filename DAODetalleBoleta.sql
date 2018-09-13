
CREATE Procedure DAODetalleBoletaInsertar
(
 @id_producto_p INTEGER,
 @id_boleta INTEGER,
 @precio INTEGER,
 @cant INTEGER,
 @total INTEGER
)
as
begin
insert into detalle_boleta ([id_producto_p], [id_boleta], [precio], [cant], [total]) 
values (@id_producto_p, @id_boleta, @precio, @cant, @total)
end
GO


CREATE procedure DAODetalleBoletaActualizar
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


CREATE procedure DAODetalleBoletaEliminar
(
 @id_detalle INTEGER 
)
as
delete from detalle_boleta 
 where @id_detalle = id_detalle
GO



CREATE PROCEDURE DAODetalleBoletaBuscar
(
  @id_detalle INTEGER 
)
AS
BEGIN
SELECT * FROM detalle_boleta WHERE id_detalle = @id_detalle 
END
GO
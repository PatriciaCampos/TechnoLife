CREATE Procedure pro_InsertarProducto
(
 @idProducto int,
 @codProducto int,
 @nombreProducto varchar(50),
 @imagen varchar(60),
 @tamano varchar(60),
 @activo int,
 @idCate int
)
as
begin
 insert into Producto ([id_producto], [cod_producto], [nombre_producto], [imagen], [tamano], [activo],[id_cate]) values (@idProducto,
 @codProducto,
 @nombreProducto,
 @imagen,
 @tamano,
 @activo,
 @idCate)
end
GO
USE tecno

EXEC pro_InsertarProducto 1,1,'Mouse','Mouse.png','230cm',1,1

SELECT * FROM producto;
--------------------------------------------------------------------------------------
CREATE procedure pro_eliminarProducto
(
 @idProducto INTEGER 
)
as
delete from producto 
 where @idProducto = id_producto
GO

USE tecno;
EXEC pro_eliminarProducto 1
SELECT * FROM producto;
-------------------------------------------------------------------------------------------

CREATE procedure proc_actualizarProducto
(
 @idProducto int,
 @codProducto int,
 @nombreProducto varchar(50),
 @imagen varchar(60),
 @tamano varchar(60),
 @activo int,
 @idCate int
) 
as
update producto set @idProducto = id_producto, cod_producto = @codProducto, nombre_producto= @nombreProducto, imagen = @imagen, tamano=@tamano,activo=@activo, id_cate=@idCate
where @idProducto = id_producto
GO

USE tecno

EXEC proc_actualizarProducto 1,1,'teclado','teclado.png','230cm',1,1

SELECT * FROM producto;
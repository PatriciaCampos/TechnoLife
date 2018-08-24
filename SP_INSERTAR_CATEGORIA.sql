CREATE Procedure SP_INSERTAR_CATEGORIA
(
 @id_cate INTEGER,
 @nombre_cate varchar(40),
 @activo INTEGER
)
as
begin
 insert into categoria ([id_cate], [nombre_cate], [activo] ) values (@id_cate, @nombre_cate, @activo)
end
GO

EXEC SP_INSERTAR_CATEGORIA 1, "CACA", 1

SELECT * FROM CATEGORIA
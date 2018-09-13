CREATE PROCEDURE NEGAdminInsertarCategoria
(
	@nombreCategoria varchar (40)
)
AS
BEGIN
BEGIN TRY
IF EXISTS(select nombre_cate FROM categoria
where nombre_cate=@nombreCategoria)
print 'ERROR, CATEGORIA YA EXISTE.'
else
EXEC  dbo.DAOCategoriaInsertar @nombreCategoria, 1
END TRY
BEGIN CATCH
PRINT 'insertado correctamente'
END CATCH
END
GO

insert into categoria values ('mouse',1);

select * from categoria;

exec dbo.NEGAdminInsertarCategoria 'teclado'
select * from categoria;
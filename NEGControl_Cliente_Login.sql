CREATE PROCEDURE NEGControl_Cliente_Login
(
	@usuario varchar(30),
	@clave varchar(30)
)
AS
BEGIN
	IF EXISTS (SELECT usuario, clave FROM control_cliente
				WHERE usuario=@usuario 
					AND clave=@clave)
		PRINT 'BIENVENIDO :)'
	ELSE 
		PRINT 'USUARIO NO EXISTE :|'
END
GO

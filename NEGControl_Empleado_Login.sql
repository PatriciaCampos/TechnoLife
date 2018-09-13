CREATE PROCEDURE NEGControl_Empleado_Login
(
	@usuario varchar(30),
	@clave varchar(30)
)
AS
BEGIN
	IF EXISTS (SELECT usuario, clave FROM control_empleado
				WHERE usuario=@usuario 
					AND clave=@clave)
		PRINT 'BIENVENIDO :)'
	ELSE 
		PRINT 'USUARIO NO EXISTE :|'
END
GO

INSERT INTO comuna values(1,'Paine');

DECLARE @currdate DATETIME;
SET @currdate = GETDATE();
INSERT INTO empleado values(1,'12.134.145-8','Juanito','Perez',@currdate,77777777,1,'Jaja@jaja.cl',1);

INSERT INTO tipo_usuario values(1,'Cajero');

INSERT INTO control_empleado values (1,'Cajero','123',1,1,1);

EXEC NEGControl_Empleado_Login 'Cajero','123'
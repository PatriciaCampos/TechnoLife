
CREATE Procedure SP_INSERTAR_EMPLEADO
(
	@id_empleado      INTEGER,
    @rut_empleado     VARCHAR (30),
    @nombres          VARCHAR (60),
    @apellidos        VARCHAR (30),
    @fecha_nacimiento DATE,
    @telefono         INTEGER ,
    @id_comuna        INTEGER,
    @correo           VARCHAR (50),
    @activo           INTEGER
)
as
begin
 insert into empleado ([id_empleado], [rut_empleado], [nombres], [apellidos], 
 [fecha_nacimiento], [telefono], [id_comuna], [correo], [activo]) 
 values (@id_empleado, @rut_empleado, @nombres, @apellidos, @fecha_nacimiento, @telefono,
 @id_comuna, @correo, @activo)
end
GO

EXEC SP_INSERTAR_EMPLEADO 1, "19720601-2", "Juan Carlos", "Peña Silva", '05/09/1997', 
982384587, 1, "ju.penas@alumnos.duoc.cl", 1

SELECT * FROM EMPLEADO
CREATE procedure PROC_ACTUALIZAR_EMPLEADO
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
update empleado set rut_empleado= @rut_empleado, nombres= @nombres, apellidos= @apellidos,
fecha_nacimiento= @fecha_nacimiento, telefono= @telefono, id_comuna= @id_comuna,
correo= @correo, activo= @activo
where id_empleado = @id_empleado
GO

EXEC PROC_ACTUALIZAR_EMPLEADO 1, "19720601-2", "Juanito", "Peña Silva", '05/09/1998', 
28253138, 1, "ju.penas@alumnos.duoc.cl", 0

SELECT * FROM EMPLEADO
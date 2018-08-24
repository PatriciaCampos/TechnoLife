

CREATE Procedure PROC_INSERTAR_COMUNA
(
 @id_comuna INTEGER,
 @nombre_comuna varchar(10)
)
as
begin
 insert into comuna ([id_comuna], [nombre_comuna]) values (@id_comuna, @nombre_comuna)
end
GO

USE TECNO

EXEC PROC_INSERTAR_COMUNA 1, "San Bernardo"

SELECT * FROM COMUNA
/* ====================================================== */
/* =================  TP FINAL PUNTO 3  ================= */
/*  se debe ejecutar:  p_validar_campos 'nombre_tabla'    */
/* ====================================================== */
CREATE PROCEDURE p_validar_campos

	@varTabla VARCHAR(50)	
AS
BEGIN
	
	select sc.name 'Campos fuera de norma'
	from sys.columns sc 
		join sys.types sty 
		on sc.user_type_id = sty.user_type_id
		join sys.tables sta 
		on sc.object_id = sta.object_id
	where sta.name = @varTabla
		and sc.name not in (
							select sc.name Campo
							from sys.columns sc 
								join sys.types sty 
								on sc.user_type_id = sty.user_type_id
							where sta.name = @varTabla
								and SUBSTRING (sc.name, 1, 3) = SUBSTRING (sty.name, 1, 3) 
								and SUBSTRING (sc.name, 4, 1) = UPPER(SUBSTRING (sc.name, 4, 1)) 
							)
END
GO


EXEC p_validar_campos 'GEN_Tabla2'

EXEC p_validar_campos 'FAL_Tabla4'

EXEC p_validar_campos 'alumno'

EXEC p_validar_campos 'ARG_Tabla1'

EXEC p_validar_campos 'ARQ_Tabla1'

EXEC p_validar_campos 'GEN_alumno'

EXEC p_validar_campos 'MKT_Registro'

EXEC p_validar_campos 'MKT_Tabla3'

EXEC p_validar_campos 'WEB_notas'

	
/* ====================================================== */
/* =================  TP FINAL PUNTO 2  ================= */
/* =                                                    = */
/* =  DEVUELVE TODOS LOS OBJETOS DEL TIPO SOLICIDATO  	= */
/* =  QUE NO CUMPLEN CON LA NORMATIVA				  	= */
/* =  PARAMETRIZACIÓN:								   == */
/* =  VALIDAR TABLAS: 'T' 							   == */
/* =  VALIDAR PROCEDIMIENTOS: 'P'					   == */
/* =  VALIDAR CLAVES FORANEAS:  'FK'				   == */
/* =  VALIDAR CLAVES PRIMERIAS: 'PK'				   == */
/* =  VALIDAR INDICES: 'I'			 				   == */
/* =  VALIDAR TRIGERS: 'TR' 						   == */
/* =  VALIDAR UNIQUES: 'U'							   == */
/* =  VALIDAR CHECKS: 'C'							   == */
/* =  VALIDAR VISTAS: 'V'							   == */
/* ====================================================== */

ALTER PROCEDURE p_validar_normativa

	@varTipoObjeto VARCHAR(50)	
AS
BEGIN
declare @prueba varchar(255)

IF (UPPER(@varTipoObjeto) = 'T') /* TABLAS */
	BEGIN
				SELECT name as 'Tablas fuera de norma'
				FROM sys.objects
				WHERE TYPE = 'U'
				AND name NOT IN (
								SELECT name
								from sys.objects
								where SUBSTRING( name, 1, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
									  SUBSTRING( name, 4, 1) = CHAR(95) AND
									  SUBSTRING(name,5,1) =  UPPER(SUBSTRING(name,5,1))
									  )
	END

ELSE IF (UPPER(@varTipoObjeto) = 'P')  /* PROCEDIMIENTOS */
	BEGIN
	
			SELECT name as 'Prodecimientos fuera de norma'
				FROM sys.objects
				WHERE TYPE = 'P'
					AND name NOT IN (
								SELECT name
								from sys.objects
								where LEFT( NAME, 2 ) = 'p' + CHAR(95)  AND
								SUBSTRING( name, 3, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
								SUBSTRING( name, 6, 1) = CHAR(95) AND 
								SUBSTRING( name, 7, 1) =  UPPER(SUBSTRING( name, 7, 1))
								) 
	END


ELSE IF (UPPER(@varTipoObjeto) = 'I')												/* INDICES */				
		BEGIN
			DECLARE itest cursor for
				select t.name as ntabla, i.name as nindice 
					from sys.indexes i
					join sys.tables t
					on i.object_id = t.object_id
					and i.name not in (select name from sys.objects
							   WHERE type in ('C', 'F', 'PK', 'UQ' ))
		
			DECLARE @listaindices TABLE(nindice nvarchar(max))
			DECLARE @ntabla nvarchar(max)
			DECLARE @nindice nvarchar(max)
			DECLARE @largo INT
			DECLARE @mistring nvarchar(max)
			DECLARE @nombrein varchar(max)
			
			open itest
			fetch next from itest into @ntabla, @nindice
			while @@fetch_status = 0
				begin
		
				set @largo = LEN ('ix'+CHAR(95)+@ntabla)
				
				set @mistring = SUBSTRING (@nindice, 1, @largo)
				
				set @nombrein = REPLACE(@nindice, @mistring + CHAR(95), '')
					
					if (@mistring + CHAR(95) <> 'ix'+ CHAR(95)+ @ntabla + CHAR(95))
					     OR (left(@nombrein,1) = lower(left(@nombrein,1))  )		
						BEGIN
						INSERT INTO @listaindices VALUES (@nindice)
			
					END
			
				fetch next from itest
				into @ntabla, @nindice
				end
			close itest
			deallocate itest
			
			select nindice as 'Indices fuera de norma' from @listaindices

		END
								
END		
GO				

EXEC  p_validar_normativa 'I' 

EXEC  p_validar_normativa 'P'	

EXEC  p_validar_normativa 'T'	





CREATE PROCEDURE p_validar_normativa

	@varTipoObjeto VARCHAR(50)
	
AS
BEGIN

IF (UPPER(@varTipoObjeto) = 'T') /* TABLAS */
	BEGIN
				SELECT name as 'Tablas fuera de norma'
				FROM sys.objects
				WHERE TYPE = 'U'
				AND name NOT IN (
								SELECT name
								from sys.objects
								where SUBSTRING( name, 1, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
									  SUBSTRING( name, 4, 1) = CHAR(95) ) 
				OR SUBSTRING( name, 5, 1) = LOWER(SUBSTRING( name, 5, 1) )			  
	END

ELSE IF (UPPER(@varTipoObjeto) = 'P')  /* PROCEDIMIENTOS */
	BEGIN
			SELECT name as 'Prodecimientos fuera de norma'
				FROM sys.objects
				WHERE TYPE = 'P'
					AND name NOT IN (
								SELECT name
								from sys.objects
								where LEFT( NAME, 2 ) = 'P' + CHAR(95)  AND
								SUBSTRING( name, 3, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
								SUBSTRING( name, 6, 1) = CHAR(95) ) 

	END

ELSE IF (UPPER(@varTipoObjeto) = 'I')				/* INDICES */				
		BEGIN
			SELECT name as 'Indices fuera de norma'
				FROM sys.indexes
				WHERE not (LEFT( name, 3 ) = 'ix'+CHAR(95))  /* QUE NO EMPIECE CON IX_ */
				AND name not in (						     /* QUE EL NOMBRE NO SEA TENGA NOMBRE DE TALBA */       
								SELECT name					 /* PREFIJO Y LE SIGUE UN _ */
								from sys.objects
								where 
								SUBSTRING( name, 4, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
								SUBSTRING( name, 5, 1) = CHAR(95) ) 
								
		/*	FALTA RESOLVER COMO COMPARAR LO QUE SIGUE DE IX_ CON QUE SEA TIPO TABLA */
		END
								
END		
GO				

EXEC  p_validar_normativa 'I'

EXEC  p_validar_normativa 'P'	

EXEC  p_validar_normativa 'T'	
ALTER FUNCTION F_Valida_Normas ( @varNombreObjeto VARCHAR(255), 
								 @varTipoObjeto   VARCHAR(50) )
RETURNS INT
AS
BEGIN
	--
	DECLARE @Resultado INT
	--
	IF( LEFT( @varNombreObjeto, 2 ) = 'P' + CHAR(95)  AND
		SUBSTRING( @varNombreObjeto, 3, 3 ) IN ('ARQ','GEN','MKT','PRT','PVN','RSV','SYA','TMP','WEB') AND
		SUBSTRING( @varNombreObjeto, 6, 1) = CHAR(95) )
	BEGIN
		SELECT @Resultado = 0
	END
	ELSE
	BEGIN
		SELECT @Resultado = 1
	END
	
	--------------------------
	
	
	
	RETURN @Resultado
	--
END;
CREATE FUNCTION F_Valida_Indice (@varNombreObjeto VARCHAR(255))
RETURNS INT
AS
BEGIN
	--
	DECLARE @Resultado INT
	DECLARE @varpos INT
	DECLARE @largo INT
	DECLARE @largo2 INT
	DECLARE @nombre nvarchar(max)
	DECLARE @mistring nvarchar(max)
	DECLARE @varpos2 INT

	--
	
	SET @largo = LEN (@varNombreObjeto)									/* largo total */
	SET @varpos = charindex('_',@varNombreObjeto)						/* primer _ */
	SET @mistring = SUBSTRING (@varNombreObjeto, @varpos + 1,@largo )   /* string de _ en adelante  */
	SET @varpos2 = charindex('_',@mistring, 5)							/* posicion del 2° _   */
	SET @nombre = LEFT(@mistring, CHARINDEX('_', @mistring + '_', @varpos2) - 1)   /* para que no devuelva 0 y se pueda restar 1, asi no toma el guión */
					
	 IF EXISTS (
					SELECT 1
					  FROM sys.objects
					 WHERE UPPER(name) = @nombre
						   AND UPPER(type) = 'U'
				  )
	 AND (LEFT( @varNombreObjeto, 3 ) = 'ix'+CHAR(95) )
	 

	BEGIN
		SET @Resultado = 0
	END
	ELSE
	BEGIN
		SET @Resultado = 1
	END
	
	------------------------
	
	RETURN @Resultado
	--
END;

select name, dbo.F_Valida_Indice (name)
 from sys.indexes
 
 
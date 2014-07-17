CREATE FUNCTION F_Valida_Indice (@varNombreObjeto VARCHAR(255))
RETURNS INT
AS
BEGIN
	--
	DECLARE @Resultado INT
	DECLARE @largo INT
	DECLARE @nombre nvarchar(max)
	DECLARE @mistring nvarchar(max)
	
	DECLARE @ntabla nvarchar(max)
	DECLARE @nindice nvarchar(max)
	DECLARE @nombrein nvarchar(max)
	
	/*   SE DECLARA TABLA TEMPORAL PARA RELACIONAR EL INDICE CON
        	LA TABLA A LA QUE ESTA ASOCIADO Y ASI PODER VALIDAR			*/
        	
	DECLARE @listaindices TABLE(nindice nvarchar(max), ntabla nvarchar(max) )
	INSERT INTO @listaindices  (nindice, ntabla)
       SELECT i.name as nindice ,
		      t.name  as ntabla
			from sys.indexes i
			join sys.tables t
			on i.object_id = t.object_id
			where i.name = @varNombreObjeto	
			and i.name not in (select name from sys.objects
							   WHERE type in ('C', 'F', 'PK', 'UQ' ))
      
		SELECT @ntabla = ntabla FROM @listaindices
		SELECT @nindice = nindice FROM @listaindices
		
		SET @largo = LEN ('ix'+CHAR(95)+@ntabla)
				
		SET @mistring = SUBSTRING (@nindice, 1, @largo)
				
		SET @nombrein = REPLACE(@nindice, @mistring + CHAR(95), '')
					
		
		IF (@mistring + CHAR(95) = 'ix'+ CHAR(95)+ @ntabla + CHAR(95))
			and (left(@nombrein,1) = upper(left(@nombrein,1))  )		
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

/* Para consultar si el índice cumple o no con la normativa
	se debe colocar el nombre del indice donde dice 'name' */
	
select dbo.F_Valida_Indice ('name') as '1: no cumple | 0: cumple | -1 no existe' 

/* Si le pasas name ejecuta la validacion para todos */

select dbo.F_Valida_Indice (name) as '1: no cumple | 0: cumple | -1 no existe' 
 from sys.indexes
 


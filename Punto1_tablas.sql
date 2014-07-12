ALTER FUNCTION validarTablas (@tabla nvarchar(max), 
								@tipo nvarchar(2))
RETURNS INT
AS
  BEGIN
  DECLARE @ret INT
  IF (SUBSTRING(@tabla,1,3) IN ('ARQ', 'GEN', 'MKT', 'PRT', 'PVN', 'RSV', 'SYA', 'TMP', 'WEB') 
   AND SUBSTRING(@tabla,4,1) = '_') 
    AND SUBSTRING(@tabla,5,1) =  UPPER(SUBSTRING(@tabla,5,1))
   BEGIN SET @ret = 0
   END
  ELSE
 	SET @ret = 1
  RETURN @ret
  END
  
SELECT dbo.validarTablas('ARQ_Test', 'U')
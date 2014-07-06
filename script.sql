CREATE TABLE final.ARQ_Tabla1(
								intIdCampo1 INT,
								varCampo2 	VARCHAR(10),
								datCampo3 	DATETIME,
								bitCampo4 	BIT,
								decCampo5 	DECIMAL,
								CONSTRAINT PK_ARQ_Tabla1_intIdCampo1 PRIMARY KEY CLUSTERED (intIdCampo1)
						    );

ALTER TABLE final.ARQ_Tabla1 ADD CONSTRAINT UQ_varCampo2 UNIQUE (varCampo2);	
	
ALTER TABLE final.ARQ_Tabla1 ADD CONSTRAINT CK_datCampo3 CHECK (datCampo3 > '19000101') ;
	
ALTER TABLE final.ARQ_Tabla1 ADD CONSTRAINT FK_ARQ_Tabla1_GEN_Tabla2 FOREIGN KEY (intIdCampo1) REFERENCES final.GEN_Tabla2(intIdCampo1);

----------------------------------------------------

CREATE TABLE final.GEN_Tabla2(
								intIdCampo1 INT,
								varCampo2 	VARCHAR(10),
								datCampo3 	DATETIME,
								bitCampo4 	BIT,
								decCampo5 	DECIMAL,
								CONSTRAINT PK_GEN_Tabla2_intIdCampo1 PRIMARY KEY CLUSTERED (intIdCampo1)
						    );

ALTER TABLE final.GEN_Tabla2 ADD CONSTRAINT UQ_datCampo3 UNIQUE (datCampo3);	
	
ALTER TABLE final.GEN_Tabla2 ADD CONSTRAINT CK_varCampo2 CHECK (varCampo2 <> 'XXXXXXXXX') ;
	
ALTER TABLE final.GEN_Tabla2 ADD CONSTRAINT FK_GEN_Tabla2_MKT_Tabla3 FOREIGN KEY (intIdCampo1) REFERENCES final.MKT_Tabla3(intIdCampo1);

----------------------------------------------------

CREATE TABLE final.MKT_Tabla3(
								intIdCampo1 INT,
								varCampo2 	VARCHAR(10),
								datCampo3 	DATETIME,
								bitCampo4 	BIT,
								decCampo5 	DECIMAL,
								CONSTRAINT PK_MKT_Tabla3_intIdCampo1 PRIMARY KEY CLUSTERED (intIdCampo1)
						    );

ALTER TABLE final.MKT_Tabla3 ADD CONSTRAINT UQ_bitCampo4 UNIQUE (bitCampo4);	
	
ALTER TABLE final.MKT_Tabla3 ADD CONSTRAINT CK_decCampo5 CHECK (decCampo5 > 0) ;
	
ALTER TABLE final.MKT_Tabla3 ADD CONSTRAINT FK_MKT_Tabla3_ARQ_Tabla1 FOREIGN KEY (intIdCampo1) REFERENCES final.ARQ_Tabla1(intIdCampo1);

----------------------------------------------------

CREATE TABLE final.FAL_Tabla4(
								Campo1 	INT,
								Campo2 	VARCHAR(10),
								Campo3 	DATETIME,
								Campo4 	BIT,
								Campo5 	DECIMAL,
								CONSTRAINT FAL_Tabla4_Campo1 PRIMARY KEY CLUSTERED (Campo1)
						    );

ALTER TABLE final.FAL_Tabla4 ADD CONSTRAINT UQ_Campo4 UNIQUE (Campo4);	
	
ALTER TABLE final.FAL_Tabla4 ADD CONSTRAINT CK_Campo5 CHECK (Campo5 > 0) ;
	
ALTER TABLE final.FAL_Tabla4 ADD CONSTRAINT FK_FAL_Tabla4_MKT_Tabla3 FOREIGN KEY (Campo1) REFERENCES final.MKT_Tabla3(intIdCampo1);

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE final.p_PVN_Procedure1
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;

----------------------------------------------------

CREATE PROCEDURE final.p_WEB_Procedure2
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;

----------------------------------------------------

CREATE PROCEDURE final.p_NAN_Procedure3
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE VIEW v_ARQ_Vista1
AS 
	SELECT *
	FROM final.ARQ_Tabla1;
	
----------------------------------------------------	
	
CREATE VIEW v_GEN_Vista2
AS 
	SELECT *
	FROM final.GEN_Tabla2;

----------------------------------------------------	
	
CREATE VIEW v_GENVista3
AS 
	SELECT *
	FROM final.MKT_Tabla3;
	
-----------------------------------------------------------------------------------------------------------------------------------------

CREATE TRIGGER final.TRI_ARQ_Tabla1_Trigger1
	ON final.ARQ_Tabla1
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @ID INT
END;

----------------------------------------------------

CREATE TRIGGER final.TRUDI_GEN_Tabla2_Trigger2
	ON final.GEN_Tabla2
INSTEAD OF UPDATE
AS
BEGIN
	DECLARE @ID INT
END;

----------------------------------------------------

CREATE TRIGGER final.TRULI_MKT_Tabla3_Trigger3
	ON final.MKT_Tabla3
INSTEAD OF DELETE
AS
BEGIN
	DECLARE @ID INT
END;

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE INDEX ix_ARQ_Tabla1_Indice1
	ON final.ARQ_Tabla1 (intIdCampo1);
	
----------------------------------------------------	

CREATE INDEX ix_GEN_Tabla2_Indice2
	ON final.GEN_Tabla2 (intIdCampo1);
	
----------------------------------------------------	

CREATE INDEX ix_MKT_Tabla3_Indice3
	ON final.MKT_Tabla3 (intIdCampo1);
	
-----------------------------------------------------------------------------------------------------------------------------------------
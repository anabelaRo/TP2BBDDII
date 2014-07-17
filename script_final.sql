SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [GEN_Tabla2](
	[intIdCampo1] [int] NOT NULL,
	[varCampo2] [varchar](10) NULL,
	[datCampo3] [datetime] NULL,
	[bitCampo4] [bit] NULL,
	[decCampo5] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GEN_Tabla2_intIdCampo1] PRIMARY KEY CLUSTERED 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_datCampo3] UNIQUE NONCLUSTERED 
(
	[datCampo3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_ARQ_Tabla1_Indice1] ON [GEN_Tabla2] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_GEN_Tabla2_indice2] ON [GEN_Tabla2] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_GEN_Tabla2_Indice2] ON [GEN_Tabla2] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ixX_ARQ_Tabla1_Indice1] ON [GEN_Tabla2] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [v_GEN_Vista2]
AS 
	SELECT *
	FROM GEN_Tabla2;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [TRUDI_GEN_Tabla2_Trigger2]
	ON [GEN_Tabla2]
INSTEAD OF UPDATE
AS
BEGIN
	DECLARE @ID INT
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ARQ_Tabla1](
	[intIdCampo1] [int] NOT NULL,
	[varCampo2] [varchar](10) NULL,
	[datCampo3] [datetime] NULL,
	[bitCampo4] [bit] NULL,
	[decCampo5] [decimal](18, 0) NULL,
	[intNombre] [varchar](50) NULL,
 CONSTRAINT [PK_ARQ_Tabla2_intIdCampo1] PRIMARY KEY CLUSTERED 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_varCampo2] UNIQUE NONCLUSTERED 
(
	[varCampo2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_ARQ_Tabla1_Indice1] ON [ARQ_Tabla1] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_ARQ_Tabla1_test] ON [ARQ_Tabla1] 
(
	[datCampo3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_GEN_Tabla2_prueba] ON [ARQ_Tabla1] 
(
	[datCampo3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ixx_ARQ_Tabla2_prueba] ON [ARQ_Tabla1] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [v_ARQ_Vista1]
AS 
	SELECT *
	FROM ARQ_Tabla1;
GO
/****** Object:  Trigger [TRI_ARQ_Tabla1_Trigger1]    Script Date: 07/17/2014 16:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [TRI_ARQ_Tabla1_Trigger1]
	ON [ARQ_Tabla1]
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @ID INT
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [MKT_Tabla3](
	[intIdCampo1] [int] NOT NULL,
	[varCampo2] [varchar](10) NULL,
	[datCampo3] [datetime] NULL,
	[bitCampo4] [bit] NULL,
	[decCampo5] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MKT_Tabla3_intIdCampo1] PRIMARY KEY CLUSTERED 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_bitCampo4] UNIQUE NONCLUSTERED 
(
	[bitCampo4] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_MKT_abla3_Indice3] ON [MKT_Tabla3] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_MKT_Tabla3_Indice3] ON [MKT_Tabla3] 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_GENVista3]    Script Date: 07/17/2014 16:05:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [v_GENVista3]
AS 
	SELECT *
	FROM MKT_Tabla3;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [TRULI_MKT_Tabla3_Trigger3]
	ON [MKT_Tabla3]
INSTEAD OF DELETE
AS
BEGIN
	DECLARE @ID INT
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [FAL_Tabla4](
	[Campo1] [int] NOT NULL,
	[Campo2] [varchar](10) NULL,
	[Campo3] [datetime] NULL,
	[Campo4] [bit] NULL,
	[Campo5] [decimal](18, 0) NULL,
 CONSTRAINT [FAL_Tabla4_Campo1] PRIMARY KEY CLUSTERED 
(
	[Campo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Campo4] UNIQUE NONCLUSTERED 
(
	[Campo4] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT_Registro](
	[intIDLegajo] [int] NOT NULL,
	[intEdad] [int] NULL,
	[varDescripcion] [nvarchar](50) NULL,
	[datFechaNac] [date] NULL,
	[bitBool] [bit] NULL,
	[decRemuneracion] [decimal](10, 2) NULL,
 CONSTRAINT [PK_MKT_Registro_intIDLegajo] PRIMARY KEY CLUSTERED 
(
	[intIDLegajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_varDescripcion_datFechaNac] UNIQUE NONCLUSTERED 
(
	[varDescripcion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ARG_Tabla1](
	[intIdCampo1] [int] NOT NULL,
	[varCampo2] [varchar](10) NULL,
	[datCampo3] [datetime] NULL,
	[bitvampo4] [bit] NULL,
	[decCampo5] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ARQ_Tabla1_intIdCampo1] PRIMARY KEY CLUSTERED 
(
	[intIdCampo1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [alumno](
	[dni] [int] NOT NULL,
	[nombre] [nchar](30) NULL,
	[varApellido] [nchar](30) NULL,
	[datFecnac] [date] NULL,
 CONSTRAINT [PK_alumno_nombre2] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/***********/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [GEN_alumno](
	[dni] [int] NOT NULL,
	[nombre] [nchar](30) NULL,
	[varApellido] [varchar](30) NULL,
	[datFecnac] [date] NULL,
 CONSTRAINT [PK_alumno] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [p_PVN_Procedure1]
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [p_NAN_Procedure3]
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [p_WEB_Procedure2]
AS
BEGIN
	--
	DECLARE @DESCRIPCIONERROR VARCHAR(200)
	--
END;
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [WEB_notas](
	[Codigomat] [int] NOT NULL,
	[intDni] [int] NOT NULL,
	[intnota] [int] NULL,
 CONSTRAINT [PK_WEB_notas] PRIMARY KEY CLUSTERED 
(
	[Codigomat] ASC,
	[intDni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [VW_ListadoRegistro]
AS
SELECT intEdad AS Expr1
FROM  MKT_Registro
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [v_WEB_ListadoRegistro]
AS
SELECT decRemuneracion, intEdad, datFechaNac, varDescripcion
FROM     MKT_Registro
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [P_WEB_test]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from alumno
END
GO
/************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [P_WEB_notas]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from alumno
END
GO
/************/
ALTER TABLE [ARQ_Tabla1]  WITH CHECK ADD  CONSTRAINT [CK_datCampo3] CHECK  (([datCampo3]>'19000101'))
GO
ALTER TABLE [ARQ_Tabla1] CHECK CONSTRAINT [CK_datCampo3]
GO
/************/
ALTER TABLE [GEN_Tabla2]  WITH CHECK ADD  CONSTRAINT [CK_varCampo2] CHECK  (([varCampo2]<>'XXXXXXXXX'))
GO
ALTER TABLE [GEN_Tabla2] CHECK CONSTRAINT [CK_varCampo2]
GO
/************/
ALTER TABLE [MKT_Tabla3]  WITH CHECK ADD  CONSTRAINT [CK_decCampo5] CHECK  (([decCampo5]>(0)))
GO
ALTER TABLE [MKT_Tabla3] CHECK CONSTRAINT [CK_decCampo5]
GO
/************/
ALTER TABLE [FAL_Tabla4]  WITH CHECK ADD  CONSTRAINT [CK_Campo5] CHECK  (([Campo5]>(0)))
GO
ALTER TABLE [FAL_Tabla4] CHECK CONSTRAINT [CK_Campo5]
GO
/************/
ALTER TABLE [MKT_Registro]  WITH CHECK ADD  CONSTRAINT [CK_datFechaNac_intEdad] CHECK  (([datFechaNac]>='19000101' AND [intEdad]<(100)))
GO
ALTER TABLE [MKT_Registro] CHECK CONSTRAINT [CK_datFechaNac_intEdad]
GO
/***********/
ALTER TABLE [ARQ_Tabla1]  WITH CHECK ADD  CONSTRAINT [FK_ARQ_Tabla1_GEN_Tabla2] FOREIGN KEY([intIdCampo1])
REFERENCES [GEN_Tabla2] ([intIdCampo1])
GO
ALTER TABLE [ARQ_Tabla1] CHECK CONSTRAINT [FK_ARQ_Tabla1_GEN_Tabla2]
GO
/************/
ALTER TABLE [GEN_Tabla2]  WITH CHECK ADD  CONSTRAINT [FK_GEN_Tabla2_MKT_Tabla3] FOREIGN KEY([intIdCampo1])
REFERENCES [MKT_Tabla3] ([intIdCampo1])
GO
ALTER TABLE [GEN_Tabla2] CHECK CONSTRAINT [FK_GEN_Tabla2_MKT_Tabla3]
GO
/************/
ALTER TABLE [MKT_Tabla3]  WITH CHECK ADD  CONSTRAINT [FK_MKT_Tabla3_ARQ_Tabla1] FOREIGN KEY([intIdCampo1])
REFERENCES [ARQ_Tabla1] ([intIdCampo1])
GO
ALTER TABLE [MKT_Tabla3] CHECK CONSTRAINT [FK_MKT_Tabla3_ARQ_Tabla1]
GO
/************/
ALTER TABLE [FAL_Tabla4]  WITH CHECK ADD  CONSTRAINT [FK_FAL_Tabla4_MKT_Tabla3] FOREIGN KEY([Campo1])
REFERENCES [MKT_Tabla3] ([intIdCampo1])
GO
ALTER TABLE [FAL_Tabla4] CHECK CONSTRAINT [FK_FAL_Tabla4_MKT_Tabla3]
GO
/****** Object:  ForeignKey [FK_WEB_general_alumnos]    Script Date: 07/17/2014 16:05:17 ******/
ALTER TABLE [WEB_notas]  WITH CHECK ADD  CONSTRAINT [FK_WEB_general_alumnos] FOREIGN KEY([Codigomat], [intDni])
REFERENCES [WEB_notas] ([Codigomat], [intDni])
GO
ALTER TABLE [WEB_notas] CHECK CONSTRAINT [FK_WEB_general_alumnos]
GO

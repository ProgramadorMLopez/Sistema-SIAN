/************************************************************************/
/* Stored procedure: sp_ingreso_clientes								*/
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 09/08/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*        INGRESOS, ACTUALIZACION E ELIMINACION DE CLIENTES				*/
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_ingreso_clientes')
	DROP PROCEDURE sp_ingreso_clientes
GO
CREATE PROCEDURE sp_ingreso_clientes
(
		@id_proceso INT = NULL,
		@nombreCompleto VARCHAR(60) = NULL,
		@direccion VARCHAR(100) = NULL,
		@telefono VARCHAR(20) = NULL,
		@descripcion VARCHAR(100) = NULL,
		@id_cliente INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

IF @id_proceso = 1 --INSERT
	BEGIN
		INSERT INTO tclientes SELECT @nombreCompleto,@direccion,@telefono,@descripcion,getdate() 
	END

ELSE IF @id_proceso = 2 --UPDATE
	BEGIN
		UPDATE tclientes SET 
		txt_dir = @direccion,
		txt_tel = @telefono,
		txt_desc = @descripcion
		WHERE id_clientes = @id_cliente
	END

ELSE IF @id_proceso = 3 --DELETE
	BEGIN
		DELETE FROM tclientes 
		WHERE id_clientes = @id_cliente
	END

IF @@error <> 0 
	BEGIN  
		IF @id_proceso = 1
			RAISERROR (' Error al insertar tclientes ', 16, 1)  
		ELSE IF @id_proceso = 2
			RAISERROR (50014, 16, 1, ' Error al actualizar tclientes ')
		ELSE IF @id_proceso = 3
			RAISERROR (50014, 16, 1, ' Error al eliminar tclientes ')
		RETURN -1
	END

SELECT '',
	   id_clientes Cliente,
	   txt_nombre_completo NombreCompleto,
	   txt_dir Direccion,
	   txt_tel Telefono,
	   txt_desc Descripcion,
	   CONVERT(DATE,fecha_ingreso) Fecha_Alta
FROM tclientes
	ORDER BY id_clientes ASC

RETURN 0  	
END



/************************************************************************/
/* Stored procedure: SP_ADICIONALES										*/
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 8/08/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*        INGRESOS, ACTUALIZACION E ELIMINACION DE ADCIONALES			*/
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_adicionales')
	DROP PROCEDURE sp_adicionales
GO
CREATE PROCEDURE sp_adicionales
(
		@id_proceso INT = NULL,
		@descripcion VARCHAR(60) = NULL,
		@precio NUMERIC(10,2) = NULL,
		@id_adc INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

IF @id_proceso = 1 --INSERT
	BEGIN
		INSERT INTO tadicionales SELECT @descripcion,@precio
	END

ELSE IF @id_proceso = 2 --UPDATE
	BEGIN
		UPDATE tadicionales SET 
		descripcion = @descripcion,
		precio_v = @precio
		WHERE id_adicionales = @id_adc
	END

ELSE IF @id_proceso = 3 --DELETE
	BEGIN
		DELETE FROM tadicionales 
		WHERE id_adicionales = @id_adc
	END
IF @@error <> 0 
	BEGIN  
		IF @id_proceso = 1
			RAISERROR (' Error al insertar tadicionales ', 16, 1)  
		ELSE IF @id_proceso = 2
			RAISERROR (50014, 16, 1, ' Error al actualizar tadicionales ')
		ELSE IF @id_proceso = 3
			RAISERROR (50014, 16, 1, ' Error al eliminar tadicionales ')
		RETURN -1
	END

SELECT '',
	   id_adicionales Adicional,
	   descripcion Descripcion,
	   CONCAT('$ ',precio_v) Precio
FROM tadicionales
	ORDER BY id_adicionales ASC

RETURN 0  	
END



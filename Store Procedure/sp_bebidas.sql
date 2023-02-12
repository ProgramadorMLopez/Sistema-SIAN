/************************************************************************/
/* Stored procedure: SP_BEBIDAS									    */
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 19/07/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*           INGRESOS DE CATEGORIAS										*/
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_bebidas')
	DROP PROCEDURE sp_bebidas
GO
CREATE PROCEDURE sp_bebidas
(
		@descripcion VARCHAR(60) = NULL,
		@precio numeric(10,2) = NULL,
		@proceso INT = NULL,
		@id_bebidas INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

IF @proceso = 1
	BEGIN
		INSERT INTO tbebidas SELECT @descripcion,@precio
	END
ELSE IF @proceso = 2
	BEGIN
		UPDATE tbebidas SET precio_v = @precio WHERE id_bebidas = @id_bebidas
	END	
ELSE IF @proceso = 3
	BEGIN
		DELETE FROM tbebidas WHERE id_bebidas = @id_bebidas
	END
IF @@error <> 0 
	BEGIN  
		IF @proceso = 1
			RAISERROR (' Error al insertar tbebidas ', 16, 1)
		ELSE IF @proceso = 2
			RAISERROR (50014, 16, 1, ' Error al actualizar tbebidas ')
		ELSE IF @proceso = 3
			RAISERROR (50014, 16, 1, ' Error al eliminar tbebidas ')
		RETURN -1
	END

SELECT '',id_bebidas,descripcion,CONCAT('$',precio_v)precio FROM tbebidas ORDER BY id_bebidas ASC

RETURN 0
END


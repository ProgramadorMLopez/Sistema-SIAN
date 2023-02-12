/************************************************************************/
/* Stored procedure: SP_CATEGORIA									    */
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

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_categoria')
	DROP PROCEDURE sp_categoria
GO
CREATE PROCEDURE sp_categoria
(
		@categoriaTXT VARCHAR(60) = NULL,
		@proceso INT = NULL,
		@id_categoria INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

IF @proceso = 1
	BEGIN
		INSERT INTO tcategorias_menu SELECT @categoriaTXT
	END
ELSE IF @proceso = 2
	BEGIN
		UPDATE tcategorias_menu SET descripcion = @categoriaTXT WHERE id_categoria = @id_categoria
	END	
ELSE IF @proceso = 3
	BEGIN
		DELETE FROM tcategorias_menu WHERE id_categoria = @id_categoria
	END
IF @@error <> 0 
	BEGIN  
		IF @proceso = 1
			RAISERROR (' Error al insertar tcategorias_menu ', 16, 1)
		ELSE IF @proceso = 2
			RAISERROR (50014, 16, 1, ' Error al actualizar tmenu ')
		ELSE IF @proceso = 3
			RAISERROR (50014, 16, 1, ' Error al eliminar tmenu ')
		RETURN -1
	END

SELECT '',id_categoria,descripcion FROM tcategorias_menu ORDER BY id_categoria ASC

RETURN 0
END


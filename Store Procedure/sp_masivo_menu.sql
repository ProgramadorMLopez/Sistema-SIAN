/************************************************************************/
/* Stored procedure: SP_MASIVO_MENU										*/
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 10/07/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*           INGRESOS, ACTUALIZACION E ELIMINACION DE MENUS				*/
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_masivo_menu')
	DROP PROCEDURE sp_masivo_menu
GO
CREATE PROCEDURE sp_masivo_menu
(
		@id_proceso INT = NULL,
		@descripcion_menu VARCHAR(60) = NULL,
		@precio_v NUMERIC(10,2) = NULL,
		@id_categoria INT = NULL,
		@sn_activo BIT = 1,
		@id_menu INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

IF @id_proceso = 1 --INSERT
	BEGIN
		INSERT INTO tmenu SELECT @descripcion_menu,@precio_v,@sn_activo,@id_categoria,getdate() 
		--DECLARE @MenuID INT
		--SET @MenuID = SCOPE_IDENTITY() --obtengo el id
		--SELECT descripcion FROM tmenu WHERE id_menu = @MenuID
	END

ELSE IF @id_proceso = 2 --UPDATE
	BEGIN
		UPDATE tmenu SET 
		descripcion = @descripcion_menu,
		precio_v = @precio_v,
		sn_activo = @sn_activo 
		WHERE id_menu = @id_menu
	END

ELSE IF @id_proceso = 3 --DELETE
	BEGIN
		DELETE FROM tmenu 
		WHERE id_menu = @id_menu
	END

IF @@error <> 0 
	BEGIN  
		IF @id_proceso = 1
			RAISERROR (' Error al insertar tmenu ', 16, 1)  
		ELSE IF @id_proceso = 2
			RAISERROR (50014, 16, 1, ' Error al actualizar tmenu ')
		ELSE IF @id_proceso = 3
			RAISERROR (50014, 16, 1, ' Error al eliminar tmenu ')
		RETURN -1
	END

SELECT '',
	   id_menu Menu,
	   descripcion Descripcion,
	   CONCAT('$ ',precio_v) Precio,
	   CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,
	   id_categoria Categoria,
	   CONVERT(DATE,fec_proceso) Fecha
FROM tmenu WHERE sn_activo = 1
	ORDER BY id_menu ASC

RETURN 0  	
END



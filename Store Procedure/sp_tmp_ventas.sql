/************************************************************************/
/* Stored procedure: sp_tmp_ventas										*/
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 14/08/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*             VENTAS antes de pasar a las reales			            */
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/
/************************************************************************
TRUNCATE TABLE TMPventas
	SELECT * FROM TMPventas
TRUNCATE TABLE TMPSaldo
	SELECT * FROM TMPSaldo 
BEGIN TRAN 
	EXEC sp_tmp_ventas 1,1,9,1,NULL,NULL,NULL 
ROLLBACK
BEGIN TRAN 
	EXEC sp_tmp_ventas 1,NULL,NULL,NULL,NULL,NULL,NULL 
ROLLBACK
begin tran
exec SP_VENTAS 1,1,null,null,null,null,null,null,null,null,null
rollback
************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_tmp_ventas')
	DROP PROCEDURE sp_tmp_ventas
GO
CREATE PROCEDURE sp_tmp_ventas
(
@nro_factura INT,
@id_menu INT = NULL,
@id_adicional INT = NULL,
@id_adicional_papas INT = NULL,
@id_bebidas INT = NULL,
@cant INT = NULL,
@id_venta INT = NULL
)

AS

DECLARE @totalMenu NUMERIC(10,2) = NULL
DECLARE @totalAdicionales NUMERIC(10,2) = NULL
DECLARE @totalAdicionalesPF NUMERIC(10,2) = NULL
DECLARE @totalBebidas NUMERIC(10,2) = NULL
DECLARE @total NUMERIC(10,2) = NULL

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN
	DELETE FROM TMP_errores_carga

	IF @id_venta IS NOT NULL --AND @id_menu IS NOT NULL OR @id_adicional IS NOT NULL OR @id_adicional_papas IS NOT NULL OR @id_bebidas IS NOT NULL
		BEGIN
			UPDATE TMPSaldo SET total = total - (SELECT B.precio_v  FROM TMPventas A LEFT JOIN tmenu B ON B.id_menu = A.menu where a.id_ventas = @id_venta)
			DELETE FROM TMPventas WHERE id_ventas = @id_venta
			PRINT 'SE BORRO EL ID DE VENTA: ' + CONVERT(VARCHAR(5),@id_venta)
		END
	ELSE 
		BEGIN
			IF @id_menu IS NOT NULL OR @id_bebidas IS NOT NULL
				BEGIN
					INSERT INTO TMPventas SELECT @nro_factura,@id_menu,@id_adicional,@id_adicional_papas,@id_bebidas,@cant,GETDATE()

					SELECT 
						@totalMenu = SUM(ISNULL(B.precio_v, 0)),
						@totalAdicionales = SUM(ISNULL(C.precio_v, 0)),
						@totalAdicionalesPF = SUM(ISNULL(C1.precio_v, 0)),
						@totalBebidas = SUM(ISNULL(D.precio_v * A.cant,0))
					FROM TMPventas A 
						LEFT JOIN tmenu B ON B.id_menu = A.menu
						LEFT JOIN tadicionales C ON C.id_adicionales = A.adicional 
						LEFT JOIN tadicionales C1 ON C1.id_adicionales = A.adicionalP --se agrego adicionales de PF
						LEFT JOIN tbebidas D ON D.id_bebidas = A.bebidas
					WHERE A.nro_factura = @nro_factura

					--SELECT @totalMenu,@totalAdicionales,@totalAdicionalesPF,@totalBebidas
					--SELECT @totalMenu = -1000

					IF (@totalMenu >= 0) AND
					   (@totalAdicionales >= 0) AND
					   (@totalAdicionalesPF >= 0) AND
					   (@totalBebidas >= 0)
						BEGIN
							SELECT @total = @totalMenu + @totalAdicionales + @totalAdicionalesPF + @totalBebidas

							IF (SELECT COUNT(1) FROM TMPSaldo WHERE nro_factura = @nro_factura) = 0
								BEGIN
									IF @total IS NOT NULL 
										BEGIN
											INSERT INTO TMPSaldo SELECT @nro_factura,NULL,NULL,@total
										END
								END
							ELSE
								BEGIN
									UPDATE TMPSaldo SET total = @total WHERE nro_factura = @nro_factura
								END
						END
					ELSE
						BEGIN
							INSERT TMP_errores_carga 
							SELECT @@SPID,
								   @nro_factura,
								   'Error en el importe de ventas',
								   1     

							DELETE FROM TMPventas WHERE id_ventas = (SELECT MAX(id_ventas) FROM TMPventas)
						END 
				END
		END
	--SELECT 1 FROM TMP_errores_carga
	IF (SELECT COUNT(1) FROM TMP_errores_carga) = 0
		BEGIN
			SELECT 
				'',
				A.id_ventas,
				B.descripcion Menus,
				CASE WHEN B.precio_v IS NULL 
					 THEN CONCAT('$ ',0.00) 
					 ELSE CONCAT('$ ',B.precio_v) END  Precio,
				C.descripcion Adicionales,
				CASE WHEN C.precio_v IS NULL 
					 THEN CONCAT('$ ',0.00) 
					 ELSE CONCAT('$ ',C.precio_v) END  Precio_AD,
				C1.descripcion AdicionalesP,
				CASE WHEN C1.precio_v IS NULL 
					 THEN CONCAT('$ ',0.00) 
					 ELSE CONCAT('$ ',C1.precio_v) END  Precio_ADP,
				D.descripcion Bebidas,
				CASE WHEN D.precio_v IS NULL 
					 THEN CONCAT('$ ',0.00) 
					 ELSE CONCAT('$ ',D.precio_v) END  Precio_B,
				A.cant Bebidas_Cantidad
			FROM TMPventas A 
				LEFT JOIN tmenu B ON B.id_menu =A.menu
				LEFT JOIN tadicionales C ON C.id_adicionales = A.adicional
				LEFT JOIN tadicionales C1 ON C1.id_adicionales = A.adicionalP
				LEFT JOIN tbebidas D ON D.id_bebidas = A.bebidas
			WHERE A.nro_factura = @nro_factura
			GROUP BY 
				A.id_ventas,
				A.nro_factura,
				B.descripcion,
				B.precio_v,
				C.descripcion,
				C.precio_v,
				C1.descripcion,
				C1.precio_v,
				D.descripcion,
				D.precio_v,A.cant
			ORDER BY 
				A.id_ventas
		END
	ELSE
		BEGIN
			SELECT 999,CONVERT(VARCHAR(12),spid) + ' - ' + txt_desc AS Message_Err, SPID FROM TMP_errores_carga
		END

END
--SELECT * FROM TMPSaldo
RETURN 0
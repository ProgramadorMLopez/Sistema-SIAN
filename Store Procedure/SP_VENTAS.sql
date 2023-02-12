/************************************************************************/
/* Stored procedure: SP_VENTAS										*/
/* Base de datos: desarrollo											*/
/* Disenado por: Marcos Antonio Lopez									*/
/* Fecha de escritura: 14/08/2022										*/
/************************************************************************/
/*							PROPOSITO									*/
/*																		*/
/*                           VENTAS				                        */
/************************************************************************/
/* MODIFICACIONES														*/
/* FECHA AUTOR RAZON													*/
/*																		*/
/************************************************************************/

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_VENTAS')
	DROP PROCEDURE SP_VENTAS
GO
CREATE PROCEDURE SP_VENTAS
(
@id_tmp INT = NULL,
@nro_factura INT,
@id_cliente INT = NULL,
@id_menu INT = NULL,
@id_adicional INT = NULL,
@id_adicional_papas INT = NULL,
@id_bebidas INT = NULL,
@cant INT = NULL,
@envio NUMERIC(10,2) =NULL,
@forma_pago_uno INT = NULL,
@forma_pago_dos INT = NULL,
@id_venta INT = NULL,
@imp_uno NUMERIC(10,2) = NULL,
@imp_dos NUMERIC(10,2) = NULL,
@pagaCon NUMERIC(10,2) = NULL,
@horario time(0) = NULL,
@comentario VARCHAR(100) = NULL,
@mov_entrega INT = NULL
)

AS


DECLARE @impM NUMERIC(10,2) = NULL
DECLARE @impA NUMERIC(10,2) = NULL
DECLARE @impAP NUMERIC(10,2) = NULL
DECLARE @impB NUMERIC(10,2) = NULL
DECLARE @imp_total NUMERIC(10,2) = NULL
DECLARE @imp_final NUMERIC(10,2) = NULL

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN

SET @imp_total = 0

IF @id_tmp = 1 --DATOS TMP
	BEGIN
		EXEC sp_tmp_ventas @nro_factura,@id_menu,@id_adicional,@id_adicional_papas,@id_bebidas,@cant,@id_venta
	END
ELSE
	BEGIN
-------------------------------DATOS REALES-------------------------------------------------
		SELECT 
		@impM = SUM(ISNULL(B.precio_v, 0)) 
		FROM TMPventas A 
		LEFT JOIN tmenu B ON B.id_menu =A.menu
		WHERE A.nro_factura = @nro_factura

		SELECT 
		@impA = SUM(ISNULL(B.precio_v, 0)) 
		FROM TMPventas A 
		LEFT JOIN tadicionales B ON B.id_adicionales = A.adicional
		WHERE A.nro_factura = @nro_factura

		SELECT 
		@impAP = SUM(ISNULL(B.precio_v, 0)) 
		FROM TMPventas A 
		LEFT JOIN tadicionales B ON B.id_adicionales = A.adicionalP
		WHERE A.nro_factura = @nro_factura

		SELECT 
		@impB = SUM(ISNULL(D.precio_v * A.cant,0))
		FROM TMPventas A 
		LEFT JOIN tbebidas D ON D.id_bebidas = A.bebidas
		WHERE A.nro_factura = @nro_factura

		SELECT @imp_total = SUM(@impM + @impA + @impAP + @impB)

		--INGRESO DE CLIENTES 
		INSERT INTO venta_x_clientes SELECT @id_cliente,@nro_factura

		--INGRESO DE VENTAS
		INSERT INTO ventas SELECT nro_factura,MENU,adicional,adicionalP,bebidas,cant,fec_emision FROM TMPventas

		--FORMAS DE PAGO
		INSERT INTO cerrar_venta SELECT @nro_factura,@envio,@imp_total,@forma_pago_uno,@imp_uno,@forma_pago_dos,@imp_dos
		SELECT @imp_final = SUM(@envio + @imp_total) FROM cerrar_venta WHERE nro_factura = @nro_factura

		--PEDIDOS
		--IF @horario = '00:00:00' 
		IF @mov_entrega = 1 --DELIVERI
			BEGIN
				--IMPORTE FINAL
				IF @horario = '00:00:00' 
					BEGIN
						INSERT INTO pago_venta SELECT @nro_factura,@imp_final,@pagaCon,@horario,@comentario,1,0,'DELIVERI SIN HORARIO'
					END
				ELSE
					BEGIN
						INSERT INTO pago_venta SELECT @nro_factura,@imp_final,@pagaCon,@horario,@comentario,1,0,'DELIVERI A LAS ' + CONVERT(VARCHAR(20),@horario)
					END
			END
		ELSE
			BEGIN
				IF @horario = '00:00:00' 
					BEGIN
						INSERT INTO pago_venta SELECT @nro_factura,@imp_final,@pagaCon,@horario,@comentario,0,0,'RETIRO INMEDIATO'
					END
				ELSE
					BEGIN
						INSERT INTO pago_venta SELECT @nro_factura,@imp_final,@pagaCon,@horario,@comentario,1,0,(CASE WHEN @horario = '00:00:00' THEN 'RETIRO SIN HORARIO' ELSE (SELECT 'RETIRO A LAS ' + CONVERT(VARCHAR(20),@horario)) END) 
					END
			END 

		UPDATE nro_factura SET factura = (SELECT SUM(factura + 1) FROM nro_factura)
		DELETE FROM TMPventas
		DELETE FROM TMPSaldo

		SELECT CONCAT('SE REALIZO LA VENTA CORRECTAMENTE DE LA FACTURA ', @nro_factura) AS Mensaje_Venta

	END

END
RETURN 0


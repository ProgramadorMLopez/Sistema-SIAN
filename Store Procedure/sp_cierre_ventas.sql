--select count(1) from pago_venta where cierre = 0 and pedidos = 0
--SELECT * FROM pago_venta
--SELECT * FROM cerrar_venta
--select sum(total) from pago_venta where cierre = 0 and pedidos = 0
--insert into cierre_caja select sum(total),getdate() from pago_venta where pedidos = 0 and cierre = 0
--update pago_venta set cierre = 1 where cierre = 0 and pedidos = 0

exec sp_cierre_ventas

IF EXISTS (SELECT 1
           FROM   SYSOBJECTS
           WHERE  NAME LIKE 'sp_cierre_ventas'
                  AND XTYPE = 'P')
  DROP PROCEDURE [dbo].[sp_cierre_ventas]

GO

CREATE PROCEDURE sp_cierre_ventas


AS

DECLARE @cant AS INTEGER
DECLARE @imp_total AS NUMERIC(10,2)
DECLARE @imp_EF_A AS NUMERIC(10,2)
DECLARE @imp_EF_B AS NUMERIC(10,2)
DECLARE @imp_MP_A AS NUMERIC(10,2)
DECLARE @imp_MP_B AS NUMERIC(10,2)

--DECLARE @id_menu AS INT
--DECLARE @menu AS VARCHAR(30)
--DECLARE @cantM AS INT
--DECLARE @id_adicionales AS INT
--DECLARE @adicionales AS VARCHAR(30)
--DECLARE @cantA AS INT
--DECLARE @id_adicionalesP AS INT
--DECLARE @adicionalesP AS VARCHAR(30)
--DECLARE @cantAP AS INT
--DECLARE @id_bebidas AS INT
--DECLARE @bebidas AS VARCHAR(30)
--DECLARE @cantB AS INT

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN 
	DELETE FROM sp_err
	DELETE FROM TMP_MENU
	DELETE FROM TMP_ADICIONALES
	DELETE FROM TMP_ADICIONALESP
	DELETE FROM TMP_BEBIDAS

	IF (SELECT COUNT(1) FROM pago_venta WHERE cierre = 0 AND pedidos = 0) > 0
		BEGIN

			/*******************************************************************/
			/*CANTIDAD DE VENTAS POR CADA MENU, ADICIONAL, ADICINALES POR PAPAS, BEBIDAS*/
			--MENU
			INSERT INTO TMP_MENU
			SELECT
			B.id_menu,
			B.descripcion,
			COUNT(A.MENU),
			B.precio_v
			FROM VENTAS A 
			JOIN tmenu B ON B.id_menu =A.menu
			JOIN pago_venta P ON P.nro_factura = A.nro_factura
			WHERE B.descripcion IS NOT NULL AND P.cierre = 0
			GROUP BY menu,B.descripcion,B.id_menu,B.precio_v
			 
			--ADICIONALES
			INSERT INTO TMP_ADICIONALES
			SELECT 
			C.id_adicionales,
			C.descripcion,
			COUNT(A.adicional),
			C.precio_v
			FROM VENTAS A 
			JOIN tadicionales C ON C.id_adicionales = A.adicional
			JOIN pago_venta P ON P.nro_factura = A.nro_factura
			WHERE C.descripcion IS NOT NULL AND P.cierre = 0
			GROUP BY adicional,C.descripcion,C.id_adicionales,C.precio_v

			--ADICIONALES DE PAPAS
			INSERT INTO TMP_ADICIONALESP
			SELECT
			C.id_adicionales,
			C.descripcion,
			COUNT(A.adicionalP),
			C.precio_v
			FROM VENTAS A 
			JOIN tadicionales C ON C.id_adicionales = A.adicionalP
			JOIN pago_venta P ON P.nro_factura = A.nro_factura
			WHERE C.descripcion IS NOT NULL AND P.cierre = 0
			GROUP BY adicionalP,C.descripcion,C.id_adicionales,C.precio_v

			--BEBIDAS
			INSERT INTO TMP_BEBIDAS
			SELECT 
			D.id_bebidas,
			D.descripcion,
			--(SELECT SUM(A1.cant) FROM VENTAS A1 WHERE A1.BEBIDAS = A.BEBIDAS)
			SUM(a.cant),
			D.precio_v
			FROM VENTAS A 
			JOIN tbebidas D ON D.id_bebidas = A.bebidas
			JOIN pago_venta P ON P.nro_factura = A.nro_factura
			WHERE D.descripcion IS NOT NULL AND P.cierre = 0
			GROUP BY bebidas,D.descripcion,D.id_bebidas,D.precio_v

			/*******************************************************************/
			/*IMPORTES DE VENTAS CON DIFERENTES PAGOS Y TOTAL DE CIERRE DE CAJA*/
			SELECT @imp_total = SUM(total) --TOTAL
			FROM pago_venta 
			WHERE cierre = 0 AND pedidos = 0

			SELECT @imp_EF_A = SUM(PPagoA) --EFECTIVO_PAGO_A
			FROM pago_venta A 
			INNER JOIN cerrar_venta B ON B.nro_factura = A.nro_factura
			WHERE A.cierre = 0 AND A.pedidos = 0 AND B.formaPagoA = 1
			GROUP BY B.formaPagoA

			SELECT @imp_MP_A = SUM(PPagoA) --MP_PAGO_A
			FROM pago_venta A 
			INNER JOIN cerrar_venta B ON B.nro_factura = A.nro_factura
			WHERE A.cierre = 0 AND A.pedidos = 0 AND B.formaPagoA = 2
			GROUP BY B.formaPagoA

			SELECT @imp_EF_B = SUM(PPagoB) --EFECTIVO_PAGO_B
			FROM pago_venta A 
			INNER JOIN cerrar_venta B ON B.nro_factura = A.nro_factura
			WHERE A.cierre = 0 AND A.pedidos = 0 AND  B.formaPagoB = 1
			GROUP BY B.formaPagoB

			SELECT @imp_MP_B = SUM(PPagoB) --MP_PAGO_B
			FROM pago_venta A 
			INNER JOIN cerrar_venta B ON B.nro_factura = A.nro_factura
			WHERE  A.cierre = 0 AND A.pedidos = 0 AND B.formaPagoB = 2
			GROUP BY B.formaPagoB
			
			INSERT INTO cierre_caja 
			SELECT 
			SUM(total),
			GETDATE() 
			FROM pago_venta 
			WHERE pedidos = 0 AND cierre = 0

			UPDATE pago_venta 
			SET cierre = 1 
			WHERE cierre = 0 
			  AND pedidos = 0

			SELECT 
				'CIERRE FINALIZADO',
				@imp_total TOTAL,
				SUM(ISNULL(@imp_EF_A,0) + ISNULL(@imp_EF_B,0)) EFECTIVO,
				SUM(ISNULL(@imp_MP_A,0) + ISNULL(@imp_MP_B,0)) MERCADO_PAGO
				
			
		END
	ELSE IF (select count(1) from pago_venta where cierre = 0 and pedidos = 1) > 0
		BEGIN
			INSERT sp_err
			SELECT @@SPID,
				   1,
				   'No se permite cerrar caja si aun posee ventas pendientes',
				   GETDATE()

			SELECT 'ERROR',CONCAT(spid,'-',txt_desc) FROM sp_err
		END
	ELSE
		BEGIN
			INSERT sp_err
			SELECT @@SPID,
				   2,
				   'Error en el cierre de caja',
				   GETDATE()

			SELECT 'ERROR',CONCAT(spid,'-',txt_desc) FROM sp_err
		END
END

RETURN 0

GO
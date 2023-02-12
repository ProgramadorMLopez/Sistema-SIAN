/*
VERIFICAR SI ESTA CREADA LA TABLA TEMP SI NONLA ESTA LA ELIMINA 
*/

IF EXISTS (SELECT 1
           FROM   SYSOBJECTS
           WHERE  NAME LIKE 'sp_busqueda_cierre'
                  AND XTYPE = 'P')
  DROP PROCEDURE [dbo].[sp_busqueda_cierre]

GO

CREATE PROCEDURE sp_busqueda_cierre
(
@fecha_desde DATE = NULL,
@fecha_hasta DATE = NULL
)

AS

DECLARE @cant AS INTEGER
DECLARE @imp_total AS NUMERIC(10,2)
DECLARE @imp_EF_A AS NUMERIC(10,2)
DECLARE @imp_EF_B AS NUMERIC(10,2)
DECLARE @imp_MP_A AS NUMERIC(10,2)
DECLARE @imp_MP_B AS NUMERIC(10,2)

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN 
	DELETE FROM sp_err
	DELETE FROM TMP_MENU
	DELETE FROM TMP_ADICIONALES
	DELETE FROM TMP_ADICIONALESP
	DELETE FROM TMP_BEBIDAS

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
	WHERE B.descripcion IS NOT NULL AND a.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
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
	WHERE C.descripcion IS NOT NULL AND a.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
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
	WHERE C.descripcion IS NOT NULL AND a.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
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
	WHERE D.descripcion IS NOT NULL AND a.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY bebidas,D.descripcion,D.id_bebidas,D.precio_v

	/*******************************************************************/
	/*IMPORTES DE VENTAS CON DIFERENTES PAGOS Y TOTAL DE CIERRE DE CAJA*/

	--TOTAL

	SELECT (SELECT SUM(p.TOTAL) 
			FROM pago_venta p 
			WHERE p.nro_factura = pv.nro_factura 
			GROUP BY p.nro_factura) Total
	INTO TMP_PAGO_VENTA
	FROM pago_venta PV
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY PV.nro_factura

	SELECT @imp_total = SUM(Total) FROM TMP_PAGO_VENTA

	--EFECTIVO_PAGO_A

	SELECT CV.PPagoA EFECTIVO_PAGO_A
	INTO TMP_PAGO_EF
	FROM pago_venta PV 
	JOIN cerrar_venta CV ON CV.nro_factura = PV.nro_factura
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE CV.formaPagoA = 1 AND VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY PV.nro_factura,CV.PPagoA

	SELECT @imp_EF_A = SUM(EFECTIVO_PAGO_A) FROM TMP_PAGO_EF 
	
	--MP_PAGO_A

	SELECT CV.PPagoA MERCADO_P_PAGO_A
	INTO TMP_PAGO_MP
	FROM pago_venta PV 
	JOIN cerrar_venta CV ON CV.nro_factura = PV.nro_factura
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE CV.formaPagoA = 2 AND VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY PV.nro_factura,CV.PPagoA

	SELECT @imp_MP_A = SUM(MERCADO_P_PAGO_A) FROM TMP_PAGO_MP 

	---ACA ABAJO
	--EFECTIVO_PAGO_B

	SELECT CV.PPagoB EFECTIVO_PAGO_B
	INTO TMP_PAGO_EF_B
	FROM pago_venta PV 
	JOIN cerrar_venta CV ON CV.nro_factura = PV.nro_factura
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE CV.formaPagoB = 1 AND VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY PV.nro_factura,CV.PPagoB

	SELECT @imp_EF_B = SUM(EFECTIVO_PAGO_B) FROM TMP_PAGO_EF_B 
	
	--MP_PAGO_B

	SELECT CV.PPagoB MERCADO_P_PAGO_B
	INTO TMP_PAGO_MP_B
	FROM pago_venta PV 
	JOIN cerrar_venta CV ON CV.nro_factura = PV.nro_factura
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE CV.formaPagoB = 2 AND VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta
	GROUP BY PV.nro_factura,CV.PPagoB

	SELECT @imp_MP_B = SUM(MERCADO_P_PAGO_B) FROM TMP_PAGO_MP_B

	INSERT INTO cierre_caja 
	SELECT 
	SUM(total),
	GETDATE() 
	FROM pago_venta PV
	JOIN ventas VT ON VT.nro_factura = PV.nro_factura
	WHERE VT.fec_emision BETWEEN @fecha_desde AND @fecha_hasta


	SELECT 
		'CIERRE FINALIZADO',
		@imp_total TOTAL,
		SUM(ISNULL(@imp_EF_A,0) + ISNULL(@imp_EF_B,0)) EFECTIVO,
		SUM(ISNULL(@imp_MP_A,0) + ISNULL(@imp_MP_B,0)) MERCADO_PAGO
	
	DROP TABLE TMP_PAGO_VENTA
	DROP TABLE TMP_PAGO_EF
	DROP TABLE TMP_PAGO_MP
	DROP TABLE TMP_PAGO_EF_B
	DROP TABLE TMP_PAGO_MP_B
END

RETURN 0

GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_recaudacion')
	DROP PROCEDURE sp_recaudacion
GO
CREATE PROCEDURE sp_recaudacion
(
@proceso INT,
@fecha_desde DATE = NULL,
@fecha_hasta DATE = NULL
)

AS

DECLARE @EFECTIVO NUMERIC(10,2) 
DECLARE @MP NUMERIC(10,2) 
DECLARE @EFECTIVO1 NUMERIC(10,2) 
DECLARE @MP1 NUMERIC(10,2) 
DECLARE @EFECTIVO_TOTAL NUMERIC(10,2) 
DECLARE @MP1_TOTAL NUMERIC(10,2) 
DECLARE @TOTAL NUMERIC(10,2) 

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

IF @proceso = 1 
	BEGIN
		SELECT @EFECTIVO = ISNULL(SUM(PPagoA),0) FROM cerrar_venta WHERE formaPagoA = 1 

		SELECT @EFECTIVO = @EFECTIVO + ISNULL(SUM(PPagoB),0) FROM cerrar_venta WHERE formaPagoB = 1 

		SELECT @MP = ISNULL(SUM(PPagoA),0) FROM cerrar_venta WHERE formaPagoA = 2 

		SELECT @MP = @MP + ISNULL(SUM(PPagoB),0) FROM cerrar_venta WHERE formaPagoB = 2 

		SELECT @TOTAL = @EFECTIVO + @MP

		SELECT @EFECTIVO 'Efectivo',
			   @MP 'Mercado Pago',
			   @TOTAL 'Total'
	END
ELSE
	BEGIN
	---------------------------------------------------------------------------------------
		SELECT DISTINCT A.nro_factura,A.PPagoA INTO #tmp_efectivo_A FROM cerrar_venta A
		INNER JOIN ventas B ON B.nro_factura = A.nro_factura
		WHERE formaPagoA = 1 AND B.fec_emision BETWEEN @fecha_desde AND @fecha_hasta

		SELECT @EFECTIVO = SUM(PPagoA) FROM #tmp_efectivo_A

		SELECT DISTINCT A.nro_factura,A.PPagoB INTO #tmp_efectivo_B FROM cerrar_venta A
		INNER JOIN ventas B ON B.nro_factura = A.nro_factura
		WHERE formaPagoB = 1 AND B.fec_emision BETWEEN @fecha_desde AND @fecha_hasta

		SELECT @EFECTIVO1 = SUM(PPagoB) FROM #tmp_efectivo_B

		SELECT @EFECTIVO_TOTAL = SUM(ISNULL(@EFECTIVO,0) + ISNULL(@EFECTIVO1,0))

	---------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------
		SELECT DISTINCT A.nro_factura,A.PPagoA INTO #tmp_mp_A FROM cerrar_venta A
		INNER JOIN ventas B ON B.nro_factura = A.nro_factura
		WHERE formaPagoA = 2 and B.fec_emision BETWEEN @fecha_desde AND @fecha_hasta

		SELECT @MP = SUM(PPagoA) FROM #tmp_mp_A

		SELECT DISTINCT A.nro_factura,A.PPagoB INTO #tmp_mp_B FROM cerrar_venta A
		INNER JOIN ventas B ON B.nro_factura = A.nro_factura
		WHERE formaPagoB = 2 and B.fec_emision BETWEEN @fecha_desde AND @fecha_hasta

		SELECT @MP1 = SUM(PPagoB) FROM #tmp_mp_B

		SELECT @MP1_TOTAL = SUM(ISNULL(@MP,0) + ISNULL(@MP1,0))

	---------------------------------------------------------------------------------------
		SELECT @TOTAL = @EFECTIVO_TOTAL + @MP1_TOTAL
		SELECT CONCAT('$',@EFECTIVO_TOTAL) 'Efectivo',
			   CONCAT('$',@MP1_TOTAL) 'Mercado Pago',
			   CONCAT('$',@TOTAL) 'Total'

		DROP TABLE #tmp_efectivo_A
		DROP TABLE #tmp_efectivo_B
		DROP TABLE #tmp_mp_A
		DROP TABLE #tmp_mp_B
	END

RETURN 0

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'comprobante')
	DROP PROCEDURE comprobante
GO

CREATE PROCEDURE [dbo].[comprobante] 
(
@nro_factura INT,
@id_pc INT
)

AS

DECLARE
@menu VARCHAR(80),@precio VARCHAR(10),@menu1 VARCHAR(80),@precio1 VARCHAR(10),@txt_menu VARCHAR(100) = '',
@adicionales VARCHAR(80),@precioAD VARCHAR(10),@adicionales1 VARCHAR(80),@precioAD1 VARCHAR(10),@txt_adicionales VARCHAR(100) = '',
@adicionalesP VARCHAR(80),@precioADP VARCHAR(10),@adicionalesP1 VARCHAR(80),@precioADP1 VARCHAR(10),@txt_adicionalesP VARCHAR(100) = '',
@bebidas VARCHAR(80),@precioB VARCHAR(10),@cantidad INT,@bebidas1 VARCHAR(80),@precioB1 VARCHAR(10),@cantidad1 INT,@txt_bebidas VARCHAR(100) = '',
@imp_total VARCHAR(10),@txt_total VARCHAR(100) = '',
@imp_envio VARCHAR(10),@txt_envio VARCHAR(100) = '',
@imp_pago_A VARCHAR(10),@txt_pago_A VARCHAR(100) = '',
@imp_pago_B VARCHAR(10),@txt_pago_B VARCHAR(100) = '',
@imp_pago_con VARCHAR(10),@txt_pago_con VARCHAR(100) = '',
@imp_vuelto VARCHAR(10),@txt_pago_vuelto VARCHAR(100) = ''

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON
IF @id_pc = 1
	BEGIN
		--drop table comprobantes
	
		DELETE FROM comprobantes

		DECLARE ticket CURSOR FOR 
		SELECT 
			CASE WHEN B.descripcion IS NULL
				THEN ''
				ELSE B.descripcion END	Menus,
			CASE WHEN B.precio_v IS NULL 
					THEN CONCAT('$',0.00) 
					ELSE CONCAT('$',B.precio_v) END  Precio,
			CASE WHEN C.descripcion IS NULL
				THEN ''
				ELSE C.descripcion END Adicionales,
			CASE WHEN C.precio_v IS NULL 
					THEN CONCAT('$',0.00) 
					ELSE CONCAT('$',C.precio_v) END  Precio_AD,
			CASE WHEN C1.descripcion  IS NULL
				THEN ''
				ELSE C1.descripcion  END AdicionalesP,
			CASE WHEN C1.precio_v IS NULL 
					THEN CONCAT('$',0.00) 
					ELSE CONCAT('$',C1.precio_v) END  Precio_ADP,
			CASE WHEN D.descripcion  IS NULL
				THEN ''
				ELSE D.descripcion  END Bebidas,
			CASE WHEN D.precio_v IS NULL 
					THEN CONCAT('$',0.00) 
					ELSE CONCAT('$',SUM(D.precio_v * A.cant)) END  Precio_B,
			A.cant Bebidas_Cantidad
		FROM ventas A 
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
		OPEN ticket
		FETCH NEXT FROM ticket INTO @menu,@precio,@adicionales,@precioAD,@adicionalesP,@precioADP,@bebidas,@precioB,@cantidad
		WHILE @@fetch_status = 0
		BEGIN 
			SELECT @txt_menu =''
			IF @menu <> ''
				BEGIN
					DECLARE relleno CURSOR FOR 
					SELECT @menu,@precio
					OPEN relleno
					FETCH NEXT FROM relleno INTO @menu1,@precio1
					WHILE (SELECT LEN('1 ' + @txt_menu + @precio1)) < 41
					BEGIN 
						IF LEN(@txt_menu) = 0
							BEGIN
								SELECT @txt_menu ='1 ' + @menu1
							END
						ELSE
							BEGIN
								SELECT @txt_menu = @txt_menu + ' '
							END
					FETCH NEXT FROM relleno INTO @menu1,@precio1
					END
					CLOSE relleno
					DEALLOCATE relleno
				END 
			SELECT @txt_adicionales =''
			IF @adicionales <> ''
				BEGIN
					DECLARE rellenoB CURSOR FOR 
					SELECT @adicionales,@precioAD
					OPEN rellenoB
					FETCH NEXT FROM rellenoB INTO @adicionales1,@precioAD1
					WHILE (SELECT LEN('  ' + @txt_adicionales + @precioAD1)) < 41
					BEGIN 
						IF LEN(@txt_adicionales) = 0
							BEGIN
								SELECT @txt_adicionales ='  ' +  @adicionales1
							END
						ELSE
							BEGIN
								SELECT @txt_adicionales = @txt_adicionales + ' '
							END
					FETCH NEXT FROM rellenoB INTO @adicionales1,@precioAD1
					END
					CLOSE rellenoB
					DEALLOCATE rellenoB
				END 
			SELECT @txt_adicionalesP =''
			IF @adicionalesP <> ''
				BEGIN
					DECLARE rellenoC CURSOR FOR 
					SELECT @adicionalesP,@precioADP
					OPEN rellenoC
					FETCH NEXT FROM rellenoC INTO @adicionalesP1,@precioADP1
					WHILE (SELECT LEN('  ' + @txt_adicionalesP + @precioADP1)) < 41
					BEGIN 
						IF LEN(@txt_adicionalesP) = 0
							BEGIN
								SELECT @txt_adicionalesP ='  ' + @adicionalesP1
							END
						ELSE
							BEGIN
								SELECT @txt_adicionalesP = @txt_adicionalesP + ' '
							END
					FETCH NEXT FROM rellenoC INTO @adicionalesP1,@precioADP1
					END
					CLOSE rellenoC
					DEALLOCATE rellenoC
				
				END 
			SELECT @txt_bebidas =''
			IF @bebidas <> ''
				BEGIN
					DECLARE rellenoD CURSOR FOR 
					SELECT @bebidas,@precioB
					OPEN rellenoD
					FETCH NEXT FROM rellenoD INTO @bebidas1,@precioB1
					WHILE (SELECT LEN(CONVERT(VARCHAR(5),@cantidad) + ' ' + @txt_bebidas + @precioB1)) < 41
					BEGIN 
						IF LEN(@txt_bebidas) = 0
							BEGIN
								SELECT @txt_bebidas = CONCAT(CONVERT(VARCHAR(5),@cantidad), ' ' ,@bebidas1)
							END
						ELSE
							BEGIN
								SELECT @txt_bebidas = @txt_bebidas + ' '
							END
					FETCH NEXT FROM rellenoD INTO @bebidas1,@precioB1
					END
					CLOSE rellenoD
					DEALLOCATE rellenoD
				
				END

		INSERT INTO comprobantes SELECT @txt_menu + @precio1,@txt_adicionales + @precioAD1,@txt_adicionalesP + @precioADP1,@txt_bebidas + @precioB1

		SELECT
		 @txt_menu = '' 
		,@precio1= ''
		,@txt_adicionales = ''
		,@precioAD1= ''
		,@txt_adicionalesP = ''
		,@precioADP1= ''
		,@txt_bebidas= ''
		,@precioB1= ''

		FETCH NEXT FROM ticket INTO @menu,@precio,@adicionales,@precioAD,@adicionalesP,@precioADP,@bebidas,@precioB,@cantidad
		END
		CLOSE ticket
		DEALLOCATE ticket

		SELECT UPPER(texto) AS MP,
			   LOWER(txt_adicionales) AS AP,
			   LOWER(txt_adicionalesP) AS APP,
			   UPPER(txt_bebidas) AS BB
		FROM comprobantes
	END
ELSE IF @id_pc = 2
	BEGIN
		DECLARE CURSOR_PAGO_1 CURSOR FOR 
		SELECT CASE WHEN cv.formaPagoA = 1 THEN 'EFECTIVO' ELSE 'MERCADO PAGO' END METODO_DE_PAGO,cv.PPagoA PAGO_1
		FROM cerrar_venta cv
		WHERE cv.nro_factura = @nro_factura
		OPEN CURSOR_PAGO_1
		FETCH NEXT FROM CURSOR_PAGO_1 INTO @txt_pago_A,@imp_pago_A
		WHILE (SELECT LEN(@txt_pago_A + '$' + @imp_pago_A)) < 40
		BEGIN
			SELECT @txt_pago_A = @txt_pago_A + ' '
		FETCH NEXT FROM CURSOR_PAGO_1 INTO @txt_pago_A,@imp_pago_A
		END
		CLOSE CURSOR_PAGO_1
		DEALLOCATE CURSOR_PAGO_1

		DECLARE CURSOR_PAGO_2 CURSOR FOR 
		--SELECT CASE WHEN cv.formaPagoB = 1 THEN 'EFECTIVO' ELSE 'MERCADO PAGO' END METODO_DE_PAGO,cv.PPagoB PAGO_2
		SELECT CASE WHEN cv.formaPagoB = 1 THEN 'EFECTIVO' WHEN cv.formaPagoB = 2 then 'MERCADO PAGO' END METODO_DE_PAGO,cv.PPagoB PAGO_2
		FROM cerrar_venta cv
		WHERE cv.nro_factura = @nro_factura
		OPEN CURSOR_PAGO_2
		FETCH NEXT FROM CURSOR_PAGO_2 INTO @txt_pago_B,@imp_pago_B
		WHILE (SELECT LEN(@txt_pago_B + '$' + @imp_pago_B)) < 40
		BEGIN
			SELECT @txt_pago_B = @txt_pago_B + ' '
		FETCH NEXT FROM CURSOR_PAGO_2 INTO @txt_pago_B,@imp_pago_B
		END
		CLOSE CURSOR_PAGO_2
		DEALLOCATE CURSOR_PAGO_2
		
		DECLARE CURSOR_PAGO CURSOR FOR
		SELECT 'PAGO CON', pv.pagaCon PAGO_CON
		FROM pago_venta pv
		inner join cerrar_venta cv on cv.nro_factura = pv.nro_factura
		WHERE pv.nro_factura = @nro_factura
		and cv.formaPagoA = 1 OR cv.formaPagoB = 1
		OPEN CURSOR_PAGO
		FETCH NEXT FROM CURSOR_PAGO INTO @txt_pago_con,@imp_pago_con
		WHILE (SELECT LEN(@txt_pago_con + '$' + @imp_pago_con)) < 40
		BEGIN
			SELECT @txt_pago_con = @txt_pago_con + ' '
		FETCH NEXT FROM CURSOR_PAGO INTO @txt_pago_con,@imp_pago_con
		END
		CLOSE CURSOR_PAGO
		DEALLOCATE CURSOR_PAGO

		DECLARE CURSOR_VUELTO CURSOR FOR 
		SELECT 'VUELTO',
		CASE WHEN cv.formaPagoA = 1 THEN SUM(pv.pagaCon - cv.PPagoA)
			 WHEN cv.formaPagoB = 1 THEN SUM(pv.pagaCon - cv.PPagoB)
			 ELSE NULL END VUELTO
		FROM cerrar_venta cv
			INNER JOIN pago_venta pv ON
			pv.nro_factura = cv.nro_factura
		WHERE cv.nro_factura = @nro_factura
		GROUP BY cv.formaPagoA,cv.PPagoA,cv.formaPagoB,cv.PPagoB,pv.pagaCon
		OPEN CURSOR_VUELTO
		FETCH NEXT FROM CURSOR_VUELTO INTO @txt_pago_vuelto,@imp_vuelto
		WHILE (SELECT LEN(@txt_pago_vuelto + '$' + @imp_vuelto)) < 40
		BEGIN
			SELECT @txt_pago_vuelto = @txt_pago_vuelto + ' '
		FETCH NEXT FROM CURSOR_VUELTO INTO @txt_pago_vuelto,@imp_vuelto
		END
		CLOSE CURSOR_VUELTO
		DEALLOCATE CURSOR_VUELTO

		DECLARE CURSOR_IMP CURSOR FOR
		SELECT total FROM pago_venta WHERE nro_factura = @nro_factura
		OPEN CURSOR_IMP
		FETCH NEXT FROM CURSOR_IMP INTO @imp_total
		WHILE (SELECT LEN(@txt_total + '$' + @imp_total)) < 40
		BEGIN 
			IF LEN(@txt_total) = 0
				BEGIN
					SELECT @txt_total = 'TOTAL'
				END
			ELSE
				BEGIN
					SELECT @txt_total = @txt_total + ' '
				END
		FETCH NEXT FROM CURSOR_IMP INTO @imp_total
		END
		CLOSE CURSOR_IMP
		DEALLOCATE CURSOR_IMP

		IF (SELECT envio FROM cerrar_venta WHERE nro_factura = @nro_factura) <> 0
			BEGIN
				DECLARE CURSOR_ENVIO CURSOR FOR
				SELECT envio FROM cerrar_venta WHERE nro_factura = @nro_factura
				OPEN CURSOR_ENVIO
				FETCH NEXT FROM CURSOR_ENVIO INTO @imp_envio

				WHILE (SELECT LEN(@txt_envio + '$' + @imp_envio)) < 40
				BEGIN 
					IF LEN(@txt_envio) = 0
						BEGIN
							SELECT @txt_envio = 'ENVIO'
						END
					ELSE
						BEGIN
							SELECT @txt_envio = @txt_envio + ' '
						END
				FETCH NEXT FROM CURSOR_ENVIO INTO @imp_envio
				END
				CLOSE CURSOR_ENVIO
				DEALLOCATE CURSOR_ENVIO
			END
		ELSE
			BEGIN
				SELECT @txt_envio = NULL,
					   @imp_envio = NULL
			END

		SELECT @txt_total + '$' + @imp_total Total, 
		CASE WHEN  formaPagoB = 0 THEN
			(
				CASE WHEN formaPagoA = 1 THEN 'EFECTIVO'
					 WHEN formaPagoA = 2 THEN 'MERCADO PAGO' END
			)
		ELSE
			'EFECTIVO Y MERCADO PAGO' END PagaEn,
		(SELECT horarioEP FROM pago_venta WHERE nro_factura =  @nro_factura) HorarioEntrega,
		@txt_envio + '$' + @imp_envio Envio,
		@txt_pago_A  + '$' + @imp_pago_A Pago1,
		@txt_pago_B  + '$' + @imp_pago_B Pago2,
		@txt_pago_con  + '$' + @imp_pago_con PagoCon,
		@txt_pago_vuelto  + '$' + @imp_vuelto Vuelto
		FROM cerrar_venta WHERE nro_factura = @nro_factura


	END

GO

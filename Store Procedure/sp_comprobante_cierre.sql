IF EXISTS (SELECT 1
           FROM   SYSOBJECTS
           WHERE  NAME LIKE 'sp_comprobante_cierre'
                  AND XTYPE = 'P')
  DROP PROCEDURE [dbo].[sp_comprobante_cierre]

GO

CREATE PROCEDURE sp_comprobante_cierre
(
@id_pc INT
)

AS


DECLARE @descripcion VARCHAR(60),@cantidad INT,@total NUMERIC(10,2)
DECLARE @descripcion1 VARCHAR(60),@cantidad1 INT,@total1 NUMERIC(10,2)

DECLARE @descripcionA VARCHAR(60),@cantidadA INT,@totalA NUMERIC(10,2)
DECLARE @descripcionA1 VARCHAR(60),@cantidadA1 INT,@totalA1 NUMERIC(10,2)

DECLARE @descripcionAP VARCHAR(60),@cantidadAP INT,@totalAP NUMERIC(10,2)
DECLARE @descripcionAP1 VARCHAR(60),@cantidadAP1 INT,@totalAP1 NUMERIC(10,2)

DECLARE @descripcionB VARCHAR(60),@cantidadB INT,@totalB NUMERIC(10,2)
DECLARE @descripcionB1 VARCHAR(60),@cantidadB1 INT,@totalB1 NUMERIC(10,2)

DECLARE @txt_cierre VARCHAR(100)

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

DELETE FROM comprobante_CIERRE
--DELETE FROM comprobante_CIERRE_MENU
--DELETE FROM comprobante_CIERRE_ADICIONALES
--DELETE FROM comprobante_CIERRE_ADICIONALESP
--DELETE FROM comprobante_CIERRE_BEBIDAS

IF @id_pc = 1 --MENU
	BEGIN
			DECLARE CURSOR_CIERRE_1 CURSOR FOR
			SELECT UPPER(txt_desc) Menu,
				   Cantidad,
				   SUM(total * Cantidad) Total
			FROM TMP_MENU 
			GROUP BY txt_desc,Cantidad
			OPEN CURSOR_CIERRE_1
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcion,@cantidad,@total
			WHILE @@fetch_status = 0
			BEGIN
				SELECT @txt_cierre = ''
				IF @descripcion <> ''
					BEGIN
						DECLARE CURSOR_CIERRE_A1 CURSOR FOR
						SELECT @descripcion,@cantidad,@total
						OPEN CURSOR_CIERRE_A1
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcion1,@cantidad1,@total1
						WHILE (SELECT LEN(CONVERT(VARCHAR(10),@cantidad1) + ' ' + @txt_cierre + '$' + CONVERT(VARCHAR(10),@total1))) < 42
						BEGIN
							IF LEN(@txt_cierre) = 0
								BEGIN
									SELECT @txt_cierre =CONVERT(VARCHAR(10), @cantidad1) + ' ' + @descripcion1
					
								END
							ELSE
								BEGIN
									SELECT @txt_cierre = @txt_cierre + ' '
								END
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcion1,@cantidad1,@total1
						END
						CLOSE CURSOR_CIERRE_A1
						DEALLOCATE CURSOR_CIERRE_A1
					END
			INSERT INTO comprobante_CIERRE_MENU SELECT 1,@txt_cierre + '$' + CONVERT(VARCHAR(20),@total1)
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcion,@cantidad,@total
			END
			CLOSE CURSOR_CIERRE_1
			DEALLOCATE CURSOR_CIERRE_1
	END
ELSE IF @id_pc = 2 --ADICIONALES
	BEGIN
			DECLARE CURSOR_CIERRE_1 CURSOR FOR
			SELECT UPPER(txt_desc) Adicionales,
				   Cantidad,
				   SUM(total * Cantidad) Total
			FROM TMP_ADICIONALES 
			GROUP BY txt_desc,Cantidad
			OPEN CURSOR_CIERRE_1
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionA,@cantidadA,@totalA
			WHILE @@fetch_status = 0
			BEGIN
				SELECT @txt_cierre = ''
				IF @descripcionA <> ''
					BEGIN
						DECLARE CURSOR_CIERRE_A1 CURSOR FOR
						SELECT @descripcionA,@cantidadA,@totalA
						OPEN CURSOR_CIERRE_A1
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionA1,@cantidadA1,@totalA1
						WHILE (SELECT LEN(CONVERT(VARCHAR(10),@cantidadA1) + ' ' + @txt_cierre + '$' + CONVERT(VARCHAR(10),@totalA1))) < 42
						BEGIN
							IF LEN(@txt_cierre) = 0
								BEGIN
									SELECT @txt_cierre =CONVERT(VARCHAR(10), @cantidadA1) + ' ' + @descripcionA1
					
								END
							ELSE
								BEGIN
									SELECT @txt_cierre = @txt_cierre + ' '
								END
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionA1,@cantidadA1,@totalA1
						END
						CLOSE CURSOR_CIERRE_A1
						DEALLOCATE CURSOR_CIERRE_A1
					END

			INSERT INTO comprobante_CIERRE_ADICIONALES SELECT 2,@txt_cierre + '$' + CONVERT(VARCHAR(20),@totalA1)
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionA,@cantidadA,@totalA
			END
			CLOSE CURSOR_CIERRE_1
			DEALLOCATE CURSOR_CIERRE_1
	END
ELSE IF @id_pc = 3 --ADICIONALES PAPAS
	BEGIN
			DECLARE CURSOR_CIERRE_1 CURSOR FOR
			SELECT UPPER(txt_desc) AdicionalesPapas,
				   Cantidad,
				   SUM(total * Cantidad) Total
			FROM TMP_ADICIONALESP 
			GROUP BY txt_desc,Cantidad
			OPEN CURSOR_CIERRE_1
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionAP,@cantidadAP,@totalAP
			WHILE @@fetch_status = 0
			BEGIN
				SELECT @txt_cierre = ''
				IF @descripcionAP <> ''
					BEGIN
						DECLARE CURSOR_CIERRE_A1 CURSOR FOR
						SELECT @descripcionAP,@cantidadAP,@totalAP
						OPEN CURSOR_CIERRE_A1
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionAP1,@cantidadAP1,@totalAP1
						WHILE (SELECT LEN(CONVERT(VARCHAR(10),@cantidadAP1) + ' ' + @txt_cierre + '$' + CONVERT(VARCHAR(10),@totalAP1))) < 42
						BEGIN
							IF LEN(@txt_cierre) = 0
								BEGIN
									SELECT @txt_cierre =CONVERT(VARCHAR(10), @cantidadAP1) + ' ' + @descripcionAP1
					
								END
							ELSE
								BEGIN
									SELECT @txt_cierre = @txt_cierre + ' '
								END
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionAP1,@cantidadAP1,@totalAP1
						END
						CLOSE CURSOR_CIERRE_A1
						DEALLOCATE CURSOR_CIERRE_A1
					END

			INSERT INTO comprobante_CIERRE_ADICIONALESP SELECT 3,@txt_cierre + '$' + CONVERT(VARCHAR(20),@totalAP1)
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionAP,@cantidadAP,@totalAP
			END
			CLOSE CURSOR_CIERRE_1
			DEALLOCATE CURSOR_CIERRE_1
	END
ELSE IF @id_pc = 4 --BEBIDAS
	BEGIN
			DECLARE CURSOR_CIERRE_1 CURSOR FOR
			SELECT UPPER(txt_desc) Bebidas,
				   Cantidad,
				   SUM(total * Cantidad) Total
			FROM TMP_BEBIDAS 
			GROUP BY txt_desc,Cantidad
			OPEN CURSOR_CIERRE_1
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionB,@cantidadB,@totalB
			WHILE @@fetch_status = 0
			BEGIN
				SELECT @txt_cierre = ''
				IF @descripcionB <> ''
					BEGIN
						DECLARE CURSOR_CIERRE_A1 CURSOR FOR
						SELECT @descripcionB,@cantidadB,@totalB
						OPEN CURSOR_CIERRE_A1
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionB1,@cantidadB1,@totalB1
						WHILE (SELECT LEN(CONVERT(VARCHAR(10),@cantidadB1) + ' ' + @txt_cierre + '$' + CONVERT(VARCHAR(10),@totalB1))) < 42
						BEGIN
							IF LEN(@txt_cierre) = 0
								BEGIN
									SELECT @txt_cierre =CONVERT(VARCHAR(10), @cantidadB1) + ' ' + @descripcionB1
					
								END
							ELSE
								BEGIN
									SELECT @txt_cierre = @txt_cierre + ' '
								END
						FETCH NEXT FROM CURSOR_CIERRE_A1 INTO @descripcionB1,@cantidadB1,@totalB1
						END
						CLOSE CURSOR_CIERRE_A1
						DEALLOCATE CURSOR_CIERRE_A1
					END

			INSERT INTO comprobante_CIERRE_BEBIDAS SELECT 4,@txt_cierre + '$' + CONVERT(VARCHAR(20),@totalB1)
			FETCH NEXT FROM CURSOR_CIERRE_1 INTO @descripcionB,@cantidadB,@totalB
			END
			CLOSE CURSOR_CIERRE_1
			DEALLOCATE CURSOR_CIERRE_1
	END
ELSE IF @id_pc = 5 --FINAL
	BEGIN
		INSERT INTO comprobante_CIERRE SELECT 1,'MENUS' 
		INSERT INTO comprobante_CIERRE SELECT id,productos FROM comprobante_CIERRE_MENU
		INSERT INTO comprobante_CIERRE SELECT 2,'ADICIONALES' 
		INSERT INTO comprobante_CIERRE SELECT id,productos FROM comprobante_CIERRE_ADICIONALES
		INSERT INTO comprobante_CIERRE SELECT 3,'ADICIONALES DE PAPAS' 
		INSERT INTO comprobante_CIERRE SELECT id,productos FROM comprobante_CIERRE_ADICIONALESP
		INSERT INTO comprobante_CIERRE SELECT 4,'BEBIDAS' 
		INSERT INTO comprobante_CIERRE SELECT id,productos FROM comprobante_CIERRE_BEBIDAS
		SELECT * FROM comprobante_CIERRE
		DELETE FROM comprobante_CIERRE_MENU
		DELETE FROM comprobante_CIERRE_ADICIONALES
		DELETE FROM comprobante_CIERRE_ADICIONALESP
		DELETE FROM comprobante_CIERRE_BEBIDAS
	END
	
GO
/*
EXEC sp_comprobante_cierre 1
EXEC sp_comprobante_cierre 2
EXEC sp_comprobante_cierre 3
EXEC sp_comprobante_cierre 4
EXEC sp_comprobante_cierre 5
SELECT * FROM comprobante_CIERRE_MENU
SELECT * FROM comprobante_CIERRE_ADICIONALES
SELECT * FROM comprobante_CIERRE_ADICIONALESP
SELECT * FROM comprobante_CIERRE_BEBIDAS
*/
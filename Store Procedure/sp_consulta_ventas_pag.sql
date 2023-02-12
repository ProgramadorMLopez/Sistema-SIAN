IF EXISTS (SELECT 1
           FROM   SYSOBJECTS
           WHERE  NAME LIKE 'sp_consulta_ventas_pag'
                  AND XTYPE = 'P')
  DROP PROCEDURE [dbo].[sp_consulta_ventas_pag]

GO

CREATE PROCEDURE sp_consulta_ventas_pag
(
@proceso INT = NULL,
@pagesize INT = NULL,
@pagenum INT  = NULL,
@id_cliente INT = NULL
)

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  
SET NOCOUNT ON

BEGIN
	IF @proceso = 1 
		BEGIN
			SELECT
			'',A.nro_factura Factura, 
			CASE WHEN B.id_cliente = 0 THEN LOWER('No Registrado') ELSE LOWER(C.txt_nombre_completo) END Cliente, 
			--LOWER(E.descripcion) Menu, 
			--LOWER(F.descripcion) Adicionales, 
			--CASE WHEN A.cant = 0 THEN null ELSE CONCAT(LOWER(G.descripcion),' x',A.cant) END Bebidas, 
			CASE WHEN H.total is null THEN null ELSE CONCAT('$ ',H.total) END Total, 
			CONCAT('$ ',H.envio) Envio,
			I.comentario Comentario,
			FORMAT(A.fec_emision,'dd-MM-yyyy') Emision 
			FROM ventas A 
			INNER JOIN venta_x_clientes B ON B.nro_factura = A.nro_factura 
			LEFT JOIN tclientes C ON C.id_clientes = B.id_cliente
			--LEFT JOIN ventas D ON D.nro_factura = A.nro_factura 
			--LEFT JOIN tmenu E ON E.id_menu =A.menu 
			--LEFT JOIN tadicionales F ON F.id_adicionales = A.adicional 
			--LEFT JOIN tbebidas G ON G.id_bebidas = A.bebidas
			LEFT JOIN cerrar_venta H ON H.nro_factura = A.nro_factura
			LEFT JOIN pago_venta I ON I.nro_factura = A.nro_factura
			--WHERE C.id_clientes = ISNULL(@id_cliente, C.id_clientes)
			WHERE I.pedidos = 0
			GROUP BY A.nro_factura,B.id_cliente,C.txt_nombre_completo,H.total,I.comentario,A.fec_emision,H.envio
			--a.cant,E.descripcion, F.descripcion, G.descripcion,A.id_ventas
			ORDER BY A.nro_factura 
			OFFSET ((@pagenum - 1) * @pagesize ) ROWS FETCH NEXT @pagesize ROWS ONLY
		END
	ELSE
		BEGIN
			SELECT 
			'',A.nro_factura Factura, 
			CASE WHEN B.id_cliente = 0 THEN LOWER('No Registrado') ELSE LOWER(C.txt_nombre_completo) END Cliente, 
			--LOWER(E.descripcion) Menu, 
			--LOWER(F.descripcion) Adicionales, 
			--CASE WHEN A.cant = 0 THEN null ELSE CONCAT(LOWER(G.descripcion),' x',A.cant) END Bebidas, 
			CASE WHEN H.total is null THEN null ELSE CONCAT('$ ',SUM(H.total + H.envio)) END Total, 
			CONCAT('$ ',H.envio) Envio,
			I.comentario Comentario,
			FORMAT(A.fec_emision,'dd-MM-yyyy') Emision 
			FROM ventas A 
			INNER JOIN venta_x_clientes B ON B.nro_factura = A.nro_factura 
			LEFT JOIN tclientes C ON C.id_clientes = B.id_cliente
			--LEFT JOIN ventas D ON D.nro_factura = A.nro_factura 
			--LEFT JOIN tmenu E ON E.id_menu =A.menu 
			--LEFT JOIN tadicionales F ON F.id_adicionales = A.adicional 
			--LEFT JOIN tbebidas G ON G.id_bebidas = A.bebidas
			LEFT JOIN cerrar_venta H ON H.nro_factura = A.nro_factura 
			LEFT JOIN pago_venta I ON I.nro_factura = A.nro_factura
			WHERE B.id_cliente = @id_cliente AND I.pedidos = 0
			GROUP BY A.nro_factura,B.id_cliente,C.txt_nombre_completo ,H.total,I.comentario,A.fec_emision,H.envio
			--,E.descripcion, F.descripcion, G.descripcion,A.id_ventas  , a.cant
			ORDER BY A.nro_factura 
			OFFSET ((@pagenum - 1) * @pagesize ) ROWS FETCH NEXT @pagesize ROWS ONLY
		END

END 

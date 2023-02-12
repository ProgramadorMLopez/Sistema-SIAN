VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Pedidos 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Pedidos Pendientes"
   ClientHeight    =   4140
   ClientLeft      =   150
   ClientTop       =   195
   ClientWidth     =   13650
   Icon            =   "Pedidos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4140
   ScaleWidth      =   13650
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ListView ListView1 
      Height          =   3855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   6800
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu FinalizarP 
         Caption         =   "&Finalizar Pedido"
      End
      Begin VB.Menu CancelarP 
         Caption         =   "Cancelar Pedido"
      End
   End
End
Attribute VB_Name = "Pedidos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub CancelarP_Click()
If ListView1.ListItems.Count <> 0 Then
    If (MsgBox("Cancelar Pedido?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
        sql = "delete from pago_venta where nro_factura = " & ListView1.SelectedItem.SubItems(1)
        sql = sql & " delete from venta_x_clientes where nro_factura = " & ListView1.SelectedItem.SubItems(1)
        sql = sql & " delete from cerrar_venta where nro_factura = " & ListView1.SelectedItem.SubItems(1)
        sql = sql & " delete from ventas where nro_factura = " & ListView1.SelectedItem.SubItems(1)
        Call BuscaConexion(sql)
        Set rs = Nothing
        Set cn = Nothing
        MsgBox "Pedido Cancelado", vbInformation, "Break Burger"
        ListView1.ListItems.Clear
        carga
    End If
End If
End Sub

Private Sub FinalizarP_Click()
'ListView1.SelectedItem.SubItems(1)
If ListView1.ListItems.Count <> 0 Then
    If (MsgBox("Finalizar Pedido?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
        sql = "update pago_venta set pedidos = 0 where nro_factura = " & ListView1.SelectedItem.SubItems(1)
        Call BuscaConexion(sql)
        Set rs = Nothing
        Set cn = Nothing
        MsgBox "Pedido Finalizado", vbInformation, "Break Burger"
        ListView1.ListItems.Clear
        carga
    End If
End If
End Sub

Private Sub Form_Load()
carga
End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

Private Sub carga()
sql = "SELECT '',A.nro_factura Factura, "
sql = sql & "CASE WHEN B.id_cliente = 0 THEN LOWER('Otros') ELSE LOWER(C.txt_nombre_completo) END Cliente, "
sql = sql & "C.txt_dir Direccion,CONCAT(HorarioEP,' hs') Entrega, "
sql = sql & "CASE WHEN H.total is null THEN null ELSE CONCAT('$ ',H.total) END Total,I.movimiento Movimientos "
sql = sql & "FROM ventas A "
sql = sql & "INNER JOIN venta_x_clientes B ON B.nro_factura = A.nro_factura "
sql = sql & "LEFT JOIN tclientes C ON C.id_clientes = B.id_cliente "
sql = sql & "LEFT JOIN tmenu E ON E.id_menu =A.menu "
sql = sql & "LEFT JOIN tadicionales F ON F.id_adicionales = A.adicional "
sql = sql & "LEFT JOIN tadicionales F1 ON F1.id_adicionales = A.adicionalP "
sql = sql & "LEFT JOIN tbebidas G ON G.id_bebidas = A.bebidas "
sql = sql & "LEFT JOIN cerrar_venta H ON H.nro_factura = A.nro_factura "
sql = sql & "LEFT JOIN pago_venta I ON I.nro_factura = A.nro_factura "
sql = sql & "WHERE I.pedidos = 1 GROUP BY A.nro_factura, B.id_cliente,C.txt_dir,C.txt_nombre_completo,HorarioEP,H.total,I.movimiento"
Cargar_List sql, ListView1, 8
End Sub

VERSION 5.00
Begin VB.Form Comprobante 
   BackColor       =   &H80000004&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Comprobante"
   ClientHeight    =   8220
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6045
   Icon            =   "Comprobante.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8220
   ScaleWidth      =   6045
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text2 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "SimSun"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8055
      HelpContextID   =   1
      HideSelection   =   0   'False
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   120
      Width           =   4695
   End
   Begin VB.CommandButton imprimir 
      Caption         =   "&Imprimir"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   4920
      Picture         =   "Comprobante.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "Comprobante"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Dim campo As Integer
Dim i As Integer

sql = "SELECT A.nro_factura ,ISNULL(b.txt_nombre_completo,''),ISNULL(b.txt_dir,'" & txtDireccion & "'),ISNULL(b.txt_tel,'')  FROM venta_x_clientes A LEFT JOIN tclientes B ON B.id_clientes = A.id_cliente WHERE A.nro_factura = " & FacturaNRO
Call BuscaConexion(sql)
text2.Text = "            **BREAK BURGER**" & vbCrLf
'Text2.Text = Text2.Text & "                Delivery" & vbCrLf
'Text2.Text = Text2.Text & "                 Retiro " & vbCrLf
text2.Text = text2.Text & IIf(mov_entrega = 1, "                Delivery", "                 Retiro ") & vbCrLf
text2.Text = text2.Text & "" & vbCrLf
text2.Text = text2.Text & "" & vbCrLf
text2.Text = text2.Text & "Fecha " & Date & "   Hora " & Time & vbCrLf
text2.Text = text2.Text & "" & vbCrLf
text2.Text = text2.Text & "Cliente: " & rs(1) & vbCrLf
text2.Text = text2.Text & "Domicilio: " & rs(2) & vbCrLf
If desCasa <> "" Then
    text2.Text = text2.Text & "Descripcion: " & StrConv(desCasa, 2) & vbCrLf
End If
text2.Text = text2.Text & "Telefono: " & rs(3) & vbCrLf
text2.Text = text2.Text & "" & vbCrLf
text2.Text = text2.Text & "FACTURA                        " & Format(FacturaNRO, "0000000000") & vbCrLf
text2.Text = text2.Text & "" & vbCrLf
text2.Text = text2.Text & "PRODUCTO                          IMPORTE" & vbCrLf
text2.Text = text2.Text & "-----------------------------------------------" & vbCrLf
rs.Close
cn.Close
Set cn = Nothing
Set rs = Nothing

sql = "EXEC comprobante " & FacturaNRO & ",1"

Call BuscaConexion(sql)
'Text2.Text = Text2.Text & rs(0)
While Not rs.EOF
    text2.Text = text2.Text & rs.Fields(0) & vbCrLf
    If rs.Fields(1) <> "" Then
        text2.Text = text2.Text & rs.Fields(1) & vbCrLf
        If rs.Fields(2) <> "" Then
            text2.Text = text2.Text & rs.Fields(2) & vbCrLf
            If rs.Fields(3) <> "" Then
                text2.Text = text2.Text & rs.Fields(3) & vbCrLf
            End If
        Else
            If rs.Fields(3) <> "" Then
                text2.Text = text2.Text & rs.Fields(3) & vbCrLf
            End If
        End If
    Else
        If rs.Fields(2) <> "" Then
            text2.Text = text2.Text & rs.Fields(2) & vbCrLf
            If rs.Fields(3) <> "" Then
                text2.Text = text2.Text & rs.Fields(3) & vbCrLf
            End If
        Else
            If rs.Fields(3) <> "" Then
                text2.Text = text2.Text & rs.Fields(3) & vbCrLf
            End If
        End If
    End If
    rs.MoveNext
Wend
rs.Close
cn.Close
Set cn = Nothing
Set rs = Nothing

text2.Text = text2.Text & "-----------------------------------------------" & vbCrLf
sql = "EXEC comprobante " & FacturaNRO & ",2"
Call BuscaConexion(sql)
If Not IsNull(rs(3)) Then
    text2.Text = text2.Text & rs(3) & vbCrLf
End If
If Not IsNull(rs(0)) Then
    text2.Text = text2.Text & rs(0) & vbCrLf
    text2.Text = text2.Text & vbCrLf
End If
If Not IsNull(rs(4)) Then
    text2.Text = text2.Text & rs(4) & vbCrLf
End If
If Not IsNull(rs(5)) Then
    text2.Text = text2.Text & rs(5) & vbCrLf
End If
If Not IsNull(rs(6)) Then
    text2.Text = text2.Text & rs(6) & vbCrLf
End If
If Not IsNull(rs(7)) Then
    text2.Text = text2.Text & rs(7) & vbCrLf
End If
'Text2.Text = Text2.Text & rs(0) & vbCrLf
'Text2.Text = Text2.Text & rs(4) & vbCrLf
'Text2.Text = Text2.Text & rs(5) & vbCrLf
'Text2.Text = Text2.Text & rs(6) & vbCrLf
'Text2.Text = Text2.Text & rs(7) & vbCrLf

text2.Text = text2.Text & vbCrLf
text2.Text = text2.Text & vbCrLf
text2.Text = text2.Text & "METODO DE PAGO: " & rs(1) & vbCrLf
text2.Text = text2.Text & vbCrLf
text2.Text = text2.Text & vbCrLf
If (rs(2)) <> "00:00:00" Then
    text2.Text = text2.Text & "HORARIO DE ENTREGA: " & Format(rs(2), "hh:mm") & "HS" & vbCrLf
End If
rs.Close
cn.Close
Set cn = Nothing
Set rs = Nothing
sql = "select comentario from pago_venta where nro_factura = " & FacturaNRO
Call BuscaConexion(sql)
If rs(0) <> "" Then
    text2.Text = text2.Text & vbCrLf
    text2.Text = text2.Text & "Comentario: " & rs(0) & vbCrLf
End If
text2.Text = text2.Text & vbCrLf
text2.Text = text2.Text & vbCrLf
text2.Text = text2.Text & "         **GRACIAS POR SU COMPRA**" & vbCrLf
rs.Close
cn.Close
Set cn = Nothing
Set rs = Nothing
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Unload Ventas
Ventas.Show
End Sub

Private Sub imprimir_Click()
Dim X As Printer
For Each X In Printers
    If X.DeviceName = "POS-80" Then
        MsgBox "Imprimiento comprobante"
        Printer.FontName = "SimSun"
        Printer.FontSize = 9
        Printer.FontBold = True
'        Printer.Print "Hola Mundo"
        Printer.Print text2.Text
        ' Set printer as system default.
        Set Printer = X
        ' Stop looking for a printer.
    Exit For
    End If
Next
End Sub

VERSION 5.00
Begin VB.Form Comprobante_cierre_general 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7620
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6015
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7620
   ScaleWidth      =   6015
   StartUpPosition =   3  'Windows Default
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
      Picture         =   "Comprobante_cierre_general.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
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
      Height          =   7575
      HelpContextID   =   1
      HideSelection   =   0   'False
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "Comprobante_cierre_general"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
Text2.Text = "            **BREAK BURGER**" & vbCrLf
Text2.Text = Text2.Text & "             cierre de caja" & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "         " & cierreGral.DTPicker1.Value & " - " & cierreGral.DTPicker2.Value & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "Fecha " & Date & "   Hora " & Time & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
sql = "select count(distinct nro_factura) from ventas where fec_emision between '" & Format(cierreGral.DTPicker1.Value, "yyyyMMdd") & "' and '" & Format(cierreGral.DTPicker2.Value, "yyyyMMdd") & "'"
Call BuscaConexion(sql)
Text2.Text = Text2.Text & "Cantidad de ventas: " & rs(0) & vbCrLf
Set cn = Nothing
Set rs = Nothing
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
sql = "EXEC sp_comprobante_cierre 1"
Call BuscaConexion(sql)
Set cn = Nothing
Set rs = Nothing
sql = "EXEC sp_comprobante_cierre 2"
Call BuscaConexion(sql)
Set cn = Nothing
Set rs = Nothing
sql = "EXEC sp_comprobante_cierre 3"
Call BuscaConexion(sql)
Set cn = Nothing
Set rs = Nothing
sql = "EXEC sp_comprobante_cierre 4"
Call BuscaConexion(sql)
Set cn = Nothing
Set rs = Nothing
sql = "EXEC sp_comprobante_cierre 5"
Call BuscaConexion(sql)
While Not rs.EOF
    Text2.Text = Text2.Text & rs.Fields(1) & vbCrLf
    rs.MoveNext
Wend
Set cn = Nothing
Set rs = Nothing
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "" & vbCrLf
Text2.Text = Text2.Text & "EFECTIVO:     " & cierreGral.EfectivoTXT.Text & vbCrLf
Text2.Text = Text2.Text & "MERCADO PAGO: " & cierreGral.mpTXT.Text & vbCrLf
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
        Printer.Print Text2.Text
        ' Set printer as system default.
        Set Printer = X
        ' Stop looking for a printer.
    Exit For
    End If
Next
End Sub

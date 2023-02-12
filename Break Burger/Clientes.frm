VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Cliente 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Datos del cliente"
   ClientHeight    =   9585
   ClientLeft      =   105
   ClientTop       =   -195
   ClientWidth     =   17550
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Clientes.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9585
   ScaleWidth      =   17550
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3615
      Left            =   5780
      TabIndex        =   2
      Top             =   0
      Width           =   11775
      Begin VB.CommandButton cerrar 
         Caption         =   "&Cerrar"
         Height          =   1095
         Left            =   10560
         Picture         =   "Clientes.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   2280
         Width           =   975
      End
      Begin VB.CommandButton updatecliente 
         Caption         =   "&Actualizar Cliente"
         Height          =   1095
         Left            =   9240
         Picture         =   "Clientes.frx":1194
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   2280
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.CommandButton newclientes 
         Caption         =   "&Ingresar Cliente"
         Height          =   1095
         Left            =   9240
         Picture         =   "Clientes.frx":1A5E
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   2280
         Width           =   1215
      End
      Begin VB.TextBox desc 
         Height          =   315
         Left            =   2280
         TabIndex        =   10
         Top             =   1680
         Width           =   9375
      End
      Begin VB.TextBox tel 
         Height          =   315
         Left            =   2280
         TabIndex        =   8
         Top             =   1200
         Width           =   9375
      End
      Begin VB.TextBox dir 
         Height          =   315
         Left            =   2280
         TabIndex        =   6
         Top             =   720
         Width           =   9375
      End
      Begin VB.TextBox nombre 
         Height          =   315
         Left            =   2280
         TabIndex        =   4
         Top             =   240
         Width           =   9375
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Descripcion"
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   360
         TabIndex        =   9
         Top             =   1680
         Width           =   1065
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Telefono"
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   360
         TabIndex        =   7
         Top             =   1200
         Width           =   810
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Direccion"
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   360
         TabIndex        =   5
         Top             =   720
         Width           =   840
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nombre Completo"
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   360
         TabIndex        =   3
         Top             =   240
         Width           =   1695
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   6015
      Left            =   0
      TabIndex        =   1
      Top             =   3600
      Width           =   17535
      _ExtentX        =   30930
      _ExtentY        =   10610
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483624
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Line Line1 
      X1              =   5760
      X2              =   5760
      Y1              =   0
      Y2              =   3600
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Datos Personales De Clientes Activos"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   6240
      TabIndex        =   0
      Top             =   3000
      Width           =   5370
   End
   Begin VB.Image Image1 
      Height          =   3855
      Left            =   0
      Picture         =   "Clientes.frx":2328
      Stretch         =   -1  'True
      Top             =   -120
      Width           =   5775
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu Actualizar 
         Caption         =   "Actualizar"
      End
      Begin VB.Menu Eliminar 
         Caption         =   "Eliminar"
      End
   End
End
Attribute VB_Name = "Cliente"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim idcliente As Integer

Private Sub Actualizar_Click()
idcliente = ListView1.SelectedItem.SubItems(1)
nombre.Text = ListView1.SelectedItem.SubItems(2)
dir.Text = ListView1.SelectedItem.SubItems(3)
tel.Text = ListView1.SelectedItem.SubItems(4)
desc.Text = ListView1.SelectedItem.SubItems(5)
updatecliente.Visible = True
nombre.Enabled = False
End Sub

Private Sub cerrar_Click()
If cod_movimiento = 1 Then
    Unload Me
    sql = "select rtrim(ltrim(txt_nombre_completo)) Descripcion,id_clientes ID from tclientes "
    Combo Ventas.CLIENTES, sql, Ventas
    Ventas.OtroCliente.Value = 0
    Ventas.Enabled = True
Else
    Inicio.Show
    Unload Me
End If
End Sub

Private Sub desc_KeyPress(KeyAscii As Integer)
'If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
'Or KeyAscii = 8 _
'Or KeyAscii = 32 _
'Then
'Else
'  KeyAscii = 0
'End If
End Sub

Private Sub dir_KeyPress(KeyAscii As Integer)
'If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
'Or KeyAscii = 8 _
'Or KeyAscii = 32 _
'Then
'Else
'  KeyAscii = 0
'End If
End Sub

Private Sub Eliminar_Click()
sql = "exec sp_ingreso_clientes 3,@id_cliente = " & ListView1.SelectedItem.SubItems(1)
Cargar_List sql, ListView1, 5
End Sub

Private Sub Form_Load()
DisableX cliente.hwnd 'LLAMA AL BLOQUEO DE (X)
sql = "exec sp_ingreso_clientes"
Cargar_List sql, ListView1, 5
End Sub

Private Sub ListView1_DblClick()
BusqClienteGral.Show
End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

Private Sub newclientes_Click()
If Trim(nombre.Text) = "" Or Trim(dir.Text) = "" Or Trim(tel.Text) = "" Or Trim(desc.Text) = "" Then
    MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
    Screen.MousePointer = vbDefault
    Exit Sub
End If
sql = "exec sp_ingreso_clientes 1,'" & nombre.Text & "','" & dir.Text & "','" & tel.Text & "','" & desc.Text & "'"
Cargar_List sql, ListView1, 5
nombre.Text = ""
dir.Text = ""
tel.Text = ""
desc.Text = ""

End Sub

Private Sub nombre_KeyPress(KeyAscii As Integer)
If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
Or KeyAscii = 8 _
Or KeyAscii = 32 _
Then
Else
  KeyAscii = 0
End If
End Sub

Private Sub tel_KeyPress(KeyAscii As Integer)
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub

Private Sub updatecliente_Click()
If Trim(nombre.Text) = "" Or Trim(dir.Text) = "" Or Trim(tel.Text) = "" Or Trim(desc.Text) = "" Then
    MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
    Screen.MousePointer = vbDefault
    Exit Sub
End If
sql = "exec sp_ingreso_clientes 2,null,'" & dir.Text & "','" & tel.Text & "','" & desc.Text & "'," & idcliente
Cargar_List sql, ListView1, 5
nombre.Text = ""
dir.Text = ""
tel.Text = ""
desc.Text = ""
updatecliente.Visible = False
nombre.Enabled = True
End Sub

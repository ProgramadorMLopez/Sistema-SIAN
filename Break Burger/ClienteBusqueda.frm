VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form ClienteBusqueda 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Busqueda de clientes"
   ClientHeight    =   9135
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   17505
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "ClienteBusqueda.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9135
   ScaleWidth      =   17505
   StartUpPosition =   1  'CenterOwner
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   17040
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Excel 
      Caption         =   "&Exportar a Excel"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      Picture         =   "ClienteBusqueda.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   960
      Width           =   855
   End
   Begin VB.CommandButton Limpiar 
      Caption         =   "&Limpiar Busqueda"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      Picture         =   "ClienteBusqueda.frx":1194
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   960
      Width           =   855
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Mas Nuevo"
      Height          =   375
      Left            =   11040
      TabIndex        =   4
      Top             =   360
      Width           =   1575
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Mas Antiguo"
      Height          =   375
      Left            =   9240
      TabIndex        =   3
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox cliente 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   8415
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   7095
      Left            =   0
      TabIndex        =   0
      Top             =   2040
      Width           =   17535
      _ExtentX        =   30930
      _ExtentY        =   12515
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
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
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "BREAK BURGER"
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   14040
      TabIndex        =   8
      Top             =   840
      Width           =   3180
   End
   Begin VB.Line Line4 
      Index           =   1
      X1              =   13920
      X2              =   17280
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line4 
      Index           =   0
      X1              =   13920
      X2              =   17280
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sabemos lo que te gusta !!"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   14400
      TabIndex        =   7
      Top             =   480
      Width           =   2460
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre Completo"
      ForeColor       =   &H8000000D&
      Height          =   210
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "ClienteBusqueda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cliente_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Busqueda_GeneralMenu
End If
If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
Or KeyAscii = 8 _
Or KeyAscii = 32 _
Then
Else
  KeyAscii = 0
End If
End Sub

Private Sub Excel_Click()
Exportar_Excel ListView1, CommonDialog1
End Sub

Private Sub Form_Load()
sql = "exec sp_ingreso_clientes"
Cargar_List sql, ListView1, 5
End Sub

Private Sub Busqueda_GeneralMenu()
If cliente.Text <> "" Then
    If Option1.Value = True Then
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes WHERE txt_nombre_completo LIKE '" & cliente.Text & "%' "
        sql = sql & " ORDER BY fecha_ingreso ASC"
    ElseIf Option2.Value = True Then
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes WHERE txt_nombre_completo LIKE '" & cliente.Text & "%' "
        sql = sql & " ORDER BY fecha_ingreso DESC"
    Else
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes WHERE txt_nombre_completo LIKE '" & cliente.Text & "%' "
        sql = sql & " ORDER BY id_clientes ASC"
    End If
Else
    If Option1.Value = True Then
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes "
        sql = sql & " ORDER BY fecha_ingreso ASC"
    ElseIf Option2.Value = True Then
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes "
        sql = sql & " ORDER BY fecha_ingreso DESC"
    Else
        sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
        sql = sql & " From tclientes "
        sql = sql & " ORDER BY id_clientes ASC"
    End If
End If
Cargar_List sql, ListView1, 5
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Inicio.Show
Unload Me
End Sub

Private Sub imprimir_Click(Index As Integer)

End Sub

Private Sub Limpiar_Click()
cliente.Text = ""
Option1.Value = False
Option2.Value = False
sql = "exec sp_ingreso_clientes"
Cargar_List sql, ListView1, 5
End Sub

Private Sub Option1_Click()
Busqueda_GeneralMenu
End Sub

Private Sub Option2_Click()
Busqueda_GeneralMenu
End Sub

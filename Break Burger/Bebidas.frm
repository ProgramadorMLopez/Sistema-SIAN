VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Bebidas 
   BackColor       =   &H80000004&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ingreso de Bebidas"
   ClientHeight    =   9780
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8130
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Bebidas.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9780
   ScaleWidth      =   8130
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      BackColor       =   &H80000004&
      Height          =   7815
      Left            =   120
      TabIndex        =   0
      Top             =   1920
      Width           =   7935
      Begin VB.CommandButton ActualizarBebidas 
         Caption         =   "&Actualizar"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   6840
         Picture         =   "Bebidas.frx":058A
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   840
         Visible         =   0   'False
         Width           =   975
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   5895
         Left            =   120
         TabIndex        =   7
         Top             =   1800
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   10398
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483637
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   0
      End
      Begin VB.CommandButton IngresarBebidas 
         Caption         =   "&Ingresar"
         Height          =   855
         Left            =   6840
         Picture         =   "Bebidas.frx":0E54
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Precio 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000A&
         Height          =   285
         Left            =   120
         TabIndex        =   5
         Text            =   "Ingrese Precio"
         Top             =   1080
         Width           =   2895
      End
      Begin VB.TextBox Bebidas 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000A&
         Height          =   285
         Left            =   120
         TabIndex        =   3
         Text            =   "Ingrese Bebida"
         Top             =   480
         Width           =   7695
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Precio $$$"
         ForeColor       =   &H8000000D&
         Height          =   195
         Left            =   120
         TabIndex        =   4
         Top             =   840
         Width           =   900
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Descripcion"
         ForeColor       =   &H8000000D&
         Height          =   195
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   990
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "BEBIDAS"
      BeginProperty Font 
         Name            =   "Yu Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   3525
      TabIndex        =   1
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   2295
      Left            =   0
      Picture         =   "Bebidas.frx":171E
      Stretch         =   -1  'True
      Top             =   -480
      Width           =   8175
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu Eliminar 
         Caption         =   "&Eliminar"
      End
      Begin VB.Menu Actualizar 
         Caption         =   "&Actualizar"
      End
   End
End
Attribute VB_Name = "Bebidas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim id_bebidas As Integer

Private Sub Actualizar_Click()
ActualizarBebidas.Visible = True
IngresarBebidas.Visible = False
bebidas.Locked = True
id_bebidas = ListView1.SelectedItem.SubItems(1)
bebidas.Text = ListView1.SelectedItem.SubItems(2)
precio.Text = Mid(ListView1.SelectedItem.SubItems(3), 2, Len(ListView1.SelectedItem.SubItems(3)))
bebidas.ForeColor = vbBlack
precio.ForeColor = vbBlack
opc_movimiento = 0
End Sub

Private Sub ActualizarBebidas_Click()
Screen.MousePointer = vbHourglass

On Error GoTo MensajeError

If bebidas.Text = "" Or bebidas.Text = "Ingrese Bebida" Or precio.Text = "" Then
    Error -2147217900
End If

sql = "exec sp_bebidas '" & bebidas.Text & "'," & precio.Text & ",2," & id_bebidas
Cargar_List sql, ListView1, 3
bebidas.Text = ""
precio.Text = ""

On Error GoTo 0
Screen.MousePointer = vbDefault
ActualizarBebidas.Visible = False
IngresarBebidas.Visible = True
Exit Sub

MensajeError:
If Err.Number = -2147217900 Or Err.Number = 5 Then
    MsgBox " Ingrese la informacion de la bebida ", vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
Else
    MsgBox "Error " & Err.Description & "Número " & Err.Number, vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
End If
End Sub

Private Sub Bebidas_Click()
If opc_movimiento = 1 Then
    bebidas.Text = ""
    bebidas.ForeColor = vbBlack
End If
End Sub

Private Sub Bebidas_KeyPress(KeyAscii As Integer)
If bebidas.Text = "Ingrese Bebida" Then
    bebidas.Text = ""
    bebidas.ForeColor = vbBlack
End If
If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
Or KeyAscii = 8 _
Or KeyAscii = 32 _
Then
Else
  KeyAscii = 0
End If
End Sub

Private Sub Eliminar_Click()
If ListView1.ListItems.Count <> 0 Then
    sql = "exec sp_bebidas @proceso = 3,@id_bebidas = " & ListView1.SelectedItem.SubItems(1)
    Cargar_List sql, ListView1, 3
End If
End Sub

Private Sub Form_Load()
sql = "exec sp_bebidas"
Cargar_List sql, ListView1, 3
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Unload Me
End Sub

Private Sub IngresarBebidas_Click()
Screen.MousePointer = vbHourglass

On Error GoTo MensajeError

If bebidas.Text = "" Or bebidas.Text = "Ingrese Bebida" Or precio.Text = "" Then
    Error -2147217900
End If

sql = "exec sp_bebidas '" & bebidas.Text & "'," & precio.Text & ",1"
Cargar_List sql, ListView1, 3
bebidas.Text = "Ingrese Bebida"
precio.Text = "Ingrese Precio"
bebidas.ForeColor = "&H8000000A"
precio.ForeColor = "&H8000000A"

On Error GoTo 0
Screen.MousePointer = vbDefault
Exit Sub

MensajeError:
If Err.Number = -2147217900 Or Err.Number = 5 Then
    MsgBox " Ingrese la informacion de la bebida ", vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
Else
    MsgBox "Error " & Err.Description & "Número " & Err.Number, vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
End If
End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

Private Sub Precio_Click()
If opc_movimiento = 1 Then
    precio.Text = ""
    precio.ForeColor = vbBlack
End If
End Sub

Private Sub precio_KeyPress(KeyAscii As Integer)
If precio.Text = "Ingrese Precio" Then
    precio.Text = "$ "
    precio.ForeColor = vbBlack
End If
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub


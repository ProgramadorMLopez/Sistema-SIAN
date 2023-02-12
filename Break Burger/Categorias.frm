VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Categoria 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Categorias"
   ClientHeight    =   5970
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7965
   Icon            =   "Categorias.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5970
   ScaleWidth      =   7965
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Height          =   4575
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   7695
      Begin VB.CommandButton BTNcateg_upd 
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
         Left            =   6360
         Picture         =   "Categorias.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   240
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.CommandButton BTNcateg 
         Caption         =   "&Ingresar"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   6360
         Picture         =   "Categorias.frx":1194
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   240
         Width           =   1215
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   3255
         Left            =   120
         TabIndex        =   5
         Top             =   1200
         Width           =   7455
         _ExtentX        =   13150
         _ExtentY        =   5741
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483637
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
      Begin VB.TextBox categTXT 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   315
         Left            =   120
         TabIndex        =   4
         Text            =   "Ingrese Categoria de Menu"
         Top             =   480
         Width           =   4695
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nombre de categoria"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   195
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1800
      End
   End
   Begin VB.Line Line3 
      Index           =   0
      X1              =   2280
      X2              =   5640
      Y1              =   1200
      Y2              =   1200
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
      Left            =   2400
      TabIndex        =   1
      Top             =   480
      Width           =   3180
   End
   Begin VB.Line Line4 
      X1              =   2280
      X2              =   5640
      Y1              =   480
      Y2              =   480
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
      Left            =   2760
      TabIndex        =   0
      Top             =   120
      Width           =   2460
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
Attribute VB_Name = "Categoria"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim id_categoria As Integer

Private Sub Actualizar_Click()
BTNcateg_upd.Visible = True
BTNcateg.Visible = False
categTXT.Text = ListView1.SelectedItem.SubItems(2)
id_categoria = ListView1.SelectedItem.SubItems(1)
categTXT.ForeColor = vbBlack
opc_movimiento = 0
End Sub

Private Sub BTNcateg_Click()
Screen.MousePointer = vbHourglass

On Error GoTo MensajeError

If categTXT.Text = "" Then
    Error -2147217900
End If
sql = "exec sp_categoria '" & categTXT.Text & "',1"
Cargar_List sql, ListView1, 2
categTXT.Text = ""

On Error GoTo 0
Screen.MousePointer = vbDefault
Exit Sub

MensajeError:
If Err.Number = -2147217900 Or Err.Number = 5 Then
    MsgBox "Ingrese Categoria", vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
Else
    MsgBox "Error " & Err.Description & "Número " & Err.Number, vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
End If
End Sub

Private Sub BTNcateg_upd_Click()
Screen.MousePointer = vbHourglass

On Error GoTo MensajeError

If categTXT.Text = "" Then
    Error -2147217900
End If

sql = "exec sp_categoria '" & categTXT.Text & "',2," & id_categoria
Cargar_List sql, ListView1, 2
categTXT.Text = ""

On Error GoTo 0
Screen.MousePointer = vbDefault
BTNcateg_upd.Visible = False
BTNcateg.Visible = True
Exit Sub

MensajeError:
If Err.Number = -2147217900 Or Err.Number = 5 Then
    MsgBox "Ingrese Categoria", vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
Else
    MsgBox "Error " & Err.Description & "Número " & Err.Number, vbCritical, "BreakBurger"
    Screen.MousePointer = vbDefault
End If
End Sub

Private Sub categTXT_Click()
If opc_movimiento = 1 Then
    categTXT.Text = ""
    categTXT.ForeColor = vbBlack
End If
End Sub


Private Sub categTXT_KeyPress(KeyAscii As Integer)
If categTXT.Text = "Ingrese Categoria de Menu" Then
    categTXT.Text = ""
    categTXT.ForeColor = vbBlack
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
    sql = "exec sp_categoria @proceso = 3,@id_categoria = " & ListView1.SelectedItem.SubItems(1)
    Cargar_List sql, ListView1, 2
End If
End Sub

Private Sub Form_Load()
sql = "exec sp_categoria"
Cargar_List sql, ListView1, 2
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
Combo FormMenu_Ingreso.Categorias, sql, FormMenu_Ingreso
Unload Me
End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

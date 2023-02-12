VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form FormMenu_Ingreso 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ingreso de menus"
   ClientHeight    =   10095
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   18225
   Icon            =   "FormMenu.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10095
   ScaleWidth      =   18225
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command3 
      Caption         =   "Bebidas"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3480
      Picture         =   "FormMenu.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Adicionales"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2280
      Picture         =   "FormMenu.frx":1194
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton MenuCateg 
      Caption         =   "Categoria"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1200
      Picture         =   "FormMenu.frx":1A5E
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   1680
      Width           =   975
   End
   Begin VB.CommandButton Salir 
      Caption         =   "&Salir"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12360
      Picture         =   "FormMenu.frx":2328
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton NewMenu 
      Caption         =   "Ingresar Menu"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      Picture         =   "FormMenu.frx":2BF2
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   1680
      Width           =   975
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Menu Activo"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   960
      Value           =   1  'Checked
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1335
      Left            =   0
      TabIndex        =   1
      Top             =   -120
      Width           =   13335
      Begin VB.ComboBox Categorias 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   9120
         TabIndex        =   6
         Text            =   "Categorias"
         Top             =   600
         Width           =   4215
      End
      Begin VB.TextBox TXTPrecio 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6720
         TabIndex        =   4
         Top             =   600
         Width           =   2295
      End
      Begin VB.TextBox TXTDesc 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   6495
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Categoria"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   9120
         TabIndex        =   10
         Top             =   360
         Width           =   945
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Precio"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   6720
         TabIndex        =   5
         Top             =   360
         Width           =   570
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Descripcion"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   1065
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   5655
      Left            =   0
      TabIndex        =   0
      Top             =   4440
      Width           =   18255
      _ExtentX        =   32200
      _ExtentY        =   9975
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   8388608
      BackColor       =   -2147483624
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Image Image1 
      Height          =   4455
      Left            =   13440
      Picture         =   "FormMenu.frx":34BC
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4815
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
      Left            =   555
      TabIndex        =   16
      Top             =   3240
      Width           =   2460
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   3480
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line3 
      Index           =   0
      X1              =   120
      X2              =   3480
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Line Line2 
      X1              =   18000
      X2              =   18000
      Y1              =   0
      Y2              =   4440
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   18000
      Y1              =   1560
      Y2              =   1560
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
      Left            =   240
      TabIndex        =   8
      Top             =   3600
      Width           =   3060
   End
   Begin VB.Label FechadeHoy 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7440
      TabIndex        =   7
      Top             =   4080
      Width           =   4695
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
Attribute VB_Name = "FormMenu_Ingreso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim IDMenu As Integer

Private Sub Actualizar_Click()
Dim i As Integer
Dim z As Integer
Dim num As String
IDMenu = ListView1.SelectedItem.SubItems(1)
txtdesc.Text = ListView1.SelectedItem.SubItems(2)
TXTPrecio.Text = Trim(Mid(ListView1.SelectedItem.SubItems(3), 2, Len(ListView1.SelectedItem.SubItems(3))))
NewMenu.Caption = "Actualizar Menu"
z = 0
For i = 0 To Categorias.ListCount - 1
    For z = 1 To 3
        If Right(num, 1) <> "-" Then
            num = Left(Categorias.List(i), z)
        End If
    Next z
    If num = ListView1.SelectedItem.SubItems(5) & "-" Then
        Categorias.Text = Categorias.List(i)
        cod_menu = 2 'actualizar menu mismo boton
        Exit Sub
    End If
num = ""
Next i
End Sub

Private Sub Command2_Click()
Adicionales.Show
End Sub

Private Sub Command3_Click()
Bebidas.Show
End Sub


Private Sub Eliminar_Click()
sql = "exec sp_masivo_menu 3,@id_menu = " & ListView1.SelectedItem.SubItems(1)
Cargar_List sql, ListView1, 1
End Sub

Private Sub Form_Load()
Dim a As Date
DisableX FormMenu_Ingreso.hwnd 'LLAMA AL BLOQUEO DE (X)
FechadeHoy.Caption = Format(Date, "Long Date")
sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
Combo Categorias, sql, Me
cod_menu = 1
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Inicio.Show
Me.Hide
End Sub

Private Sub Image2_Click()

End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

Private Sub MenuCateg_Click()
Categorias.Clear
Categoria.Show
End Sub

Private Sub NewMenu_Click()
Screen.MousePointer = vbHourglass

If cod_menu = 1 Then
    If Trim(txtdesc.Text) = "" Or Trim(TXTPrecio.Text) = "" Or Categorias.Text = "Categorias" Then
        MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
        Screen.MousePointer = vbDefault
        Exit Sub
    End If
    sql = "exec sp_masivo_menu 1,'" & txtdesc.Text & "'," & TXTPrecio.Text & "," & Categorias.ItemData(Categorias.ListIndex) & ",1"
    Cargar_List sql, ListView1, 1
    
    
    txtdesc.Text = ""
    TXTPrecio.Text = ""
    Categorias.Clear
    sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
    Combo Categorias, sql, Me
Else
    If Trim(txtdesc.Text) = "" Or Trim(TXTPrecio.Text) = "" Or Categorias.Text = "Categorias" Then
        MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
        Screen.MousePointer = vbDefault
        Exit Sub
    End If
    sql = "exec sp_masivo_menu 2,'" & txtdesc.Text & "'," & TXTPrecio.Text & ",null," & Check1.Value & "," & IDMenu
    Cargar_List sql, ListView1, 1
    
    txtdesc.Text = ""
    TXTPrecio.Text = ""
    Categorias.Clear
    sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
    Combo Categorias, sql, Me
    cod_menu = 1
    NewMenu.Caption = "Ingresar Nuevo Menu"
End If

Screen.MousePointer = vbDefault

End Sub

Private Sub Salir_Click()
Inicio.Show
Unload Me
End Sub

Private Sub TXTDesc_KeyPress(KeyAscii As Integer)
If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
Or KeyAscii = 8 _
Or KeyAscii = 32 _
Then
Else
  KeyAscii = 0
End If
End Sub

Private Sub TXTPrecio_KeyPress(KeyAscii As Integer)
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub

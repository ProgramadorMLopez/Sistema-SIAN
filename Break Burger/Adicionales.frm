VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Adicionales 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ingreso de adicionales"
   ClientHeight    =   8565
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7095
   Icon            =   "Adicionales.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8565
   ScaleWidth      =   7095
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   5535
      Left            =   0
      TabIndex        =   2
      Top             =   3000
      Width           =   7095
      Begin VB.CommandButton BTNActualizar 
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
         Left            =   5640
         Picture         =   "Adicionales.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   720
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.CommandButton Ingresar 
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
         Left            =   5640
         Picture         =   "Adicionales.frx":1194
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox precio 
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
         TabIndex        =   7
         Top             =   960
         Width           =   3615
      End
      Begin VB.TextBox txtdesc 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   6855
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   3855
         Left            =   0
         TabIndex        =   5
         Top             =   1680
         Width           =   7095
         _ExtentX        =   12515
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
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Precio $$$"
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
         TabIndex        =   6
         Top             =   720
         Width           =   990
      End
      Begin VB.Label Label3 
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
         Top             =   120
         Width           =   1065
      End
   End
   Begin VB.Image Image1 
      Height          =   3015
      Left            =   0
      Picture         =   "Adicionales.frx":1A5E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   2775
   End
   Begin VB.Line Line2 
      X1              =   3000
      X2              =   6480
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line1 
      X1              =   3000
      X2              =   6480
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Label Label2 
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
      Left            =   3240
      TabIndex        =   1
      Top             =   1200
      Width           =   3060
   End
   Begin VB.Label Label1 
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
      Left            =   3480
      TabIndex        =   0
      Top             =   840
      Width           =   2460
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
Attribute VB_Name = "Adicionales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim idadicional As Integer

Private Sub Actualizar_Click()
idadicional = ListView1.SelectedItem.SubItems(1)
txtdesc.Text = ListView1.SelectedItem.SubItems(2)
precio.Text = Trim(Mid(ListView1.SelectedItem.SubItems(3), 2, Len(ListView1.SelectedItem.SubItems(3))))
BTNActualizar.Visible = True
End Sub

Private Sub BTNActualizar_Click()
If Trim(txtdesc.Text) = "" Or Trim(precio.Text) = "" Then
    MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
    Screen.MousePointer = vbDefault
    Exit Sub
End If

sql = "exec sp_adicionales 2,'" & txtdesc.Text & "'," & precio.Text & "," & idadicional
Cargar_List sql, ListView1, 4
    
txtdesc.Text = ""
precio.Text = ""
BTNActualizar.Visible = False
End Sub

Private Sub Eliminar_Click()
If ListView1.ListItems.Count <> 0 Then
    sql = "exec sp_adicionales @id_proceso = 3,@id_adc = " & ListView1.SelectedItem.SubItems(1)
    Cargar_List sql, ListView1, 4
End If
End Sub

Private Sub Form_Load()
sql = "exec sp_adicionales"
Cargar_List sql, ListView1, 4
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Unload Me
End Sub

Private Sub Ingresar_Click()
Screen.MousePointer = vbHourglass


If Trim(txtdesc.Text) = "" Or Trim(precio.Text) = "" Then
    MsgBox "Ingrese los datos que deseas cargar", vbInformation, "Break Burger"
    Screen.MousePointer = vbDefault
    Exit Sub
End If
sql = "exec sp_adicionales 1,'" & txtdesc.Text & "'," & precio.Text
Cargar_List sql, ListView1, 4


txtdesc.Text = ""
precio.Text = ""


Screen.MousePointer = vbDefault
End Sub


Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

Private Sub precio_KeyPress(KeyAscii As Integer)
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub

Private Sub TXTDesc_KeyPress(KeyAscii As Integer)
'If (UCase(Chr(KeyAscii)) < "A" Or UCase(Chr(KeyAscii)) > "Z") And _
'    Chr(KeyAscii) <> vbBack Then
'    KeyAscii = 0
'Else
'    KeyAscii = ValidarKey_Texto(KeyAscii, txtdesc)
'End If
If (UCase$(Chr(KeyAscii)) <> LCase$(Chr(KeyAscii))) _
Or KeyAscii = 8 _
Or KeyAscii = 32 _
Then
Else
  KeyAscii = 0
End If
End Sub

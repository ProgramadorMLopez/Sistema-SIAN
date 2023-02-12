VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Login"
   ClientHeight    =   6975
   ClientLeft      =   2790
   ClientTop       =   3090
   ClientWidth     =   9585
   Icon            =   "frmLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4121.06
   ScaleMode       =   0  'User
   ScaleWidth      =   8999.796
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtUserName 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   5520
      TabIndex        =   1
      Top             =   1920
      Width           =   3525
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "Aceptar"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5640
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4440
      Width           =   1380
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   7560
      TabIndex        =   5
      Top             =   4440
      Width           =   1380
   End
   Begin VB.TextBox txtPassword 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   5520
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   3240
      Width           =   3555
   End
   Begin VB.Image Image3 
      Height          =   1335
      Left            =   6720
      Picture         =   "frmLogin.frx":08CA
      Stretch         =   -1  'True
      Top             =   4920
      Width           =   1215
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "De Negocios"
      BeginProperty Font 
         Name            =   "Myanmar Text"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   9
      Top             =   840
      Width           =   3495
   End
   Begin VB.Image Image2 
      Height          =   375
      Left            =   7320
      Picture         =   "frmLogin.frx":7AC6
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sistema Integral Para La Administracion "
      BeginProperty Font 
         Name            =   "Myanmar Text"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   5640
      TabIndex        =   8
      Top             =   600
      Width           =   3525
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "SIAN"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Left            =   5160
      TabIndex        =   7
      Top             =   120
      Width           =   4335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000A&
      BorderWidth     =   4
      Index           =   1
      X1              =   5182.981
      X2              =   8450.513
      Y1              =   2126.999
      Y2              =   2126.999
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000A&
      BorderWidth     =   4
      Index           =   0
      X1              =   5182.981
      X2              =   8450.513
      Y1              =   1347.099
      Y2              =   1347.099
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Break Burger"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Left            =   120
      TabIndex        =   6
      Top             =   6480
      Width           =   4890
   End
   Begin VB.Image Image1 
      Height          =   6975
      Left            =   0
      Picture         =   "frmLogin.frx":8390
      Stretch         =   -1  'True
      Top             =   0
      Width           =   5055
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&Nombre de usuario:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   270
      Index           =   0
      Left            =   5520
      TabIndex        =   0
      Top             =   1440
      Width           =   2040
   End
   Begin VB.Label lblLabels 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Contraseña:"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000010&
      Height          =   240
      Index           =   1
      Left            =   5520
      TabIndex        =   2
      Top             =   2760
      Width           =   1215
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Public LoginSucceeded As Boolean

Private Sub cmdCancel_Click()
    'establecer la variable global a false
    'para indicar un inicio de sesión fallido
'    LoginSucceeded = False
'    Me.Hide
End
End Sub

Private Sub cmdOK_Click()
'comprobar si la contraseña es correcta
If txtPassword <> "" Or txtUserName.Text <> "" Then
    sql = "select count(1) from tusuarios where txt_nombre ='" & txtUserName.Text & "'and contrasenia='" & txtPassword.Text & "'"
    Call BuscaConexion(sql)
    If rs(0) = 1 Then
'        LoginSucceeded = True
        Set rs = Nothing
        Set cn = Nothing
        Usuario = txtUserName.Text
        Inicio.Show
        Me.Hide
    Else
        MsgBox "Usuario incorrecto", vbCritical, "Inicio de sesion"
        txtPassword.Text = ""
        txtUserName.Text = ""
    End If
Else
    MsgBox "Ingrese un usuario", vbExclamation, "Inicio de sesión"
    txtPassword.SetFocus
    'SendKeys "{Home}+{End}"
End If
End Sub


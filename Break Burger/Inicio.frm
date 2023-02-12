VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Inicio 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Break Burger - Inicio"
   ClientHeight    =   9810
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   20280
   Icon            =   "Inicio.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9810
   ScaleWidth      =   20280
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   120
      Top             =   8640
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame FrameMenus 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'None
      ForeColor       =   &H8000000F&
      Height          =   2415
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   20775
      Begin VB.Frame Frame2 
         BackColor       =   &H00E0E0E0&
         Height          =   2055
         Left            =   8640
         TabIndex        =   8
         Top             =   240
         Width           =   3135
         Begin VB.CommandButton MenuClientes 
            BackColor       =   &H00E0E0E0&
            Height          =   735
            Left            =   1080
            Picture         =   "Inicio.frx":08CA
            Style           =   1  'Graphical
            TabIndex        =   9
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label8 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "detalle de los clientes"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   135
            TabIndex        =   14
            Top             =   1680
            Width           =   2805
         End
         Begin VB.Label Label7 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Registrar, eliminar o actualizar"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   120
            TabIndex        =   13
            Top             =   1440
            Width           =   2895
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "&Clientes"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   120
            TabIndex        =   10
            Top             =   1080
            Width           =   2835
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00E0E0E0&
         Height          =   2055
         Left            =   5400
         TabIndex        =   5
         Top             =   240
         Width           =   3135
         Begin VB.CommandButton IngresarMenu 
            BackColor       =   &H00E0E0E0&
            Height          =   735
            Left            =   1050
            Picture         =   "Inicio.frx":1194
            Style           =   1  'Graphical
            TabIndex        =   6
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "detalle de los menus"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   120
            TabIndex        =   12
            Top             =   1680
            Width           =   2835
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Registrar, eliminar o actualizar"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   120
            TabIndex        =   11
            Top             =   1440
            Width           =   2895
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "&Menu"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   270
            Left            =   1200
            TabIndex        =   7
            Top             =   1080
            Width           =   675
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00E0E0E0&
         Height          =   2055
         Left            =   11880
         TabIndex        =   2
         Top             =   240
         Width           =   3135
         Begin VB.CommandButton MenuVenta 
            BackColor       =   &H00E0E0E0&
            Height          =   735
            Left            =   1080
            Picture         =   "Inicio.frx":1A5E
            Style           =   1  'Graphical
            TabIndex        =   3
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "dos formas de pago"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   120
            TabIndex        =   16
            Top             =   1680
            Width           =   2865
         End
         Begin VB.Label Label9 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Realice una venta con"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Left            =   165
            TabIndex        =   15
            Top             =   1440
            Width           =   2805
         End
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "&Ventas"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   600
            TabIndex        =   4
            Top             =   1080
            Width           =   1935
         End
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Height          =   570
      Left            =   0
      TabIndex        =   0
      Top             =   9240
      Width           =   20295
      _ExtentX        =   35798
      _ExtentY        =   1005
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Bevel           =   0
            Enabled         =   0   'False
            Object.Width           =   17859
            Picture         =   "Inicio.frx":2328
            Text            =   "asdasd"
            TextSave        =   "asdasd"
            Object.ToolTipText     =   "a"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Bevel           =   0
            Object.Width           =   17859
            Text            =   "                                                                Marcos Antonio Lopez - programadormlopez@gmail.com / 1154251100 "
            TextSave        =   "                                                                Marcos Antonio Lopez - programadormlopez@gmail.com / 1154251100 "
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Image Image1 
      Height          =   2055
      Left            =   9240
      Picture         =   "Inicio.frx":2C02
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "SIAN"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   20
      Top             =   3480
      Width           =   20295
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "De Negocios"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   19
      Top             =   4560
      Width           =   20295
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Sistema Integral Para La Administracion "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   18
      Top             =   4200
      Width           =   20295
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Bienvenido(a) al control de ventas"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   17
      Top             =   3000
      Width           =   20295
   End
   Begin VB.Menu Busqueda 
      Caption         =   "Busqueda General"
      Begin VB.Menu Menu 
         Caption         =   "Menu"
      End
      Begin VB.Menu Clientes 
         Caption         =   "Clientes"
      End
      Begin VB.Menu Cierre 
         Caption         =   "Cierre"
      End
   End
End
Attribute VB_Name = "Inicio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Cierre_Click()
cierreGral.Show
Me.Hide
End Sub

Private Sub CLIENTES_Click()
ClienteBusqueda.Show
Me.Hide
End Sub


Private Sub Form_Load()
'StatusBar1.SimpleText = "Usuario conectado: " & Usuario
StatusBar1.Panels(1).Text = "Usuario conectado: " & Usuario
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
End
End Sub

Private Sub IngresarMenu_Click()
opc_movimiento = 1
FormMenu_Ingreso.Show
sql = "exec sp_masivo_menu"
Cargar_List sql, FormMenu_Ingreso.ListView1, 1
Me.Hide
End Sub

Private Sub MultiPage1_Change()

End Sub

Private Sub Menu_Click()
MenuBusqueda.Show
Me.Hide
End Sub

Private Sub MenuClientes_Click()
cliente.Show
Me.Hide
cod_movimiento = 0
End Sub

'Private Sub TabStrip1_Click()
'If TabStrip1.Tabs(1).Selected = True Then
'    FrameMenus.Visible = True
'ElseIf TabStrip1.Tabs(2).Selected = True Then
'    FrameMenus.Visible = False
'End If
'End Sub

Private Sub MenuVenta_Click()
Ventas.Show
Me.Hide
End Sub


VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form CierreCaja 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cierre"
   ClientHeight    =   8655
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10815
   Icon            =   "Cierre.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8655
   ScaleWidth      =   10815
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Height          =   1695
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   5655
      Begin VB.TextBox Importe 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2040
         TabIndex        =   10
         Text            =   "$00,00"
         Top             =   240
         Width           =   3495
      End
      Begin VB.TextBox EfectivoTXT 
         Alignment       =   2  'Center
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
         Left            =   2040
         TabIndex        =   9
         Text            =   "$00,00"
         Top             =   720
         Width           =   3495
      End
      Begin VB.TextBox mpTXT 
         Alignment       =   2  'Center
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
         Left            =   2040
         TabIndex        =   8
         Text            =   "$00,00"
         Top             =   1200
         Width           =   3495
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Importe del cierre:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   13
         Top             =   300
         Width           =   2295
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Efectivo:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   120
         TabIndex        =   12
         Top             =   720
         Width           =   870
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Mercado Pago:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   120
         TabIndex        =   11
         Top             =   1200
         Width           =   1470
      End
   End
   Begin MSComctlLib.ListView ListView4 
      Height          =   3255
      Left            =   5400
      TabIndex        =   6
      Top             =   5280
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5741
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
   Begin MSComctlLib.ListView ListView3 
      Height          =   3255
      Left            =   120
      TabIndex        =   5
      Top             =   5280
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   5741
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
   Begin MSComctlLib.ListView ListView2 
      Height          =   3255
      Left            =   5400
      TabIndex        =   4
      Top             =   1920
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5741
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
   Begin VB.Frame Frame2 
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   0
      Width           =   7935
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
         Min             =   1
         Scrolling       =   1
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3255
      Left            =   120
      TabIndex        =   1
      Top             =   1920
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   5741
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
   Begin VB.CommandButton Comprobante 
      Caption         =   "&Comprobante"
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
      Left            =   5880
      Picture         =   "Cierre.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   -240
      Top             =   -240
   End
   Begin VB.Line Line1 
      X1              =   10560
      X2              =   7680
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Line Line3 
      Index           =   0
      X1              =   7680
      X2              =   10560
      Y1              =   1080
      Y2              =   1080
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
      Left            =   7920
      TabIndex        =   15
      Top             =   720
      Width           =   2460
   End
   Begin VB.Label TITULO 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "BREAK BURGER"
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   1
      Left            =   7800
      TabIndex        =   14
      Top             =   1080
      Width           =   2625
   End
End
Attribute VB_Name = "CierreCaja"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Comprobante_Click()
comprobante_cierre.Show
End Sub

Private Sub Form_Load()
Me.Width = 8310
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Dim Fin As Integer
Frame1.Visible = False
Me.Height = 1215

If ProgressBar1.Value = 100 Then                                               ' Si tiene el valor 100....
    Timer1.Enabled = False                                                            ' Se para....
    sql = "EXEC sp_cierre_ventas"
    Call BuscaConexion(sql)
    If rs(0) = "ERROR" Then
        MsgBox rs(1), vbCritical, "Break Burger"
        Set rs = Nothing
        Set cn = Nothing
        Me.Hide
    Else
        MsgBox rs(0), vbInformation, "Break Burger"
        Me.Height = 9090
        Me.Width = 10935
        Frame1.Visible = True
        Frame2.Visible = False
        Importe.Text = "$" & Format$(Val(rs(1)), "##,#0.00")
        EfectivoTXT.Text = "$" & Format$(Val(rs(2)), "##,#0.00")
        mpTXT.Text = "$" & Format$(Val(rs(3)), "##,#0.00")
        Set rs = Nothing
        Set cn = Nothing
        sql = "select upper(txt_desc) Menu,Cantidad,concat('$',sum (total * Cantidad))Total from TMP_MENU group by txt_desc,Cantidad"
        Cargar_Cierre sql, ListView1, 1
        sql = "select upper(txt_desc) Adicionales,Cantidad,concat('$',sum (total * Cantidad))Total from TMP_ADICIONALES group by txt_desc,Cantidad"
        Cargar_Cierre sql, ListView2, 2
        sql = "select upper(txt_desc) AdicionalesPapas,Cantidad,concat('$',sum (total * Cantidad))Total from TMP_ADICIONALESP  group by txt_desc,Cantidad"
        Cargar_Cierre sql, ListView3, 3
        sql = "select upper(txt_desc) Bebidas,Cantidad,concat('$',sum (total * Cantidad))Total from TMP_BEBIDAS  group by txt_desc,Cantidad"
        Cargar_Cierre sql, ListView4, 4
    End If
Else
    ProgressBar1.Value = (ProgressBar1.Value) + Val(1)             ' Va sumandole los valores
    End If
End Sub

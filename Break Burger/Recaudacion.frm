VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Recaudacion 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Recaudacion"
   ClientHeight    =   4470
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14040
   Icon            =   "Recaudacion.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4470
   ScaleWidth      =   14040
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   13815
      Begin VB.CommandButton cargar 
         Caption         =   "&Carga"
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
         Left            =   2280
         Picture         =   "Recaudacion.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   600
         Width           =   975
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   1335
         Left            =   5160
         TabIndex        =   14
         Top             =   2760
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   2355
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
      Begin VB.TextBox TOTAL 
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
         Left            =   5160
         TabIndex        =   13
         Text            =   "$00,00"
         Top             =   2280
         Width           =   8535
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H00C0E0FF&
         BorderStyle     =   0  'None
         Height          =   615
         Left            =   5160
         TabIndex        =   11
         Top             =   1680
         Width           =   8535
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Importe Total Recaudado Hasta La Fecha"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   12
            Top             =   120
            Width           =   8295
         End
      End
      Begin VB.TextBox MP 
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
         Left            =   5160
         TabIndex        =   10
         Text            =   "$00,00"
         Top             =   1200
         Width           =   4335
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00C0C0FF&
         BorderStyle     =   0  'None
         Height          =   975
         Left            =   5160
         TabIndex        =   8
         Top             =   240
         Width           =   4335
         Begin VB.Label Label4 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Mercado Pago"
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
            Left            =   0
            TabIndex        =   9
            Top             =   360
            Width           =   4335
         End
      End
      Begin VB.TextBox ET 
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
         Left            =   9600
         TabIndex        =   7
         Text            =   "$00,00"
         Top             =   1200
         Width           =   4095
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   975
         Left            =   9600
         TabIndex        =   5
         Top             =   240
         Width           =   4095
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "EFECTIVO"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   6
            Top             =   360
            Width           =   3855
         End
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   1200
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   144179203
         UpDown          =   -1  'True
         CurrentDate     =   44817
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   144179203
         UpDown          =   -1  'True
         CurrentDate     =   44817
      End
      Begin VB.Line Line4 
         X1              =   720
         X2              =   3840
         Y1              =   3600
         Y2              =   3600
      End
      Begin VB.Line Line3 
         Index           =   0
         X1              =   720
         X2              =   3840
         Y1              =   2880
         Y2              =   2880
      End
      Begin VB.Label TITULO 
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
         Height          =   525
         Index           =   1
         Left            =   720
         TabIndex        =   16
         Top             =   2880
         Width           =   3060
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Sabemos lo que te gusta !!"
         BeginProperty Font 
            Name            =   "MV Boli"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   720
         TabIndex        =   15
         Top             =   2400
         Width           =   3090
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Hasta"
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
         Left            =   240
         TabIndex        =   4
         Top             =   960
         Width           =   1170
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Desde"
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
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   1215
      End
   End
End
Attribute VB_Name = "Recaudacion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cargar_Click()
sql = "exec sp_recaudacion 2,'" & Format(DTPicker1.Value, "yyyyMMdd") & "','" & Format(DTPicker2.Value, "yyyyMMdd") & "'"
Cargar_List sql, ListView1, 9
End Sub

Private Sub Form_Load()
sql = "exec sp_recaudacion 1"
Call BuscaConexion(sql)
If Not rs(0) Then
    ET.Text = "$" & Format$(Val(rs(0)), "##,#0.00")
    MP.Text = "$" & Format$(Val(rs(1)), "##,#0.00")
    TOTAL.Text = "$" & Format$(Val(rs(2)), "##,#0.00")
End If
Set rs = Nothing
Set cn = Nothing
End Sub

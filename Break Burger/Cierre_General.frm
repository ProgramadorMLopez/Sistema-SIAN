VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form CierreGral 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Consulta de cierres"
   ClientHeight    =   8775
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10935
   Icon            =   "Cierre_General.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8775
   ScaleWidth      =   10935
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cargar 
      Caption         =   "&Cargar"
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
      Left            =   6840
      Picture         =   "Cierre_General.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   1080
      Width           =   1215
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
      Left            =   5520
      Picture         =   "Cierre_General.frx":1194
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   1695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
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
         TabIndex        =   3
         Text            =   "$00,00"
         Top             =   1200
         Width           =   3015
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
         TabIndex        =   2
         Text            =   "$00,00"
         Top             =   720
         Width           =   3015
      End
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
         TabIndex        =   1
         Text            =   "$00,00"
         Top             =   240
         Width           =   3015
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
         TabIndex        =   6
         Top             =   1200
         Width           =   1470
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
         TabIndex        =   5
         Top             =   720
         Width           =   870
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
         TabIndex        =   4
         Top             =   300
         Width           =   2295
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3255
      Left            =   120
      TabIndex        =   8
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
   Begin MSComctlLib.ListView ListView3 
      Height          =   3255
      Left            =   120
      TabIndex        =   9
      Top             =   5400
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
      Left            =   5520
      TabIndex        =   10
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
   Begin MSComctlLib.ListView ListView4 
      Height          =   3255
      Left            =   5520
      TabIndex        =   11
      Top             =   5400
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
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   375
      Left            =   5520
      TabIndex        =   12
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
      Format          =   171180035
      UpDown          =   -1  'True
      CurrentDate     =   44817
   End
   Begin MSComCtl2.DTPicker DTPicker2 
      Height          =   375
      Left            =   7200
      TabIndex        =   13
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
      Format          =   171180035
      UpDown          =   -1  'True
      CurrentDate     =   44817
   End
   Begin VB.Line Line2 
      X1              =   8280
      X2              =   10800
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Line Line1 
      X1              =   8280
      X2              =   10800
      Y1              =   1320
      Y2              =   1320
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
      Left            =   8280
      TabIndex        =   18
      Top             =   960
      Width           =   2460
   End
   Begin VB.Label TITULO 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "BREAK BURGER"
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Index           =   1
      Left            =   8520
      TabIndex        =   17
      Top             =   1320
      Width           =   2040
   End
   Begin VB.Label fec_hasta 
      AutoSize        =   -1  'True
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
      Left            =   7560
      TabIndex        =   15
      Top             =   240
      Width           =   1170
   End
   Begin VB.Label fec_Desde 
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
      Left            =   5520
      TabIndex        =   14
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "cierreGral"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cargar_Click()
sql = "EXEC sp_busqueda_cierre '" & Format(DTPicker1.Value, "yyyyMMdd") & "','" & Format(DTPicker2.Value, "yyyyMMdd") & "'"
Call BuscaConexion(sql)
If Not IsNull(rs(1)) Then
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
Else
    MsgBox "No realizo ventas en ese rango de fechas", vbInformation, "Break Burger"
End If
End Sub

Private Sub Comprobante_Click()
Comprobante_cierre_general.Show
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Inicio.Show
Unload Me
End Sub

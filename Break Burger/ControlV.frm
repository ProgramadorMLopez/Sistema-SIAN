VERSION 5.00
Begin VB.Form ControlV 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Control"
   ClientHeight    =   2670
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   16230
   Icon            =   "ControlV.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2670
   ScaleWidth      =   16230
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Height          =   735
      Left            =   120
      TabIndex        =   17
      Top             =   1800
      Width           =   15975
      Begin VB.CommandButton Calculadora 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         Picture         =   "ControlV.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   150
         Width           =   375
      End
      Begin VB.CommandButton end 
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
         Height          =   375
         Left            =   14280
         TabIndex        =   18
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   15975
      Begin VB.TextBox padicp 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   8520
         TabIndex        =   21
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox importeT 
         Alignment       =   2  'Center
         BackColor       =   &H80000018&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   13560
         TabIndex        =   16
         Top             =   1200
         Width           =   2295
      End
      Begin VB.TextBox penv 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   11880
         TabIndex        =   15
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox pbeb 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   10200
         TabIndex        =   14
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox padic 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   6840
         TabIndex        =   13
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox pmenus 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   5160
         TabIndex        =   12
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox nro_factura 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3480
         TabIndex        =   11
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox fecha 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1800
         TabIndex        =   4
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Adicionales P $"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   8520
         TabIndex        =   20
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Importe Total"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   13560
         TabIndex        =   10
         Top             =   840
         Width           =   2295
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Factura"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   3480
         TabIndex        =   9
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Envio $"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   11880
         TabIndex        =   8
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Bebidas $"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   10200
         TabIndex        =   7
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Adicionales $"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   6840
         TabIndex        =   6
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Menus $"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   5160
         TabIndex        =   5
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00000080&
         Caption         =   "Fecha"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   1800
         TabIndex        =   3
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Normal"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   120
         TabIndex        =   2
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Line Line1 
         X1              =   0
         X2              =   16440
         Y1              =   600
         Y2              =   600
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Control Automatico..."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   2130
      End
   End
End
Attribute VB_Name = "ControlV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Calculadora_Click()
Shell ("Calc.exe")
End Sub

Private Sub End_Click()
Unload Me
Ventas.Enabled = True
Ventas.Cobrar.Enabled = True
proceso_fin = 1 'YA SE PUEDE COBRAR
End Sub

Private Sub Form_Load()
DisableX ControlV.hwnd 'LLAMA AL BLOQUEO DE (X)
fecha.Text = Date
End Sub


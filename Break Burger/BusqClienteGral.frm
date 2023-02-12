VERSION 5.00
Begin VB.Form BusqClienteGral 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2205
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6030
   Icon            =   "BusqClienteGral.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2205
   ScaleWidth      =   6030
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5775
      Begin VB.OptionButton Option2 
         Caption         =   "Option2"
         Height          =   195
         Left            =   5400
         TabIndex        =   7
         Top             =   1080
         Width           =   255
      End
      Begin VB.TextBox ApeCliente 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   0
         TabIndex        =   6
         Top             =   960
         Width           =   5175
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Option1"
         Height          =   195
         Left            =   5400
         TabIndex        =   4
         Top             =   360
         Width           =   255
      End
      Begin VB.CommandButton Busqueda 
         Caption         =   "&Busqueda"
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
         Left            =   0
         TabIndex        =   3
         Top             =   1560
         Width           =   1215
      End
      Begin VB.TextBox NomCliente 
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
         Left            =   0
         TabIndex        =   2
         Top             =   240
         Width           =   5175
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Apellido de cliente"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   0
         TabIndex        =   5
         Top             =   720
         Width           =   1500
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Nombre de cliente"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   210
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   1515
      End
   End
End
Attribute VB_Name = "BusqClienteGral"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub BusqCliente_Change()

End Sub

Private Sub Busqueda_Click()
If Option1.Value = True Then
    sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
    sql = sql & " From tclientes WHERE txt_nombre_completo LIKE '" & NomCliente.Text & "%' "
    sql = sql & " ORDER BY id_clientes ASC"
ElseIf Option2.Value = True Then
    sql = "select '', id_clientes Cliente,txt_nombre_completo NombreCompleto,txt_dir Direccion,txt_tel Telefono,txt_desc Descripcion,CONVERT(DATE,fecha_ingreso) Fecha_Alta "
    sql = sql & " From tclientes WHERE txt_nombre_completo LIKE '%" & ApeCliente.Text & "' "
    sql = sql & " ORDER BY id_clientes ASC"
Else
    MsgBox "Seleccione una de las opciones de busqueda", vbInformation, "Break Burger"
End If
Cargar_List sql, cliente.ListView1, 5
End Sub

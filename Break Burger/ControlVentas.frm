VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form ControlVentas 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Control de Ventas"
   ClientHeight    =   8325
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   13500
   Icon            =   "ControlVentas.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8325
   ScaleWidth      =   13500
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   8415
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13575
      Begin VB.TextBox cantidad 
         Alignment       =   2  'Center
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   11160
         TabIndex        =   11
         Text            =   "20"
         Top             =   2400
         Width           =   615
      End
      Begin VB.TextBox Pagina 
         Alignment       =   2  'Center
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
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
         Left            =   9720
         TabIndex        =   10
         Text            =   "1"
         Top             =   2400
         Width           =   495
      End
      Begin VB.CommandButton End 
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
         Left            =   12480
         Picture         =   "ControlVentas.frx":08CA
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   1920
         Width           =   855
      End
      Begin VB.Frame Frame2 
         Height          =   495
         Left            =   0
         TabIndex        =   3
         Top             =   2280
         Width           =   1935
         Begin VB.CommandButton Ultimo 
            Height          =   495
            Left            =   1440
            Picture         =   "ControlVentas.frx":1194
            Style           =   1  'Graphical
            TabIndex        =   7
            Top             =   0
            Width           =   495
         End
         Begin VB.CommandButton Siguiente 
            Height          =   495
            Left            =   960
            Picture         =   "ControlVentas.frx":171E
            Style           =   1  'Graphical
            TabIndex        =   6
            Top             =   0
            Width           =   495
         End
         Begin VB.CommandButton Anterior 
            Height          =   495
            Left            =   480
            Picture         =   "ControlVentas.frx":1CA8
            Style           =   1  'Graphical
            TabIndex        =   5
            Top             =   0
            Width           =   495
         End
         Begin VB.CommandButton Primero 
            Height          =   495
            Left            =   0
            Picture         =   "ControlVentas.frx":2232
            Style           =   1  'Graphical
            TabIndex        =   4
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.ComboBox CLIENTES 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   2
         Text            =   "Clientes"
         Top             =   120
         Width           =   2535
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   5535
         Left            =   0
         TabIndex        =   1
         Top             =   2760
         Width           =   13455
         _ExtentX        =   23733
         _ExtentY        =   9763
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
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
      Begin VB.Line Line4 
         X1              =   5160
         X2              =   8520
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Line Line3 
         Index           =   0
         X1              =   5160
         X2              =   8520
         Y1              =   480
         Y2              =   480
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
         Left            =   5280
         TabIndex        =   13
         Top             =   480
         Width           =   3060
      End
      Begin VB.Label Label5 
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
         Left            =   5400
         TabIndex        =   12
         Top             =   120
         Width           =   2850
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Pagina de"
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
         Left            =   10200
         TabIndex        =   8
         Top             =   2400
         Width           =   975
      End
   End
End
Attribute VB_Name = "ControlVentas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim pag As Integer
Dim CantReg As Integer
Dim proceso As Integer



Private Sub CLIENTES_Click()
proceso = 2
If CLIENTES.Text = "TODOS..." Then
    proceso = 1
    sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & "," & pag
    Cargar_List sql, ListView1, 7
    sql = "SELECT CEILING(CONVERT(FLOAT,(select count(*)from ventas a inner join pago_venta b on b.nro_factura = a.nro_factura where b.pedidos <> 1 ))/" & CantReg & ")"
    Call BuscaConexion(sql)
    Pagina.Text = 1
    cantidad.Text = rs(0)
    Set rs = Nothing
    Set cn = Nothing
Else
    If CLIENTES.Text = "Otros" Then
        sql = "EXEC sp_consulta_ventas_pag " & proceso & "," & CantReg & "," & pag & ",0"
        Cargar_List sql, ListView1, 7
        sql = "SELECT CEILING(CONVERT(FLOAT,(select count(*)from ventas A "
        sql = sql & "INNER JOIN venta_x_clientes B ON B.nro_factura = A.nro_factura "
        sql = sql & "inner join pago_venta c on c.nro_factura = A.nro_factura "
        sql = sql & "where c.pedidos <> 1 and B.id_cliente = 0))/" & CantReg & ")"
        Call BuscaConexion(sql)
        Pagina.Text = 1
        cantidad.Text = rs(0)
        Set rs = Nothing
        Set cn = Nothing
    Else
        sql = "EXEC sp_consulta_ventas_pag " & proceso & "," & CantReg & "," & pag & ", " & CLIENTES.ItemData(CLIENTES.ListIndex)
        Cargar_List sql, ListView1, 7
        If ListView1.ListItems.Count = 0 Then
            Pagina.Text = 0
            cantidad.Text = 0
        Else
            sql = "SELECT CEILING(CONVERT(FLOAT,(select count(*)from ventas A "
            sql = sql & "INNER JOIN venta_x_clientes B ON B.nro_factura = A.nro_factura "
            sql = sql & "inner join pago_venta D on D.nro_factura = A.nro_factura "
            sql = sql & "LEFT JOIN tclientes C ON C.id_clientes = B.id_cliente where D.pedidos <> 1 and B.id_cliente = " & CLIENTES.ItemData(CLIENTES.ListIndex) & "))/" & CantReg & ")"
            Call BuscaConexion(sql)
            Pagina.Text = 1
            cantidad.Text = rs(0)
            Set rs = Nothing
            Set cn = Nothing
        End If
    End If
End If
End Sub

Private Sub End_Click()
Unload Me
End Sub

Private Sub Form_Load()
DisableX ControlVentas.hwnd 'LLAMA AL BLOQUEO DE (X)
CantReg = 10
pag = 1
proceso = 1
sql = "SELECT CEILING(CONVERT(FLOAT,(select count(*)from ventas a inner join pago_venta b on b.nro_factura = a.nro_factura where b.pedidos <> 1 ))/" & CantReg & ")"
Call BuscaConexion(sql)
cantidad.Text = rs(0)
Set rs = Nothing
Set cn = Nothing

CLIENTES.AddItem "TODOS..."
'NewIndex es el índice del elemento que se acaba de agregar
If CLIENTES.ItemData(CLIENTES.NewIndex) = -1 Then CLIENTES.ListIndex = 0
'CLIENTES.ItemData(CLIENTES.NewIndex) = -1
CLIENTES.AddItem "Otros"
'NewIndex es el índice del elemento que se acaba de agregar
If CLIENTES.ItemData(CLIENTES.NewIndex) = -1 Then CLIENTES.ListIndex = 0
'CLIENTES.ItemData(CLIENTES.NewIndex) = -1

sql = "select rtrim(ltrim(txt_nombre_completo)) Descripcion,id_clientes ID from tclientes "
Combo CLIENTES, sql, Me
CLIENTES.ListIndex = 0
sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & "," & pag
Cargar_List sql, ListView1, 7
End Sub


Private Sub Primero_Click()
If Pagina.Text > 1 Then
    If proceso = 1 Then
        sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & ",1"
    Else
        sql = "EXEC sp_consulta_ventas_pag 2," & CantReg & ",1," & CLIENTES.ItemData(CLIENTES.ListIndex)
    End If
    Cargar_List sql, ListView1, 7
    Pagina.Text = 1
End If
End Sub
Private Sub Anterior_Click()
If Pagina.Text > 1 Then
    If proceso = 1 Then
        sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & "," & Pagina.Text - 1
    Else
        sql = "EXEC sp_consulta_ventas_pag 2," & CantReg & "," & Pagina.Text - 1 & "," & CLIENTES.ItemData(CLIENTES.ListIndex)
    End If
    Cargar_List sql, ListView1, 7
    Pagina.Text = Pagina.Text - 1
End If
End Sub

Private Sub Siguiente_Click()
If Pagina.Text < cantidad.Text Then
    If proceso = 1 Then
        sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & "," & Pagina.Text + 1
    Else
        sql = "EXEC sp_consulta_ventas_pag 2," & CantReg & "," & Pagina.Text + 1 & "," & CLIENTES.ItemData(CLIENTES.ListIndex)
    End If
    Cargar_List sql, ListView1, 7
    Pagina.Text = Pagina.Text + 1
End If
End Sub

Private Sub Ultimo_Click()
If Pagina.Text < cantidad.Text Then
    If proceso = 1 Then
        sql = "EXEC sp_consulta_ventas_pag 1," & CantReg & "," & cantidad.Text
    Else
        sql = "EXEC sp_consulta_ventas_pag 2," & CantReg & "," & cantidad.Text & "," & CLIENTES.ItemData(CLIENTES.ListIndex)
    End If
    Cargar_List sql, ListView1, 7
    Pagina.Text = cantidad.Text
End If
End Sub

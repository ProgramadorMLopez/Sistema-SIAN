VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form MenuBusqueda 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Busqueda de Menu"
   ClientHeight    =   8400
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   13545
   Icon            =   "MenuBusqueda.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8400
   ScaleWidth      =   13545
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Limpiar 
      Caption         =   "&Limpiar Busqueda"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      Picture         =   "MenuBusqueda.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   960
      Width           =   855
   End
   Begin VB.CommandButton Excel 
      Caption         =   "&Exportar a Excel"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      Picture         =   "MenuBusqueda.frx":1194
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   960
      Width           =   855
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   13335
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   12840
         Top             =   1200
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.ComboBox Combo1 
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
         TabIndex        =   7
         Text            =   "Categorias"
         Top             =   360
         Width           =   3615
      End
      Begin VB.OptionButton Menor 
         Caption         =   "Menor Precio"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   7920
         TabIndex        =   6
         Top             =   400
         Width           =   1695
      End
      Begin VB.OptionButton Mayor 
         Caption         =   "Mayor Precio"
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
         Left            =   6240
         TabIndex        =   5
         Top             =   400
         Width           =   1575
      End
      Begin VB.TextBox BDesc 
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
         Left            =   0
         TabIndex        =   3
         Top             =   360
         Width           =   6015
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Buscar por categorias"
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
         Left            =   9720
         TabIndex        =   8
         Top             =   0
         Width           =   2055
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ordenar por precio"
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
         Left            =   6240
         TabIndex        =   4
         Top             =   0
         Width           =   1785
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Buscar por descripcion"
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
         Left            =   0
         TabIndex        =   2
         Top             =   0
         Width           =   2115
      End
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   6375
      Left            =   0
      TabIndex        =   0
      Top             =   2040
      Width           =   13575
      _ExtentX        =   23945
      _ExtentY        =   11245
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
End
Attribute VB_Name = "MenuBusqueda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub BDesc_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Busqueda_GeneralMenu
End If
End Sub
'FALTA ACA PARA ABAJO DE REESCRIBIR
Private Sub Combo1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
'    If Combo1.Text <> "Categorias" Then
'        sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'        sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
'        sql = sql & " ORDER BY id_menu ASC "
'    End If
'    Cargar_List sql, ListView1, 1
    Busqueda_GeneralMenu
End If
End Sub

Private Sub Command2_Click()

End Sub

Private Sub Command1_Click()

End Sub

Private Sub Excel_Click()
Exportar_Excel ListView1, CommonDialog1
End Sub

Private Sub Form_Load()
sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
Combo Combo1, sql, Me
sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY id_menu ASC "
Cargar_List sql, ListView1, 1
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Inicio.Show
Unload Me
End Sub

Private Sub Limpiar_Click()
BDesc.Text = ""
Mayor.Value = False
Menor.Value = False
Combo1.Clear
Combo1.Text = "Categorias"
sql = "select concat(id_categoria,'-',rtrim(ltrim(descripcion))) Descripcion,id_categoria ID from tcategorias_menu "
Combo Combo1, sql, Me
ListView1.ListItems.Clear
sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY id_menu ASC "
Cargar_List sql, ListView1, 1
End Sub

Private Sub Mayor_Click()
'If Mayor.Value = True Then
'    If BDesc.Text <> "" Then
'        sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'        sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' "
'        sql = sql & " ORDER BY precio_v DESC "
'        Cargar_List sql, ListView1, 1
'    Else
'        sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'        sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY precio_v DESC "
'        Cargar_List sql, ListView1, 1
'    End If
'Else
'    sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'    sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY id_menu DESC "
'    Cargar_List sql, ListView1, 1
'End If
Busqueda_GeneralMenu
End Sub

Private Sub Menor_Click()
'If Menor.Value = True Then
'    If BDesc.Text <> "" Then
'        sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'        sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' "
'        sql = sql & " ORDER BY precio_v ASC "
'        Cargar_List sql, ListView1, 1
'    Else
'        sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'        sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY precio_v ASC "
'        Cargar_List sql, ListView1, 1
'    End If
'Else
'    sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
'    sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu ORDER BY id_menu ASC "
'    Cargar_List sql, ListView1, 1
'End If
Busqueda_GeneralMenu
End Sub

Private Sub Busqueda_GeneralMenu()
    If BDesc.Text <> "" Then
    '1-------------CONTIENE UNA DESCRIPCION PARA LA BUSQUEDA-------------
        If Mayor.Value = True Then
        '2A----------CONTIENE LA OPCION ACTIVA DE PRECIO MAYOR----------
            If Combo1.Text <> "Categorias" Then
            '3-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' and id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY precio_v DESC "
            '3-------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' "
                sql = sql & " ORDER BY precio_v DESC "
            End If
        '2A------------------------------------------------------------
        ElseIf Menor.Value = True Then
        '2B----------CONTIENE LA OPCION ACTIVA DE PRECIO MENOR----------
            If Combo1.Text <> "Categorias" Then
            '3-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' and id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY precio_v ASC "
            '3-------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' "
                sql = sql & " ORDER BY precio_v ASC "
            End If
        '2A-------------------------------------------------------------
        Else
            If Combo1.Text <> "Categorias" Then
            '3-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' and id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY id_menu ASC"
            '3-------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE descripcion like '" & BDesc.Text & "%' "
                sql = sql & " ORDER BY id_menu ASC "
            End If
        End If
    '1-----------------------------------------------------------------
    Else
        If Mayor.Value = True Then
        '1A----------CONTIENE LA OPCION ACTIVA DE PRECIO MAYOR----------
            If Combo1.Text <> "Categorias" Then
            '2-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY precio_v DESC "
            '--------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu "
                sql = sql & " ORDER BY precio_v DESC "
            End If
        '1A-------------------------------------------------------------
        ElseIf Menor.Value = True Then
        '1B----------CONTIENE LA OPCION ACTIVA DE PRECIO MENOR----------
            If Combo1.Text <> "Categorias" Then
            '2-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY precio_v ASC "
            '--------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu "
                sql = sql & " ORDER BY precio_v ASC "
            End If
        '1B-------------------------------------------------------------
        Else
            If Combo1.Text <> "Categorias" Then
            '2-----CONTIENE UNA CATEGORIA PARA LA BUSQUEDA------
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu WHERE id_categoria = " & Combo1.ItemData(Combo1.ListIndex)
                sql = sql & " ORDER BY id_menu ASC "
            '2-------------------------------------------------
            Else
                sql = "SELECT '',id_menu Menu,descripcion Descripcion,CONCAT('$ ',precio_v) Precio,CASE WHEN sn_activo = 1 THEN 'ACTIVO' ELSE 'INACTIVO' END Estado,id_categoria Categoria, "
                sql = sql & " CONVERT(DATE,fec_proceso) Fecha FROM tmenu "
                sql = sql & " ORDER BY id_menu ASC "
            End If
        End If
    End If
    Cargar_List sql, ListView1, 1
End Sub

VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Ventas 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Punto de venta"
   ClientHeight    =   10365
   ClientLeft      =   150
   ClientTop       =   195
   ClientWidth     =   19710
   Icon            =   "Ventas.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10365
   ScaleWidth      =   19710
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Cancelar 
      Caption         =   "&Cancelar Venta"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   915
      Left            =   120
      Picture         =   "Ventas.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   54
      Top             =   8280
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   10335
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   21135
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   240
         TabIndex        =   77
         Text            =   "Menus"
         Top             =   2520
         Width           =   4575
      End
      Begin VB.Frame Frame26 
         Caption         =   "Adicionales Papas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   4080
         TabIndex        =   75
         Top             =   3000
         Width           =   3495
         Begin VB.ComboBox adicionalesP 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   120
            TabIndex        =   76
            Text            =   "adicionalesP"
            Top             =   360
            Width           =   3255
         End
      End
      Begin VB.CommandButton reca 
         Caption         =   "&Recaudacion"
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
         Left            =   12120
         Picture         =   "Ventas.frx":1194
         Style           =   1  'Graphical
         TabIndex        =   73
         Top             =   9240
         Width           =   1335
      End
      Begin VB.CommandButton pedidosBtn 
         Caption         =   "&Pedidos"
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
         Left            =   9480
         Picture         =   "Ventas.frx":1A5E
         Style           =   1  'Graphical
         TabIndex        =   72
         Top             =   9240
         Width           =   855
      End
      Begin VB.CommandButton Cierre 
         Caption         =   "&Cierre"
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
         Left            =   11280
         Picture         =   "Ventas.frx":2328
         Style           =   1  'Graphical
         TabIndex        =   70
         Top             =   9240
         Width           =   735
      End
      Begin VB.CommandButton ventasB 
         Caption         =   "&Ventas"
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
         Left            =   10440
         Picture         =   "Ventas.frx":2BF2
         Style           =   1  'Graphical
         TabIndex        =   69
         Top             =   9240
         Width           =   735
      End
      Begin VB.Frame Frame12 
         Caption         =   "Comentario"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   795
         Left            =   6960
         TabIndex        =   66
         Top             =   8280
         Width           =   6495
         Begin VB.TextBox comentario 
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
            TabIndex        =   68
            Top             =   360
            Width           =   6255
         End
      End
      Begin VB.Frame Frame122 
         Caption         =   "Horario de E/R"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   795
         Left            =   4920
         TabIndex        =   65
         Top             =   8280
         Width           =   1935
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   375
            Left            =   120
            TabIndex        =   67
            Top             =   360
            Width           =   1695
            _ExtentX        =   2990
            _ExtentY        =   661
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarBackColor=   -2147483644
            Format          =   145358850
            CurrentDate     =   44808
         End
      End
      Begin VB.Frame Frame24 
         Caption         =   "Saldo Final + Envio"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   800
         Left            =   5520
         TabIndex        =   61
         Top             =   7440
         Width           =   4395
         Begin VB.TextBox Saldo_Final 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFFF&
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
            Left            =   120
            TabIndex        =   62
            Text            =   "$00,00"
            Top             =   360
            Width           =   4215
         End
      End
      Begin VB.CommandButton LimpiarTodo 
         Caption         =   "&Limpiar"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   3600
         Picture         =   "Ventas.frx":34BC
         Style           =   1  'Graphical
         TabIndex        =   59
         Top             =   3960
         Width           =   855
      End
      Begin VB.CommandButton Cerrar 
         Caption         =   "&Cerrar"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   915
         Left            =   4080
         Picture         =   "Ventas.frx":3D86
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   8280
         Width           =   735
      End
      Begin VB.CommandButton Reporte 
         Caption         =   "&Ticket"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   915
         Left            =   3240
         Picture         =   "Ventas.frx":4650
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   8280
         Width           =   735
      End
      Begin VB.CommandButton Cobrar 
         Caption         =   "&Cobrar"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   915
         Left            =   2400
         Picture         =   "Ventas.frx":4F1A
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   8280
         Width           =   735
      End
      Begin VB.CommandButton Control 
         Caption         =   "&Control"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   900
         Left            =   1320
         Picture         =   "Ventas.frx":57E4
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   8280
         Width           =   975
      End
      Begin VB.Frame Frame25 
         Caption         =   "Observaciones del cliente"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   1095
         Left            =   4560
         TabIndex        =   52
         Top             =   3840
         Width           =   5295
         Begin VB.TextBox Observaciones 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   53
            Text            =   "sin observaciones"
            Top             =   360
            Width           =   5055
         End
      End
      Begin VB.Frame Frame23 
         Caption         =   "Saldo a pagar"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   800
         Left            =   120
         TabIndex        =   50
         Top             =   7440
         Width           =   5295
         Begin VB.TextBox Saldo 
            Alignment       =   2  'Center
            BackColor       =   &H00C0FFC0&
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
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   51
            Text            =   "$00,00"
            Top             =   360
            Width           =   5055
         End
      End
      Begin VB.Frame Frame22 
         Caption         =   "Vuelto"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   6600
         TabIndex        =   48
         Top             =   6600
         Width           =   3255
         Begin VB.TextBox Vuelto 
            BackColor       =   &H00C0E0FF&
            Enabled         =   0   'False
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
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   49
            Text            =   "$00,00"
            Top             =   360
            Width           =   3015
         End
      End
      Begin VB.Frame Frame21 
         Caption         =   "Moneda"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   4680
         TabIndex        =   46
         Top             =   6600
         Width           =   1815
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "$"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   15.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   495
            Left            =   120
            TabIndex        =   47
            Top             =   240
            Width           =   1575
         End
      End
      Begin VB.Frame Frame20 
         Caption         =   "Paga con "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   44
         Top             =   6600
         Width           =   4455
         Begin VB.TextBox PagaCon 
            BackColor       =   &H80000018&
            Enabled         =   0   'False
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
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   45
            Text            =   "$00,00"
            Top             =   360
            Width           =   4215
         End
      End
      Begin VB.Frame Frame19 
         Caption         =   "Total a cobrar"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   5640
         TabIndex        =   42
         Top             =   5760
         Width           =   4215
         Begin VB.TextBox TPagoB 
            BackColor       =   &H00FFC0C0&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   43
            Text            =   "$00,00"
            Top             =   360
            Width           =   3975
         End
      End
      Begin VB.Frame Frame18 
         Caption         =   "Forma de pago 2"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   40
         Top             =   5760
         Width           =   5415
         Begin VB.CommandButton RecargarB 
            Enabled         =   0   'False
            Height          =   495
            Left            =   4800
            Picture         =   "Ventas.frx":60AE
            Style           =   1  'Graphical
            TabIndex        =   64
            Top             =   240
            Width           =   495
         End
         Begin VB.ComboBox pago2 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   41
            Top             =   360
            Width           =   4575
         End
      End
      Begin VB.Frame Frame17 
         Caption         =   "Total a cobrar"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   5640
         TabIndex        =   38
         Top             =   4920
         Width           =   4215
         Begin VB.TextBox TPagoA 
            BackColor       =   &H00FFC0C0&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   375
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   39
            Text            =   "$00,00"
            Top             =   360
            Width           =   3975
         End
      End
      Begin VB.Frame Frame16 
         Caption         =   "Forma de pago 1"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   36
         Top             =   4920
         Width           =   5415
         Begin VB.CommandButton RecargarA 
            Enabled         =   0   'False
            Height          =   495
            Left            =   4800
            Picture         =   "Ventas.frx":6638
            Style           =   1  'Graphical
            TabIndex        =   63
            Top             =   240
            Width           =   495
         End
         Begin VB.ComboBox pago1 
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   37
            Top             =   360
            Width           =   4575
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "Cantidad de bebidas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   7680
         TabIndex        =   32
         Top             =   3000
         Width           =   2175
         Begin VB.CommandButton MenosB 
            Caption         =   "-"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1080
            TabIndex        =   35
            Top             =   360
            Width           =   495
         End
         Begin VB.CommandButton MasB 
            Caption         =   "+"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1680
            TabIndex        =   34
            Top             =   360
            Width           =   375
         End
         Begin VB.TextBox CantBebidas 
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
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   33
            Text            =   "0"
            Top             =   360
            Width           =   855
         End
      End
      Begin VB.Frame Frame14 
         Caption         =   "Bebidas"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   7080
         TabIndex        =   30
         Top             =   2160
         Width           =   2775
         Begin VB.ComboBox bebidas 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   31
            Top             =   360
            Width           =   2535
         End
      End
      Begin VB.Frame Frame13 
         Caption         =   "Adicionales Burger"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   28
         Top             =   3000
         Width           =   3855
         Begin VB.ComboBox adicionales 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   29
            Top             =   360
            Width           =   3615
         End
      End
      Begin VB.CommandButton finalizar 
         Caption         =   "&Cerrar Venta"
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
         Left            =   2760
         Picture         =   "Ventas.frx":6BC2
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   3960
         Width           =   855
      End
      Begin VB.CommandButton ReAbrir 
         Caption         =   "&Abrir Venta"
         Enabled         =   0   'False
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
         Left            =   1920
         Picture         =   "Ventas.frx":748C
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   3960
         Width           =   855
      End
      Begin VB.CommandButton Calculadora 
         Caption         =   "&Calculadora"
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
         Left            =   960
         Picture         =   "Ventas.frx":7D56
         Style           =   1  'Graphical
         TabIndex        =   25
         Top             =   3960
         Width           =   975
      End
      Begin VB.CommandButton agregar 
         Caption         =   "&Agregar"
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
         Picture         =   "Ventas.frx":8620
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   3960
         Width           =   855
      End
      Begin VB.Frame Frame11 
         Caption         =   "Precio por promo"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   5040
         TabIndex        =   22
         Top             =   2160
         Width           =   1935
         Begin VB.TextBox PPromo 
            Alignment       =   2  'Center
            BackColor       =   &H8000000B&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   23
            Text            =   "$00,00"
            Top             =   360
            Width           =   1695
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "Seleccione Menu"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   21
         Top             =   2160
         Width           =   4815
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   6015
         Left            =   9960
         TabIndex        =   20
         Top             =   2280
         Width           =   9735
         _ExtentX        =   17171
         _ExtentY        =   10610
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
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
      Begin VB.Frame Frame9 
         Caption         =   "Con envio?"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   13800
         TabIndex        =   17
         Top             =   1320
         Width           =   2295
         Begin VB.TextBox PEnvio 
            Alignment       =   2  'Center
            BackColor       =   &H0080FFFF&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   720
            TabIndex        =   19
            Text            =   "$00,00"
            Top             =   360
            Width           =   1455
         End
         Begin VB.CheckBox OpcSI 
            Caption         =   "SI"
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
            TabIndex        =   18
            Top             =   360
            Width           =   615
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Direccion del cliente"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   5880
         TabIndex        =   14
         Top             =   1320
         Width           =   7815
         Begin VB.TextBox Direccion 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   11.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   420
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   15
            Top             =   360
            Width           =   7575
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Fecha Emision"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   735
         Left            =   7920
         TabIndex        =   11
         Top             =   600
         Width           =   5295
         Begin VB.Label fecha 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Fecha del dia:"
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
            Left            =   240
            TabIndex        =   12
            Top             =   360
            Width           =   1320
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Cliente"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   855
         Left            =   120
         TabIndex        =   10
         Top             =   1320
         Width           =   5655
         Begin VB.ComboBox Clientes 
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            ItemData        =   "Ventas.frx":8EEA
            Left            =   1080
            List            =   "Ventas.frx":8EEC
            TabIndex        =   16
            Text            =   "Clientes"
            Top             =   360
            Width           =   4455
         End
         Begin VB.CheckBox OtroCliente 
            Caption         =   "Otros"
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
            TabIndex        =   13
            Top             =   360
            Width           =   855
         End
      End
      Begin VB.Frame Frame5 
         BorderStyle     =   0  'None
         Caption         =   "Frame5"
         Height          =   1575
         Left            =   16080
         TabIndex        =   7
         Top             =   720
         Width           =   3735
         Begin VB.Line Line4 
            X1              =   240
            X2              =   3600
            Y1              =   1400
            Y2              =   1400
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
            Left            =   360
            TabIndex        =   9
            Top             =   650
            Width           =   3060
         End
         Begin VB.Line Line3 
            Index           =   0
            X1              =   240
            X2              =   3600
            Y1              =   600
            Y2              =   600
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
            Left            =   480
            TabIndex        =   8
            Top             =   120
            Width           =   2850
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Numero de factura"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   735
         Left            =   4440
         TabIndex        =   4
         Top             =   600
         Width           =   3375
         Begin VB.Label nro_factura 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   210
            Left            =   1680
            TabIndex        =   60
            Top             =   360
            Width           =   60
         End
         Begin VB.Label Factura 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "FACTURA Nº:"
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
            Left            =   240
            TabIndex        =   5
            Top             =   360
            Width           =   1215
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Empleado"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   735
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   4215
         Begin VB.Label user 
            BackStyle       =   0  'Transparent
            Caption         =   "Usuario"
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
            Height          =   315
            Left            =   2280
            TabIndex        =   71
            Top             =   360
            Width           =   1875
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Empleado Conectado:"
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
            TabIndex        =   3
            Top             =   360
            Width           =   2085
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         Height          =   495
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   21135
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Surcursal 1 - Break Burger - PUNTO DE VENTA"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Left            =   120
            TabIndex        =   6
            Top             =   120
            Width           =   4605
         End
      End
      Begin VB.Image Image2 
         Height          =   735
         Left            =   120
         Picture         =   "Ventas.frx":8EEE
         Stretch         =   -1  'True
         Top             =   9240
         Width           =   2175
      End
      Begin VB.Line Line1 
         X1              =   4920
         X2              =   13440
         Y1              =   9120
         Y2              =   9120
      End
      Begin VB.Image Image1 
         Height          =   3135
         Left            =   13560
         Picture         =   "Ventas.frx":195BE
         Stretch         =   -1  'True
         Top             =   7680
         Width           =   6135
      End
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
      Index           =   0
      Left            =   0
      TabIndex        =   74
      Top             =   0
      Width           =   3060
   End
   Begin VB.Line Line3 
      Index           =   1
      X1              =   0
      X2              =   3360
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Menu Menu 
      Caption         =   "Menu"
      Visible         =   0   'False
      Begin VB.Menu Eliminar 
         Caption         =   "Eliminar"
      End
   End
End
Attribute VB_Name = "Ventas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub agregar_Click() 'modificado
If Combo1.ItemData(Combo1.ListIndex) = 0 And adicionales.ItemData(adicionales.ListIndex) = 0 And bebidas.ItemData(bebidas.ListIndex) = 0 Then
    MsgBox "Seleccione las opciones para la venta", vbInformation, "Break Burger"
ElseIf Combo1.ItemData(Combo1.ListIndex) = 0 And adicionales.ItemData(adicionales.ListIndex) > 0 Then
    MsgBox "No puede ingresar adicionales si no elige un menu primero", vbCritical, "Break Burger"
ElseIf Combo1.ItemData(Combo1.ListIndex) = 0 And adicionalesP.ItemData(adicionalesP.ListIndex) > 0 Then
    MsgBox "No puede ingresar adicionales si no elige un menu primero", vbCritical, "Break Burger"
ElseIf bebidas.ItemData(bebidas.ListIndex) > 0 And CantBebidas.Text = 0 Then
    MsgBox "Selecione cantidad de bebidas", vbInformation, "Break Burger"
Else
    sql = "exec SP_VENTAS 1," & FacturaNRO & ",null," & IIf(Combo1.ItemData(Combo1.ListIndex) = 0, "null", Combo1.ItemData(Combo1.ListIndex))
    sql = sql & "," & IIf(adicionales.ItemData(adicionales.ListIndex) = 0, "null", adicionales.ItemData(adicionales.ListIndex))
    sql = sql & "," & IIf(adicionalesP.ItemData(adicionalesP.ListIndex) = 0, "null", adicionalesP.ItemData(adicionalesP.ListIndex))
    sql = sql & "," & IIf(bebidas.ItemData(bebidas.ListIndex) = 0, "null", bebidas.ItemData(bebidas.ListIndex)) & ","
    If OpcSI.Value = 1 Then
        sql = sql & IIf(CantBebidas.Text = 0, 0, CantBebidas.Text) & "," & PEnvio.Text & ",null,null"
    Else
        sql = sql & IIf(CantBebidas.Text = 0, 0, CantBebidas.Text) & ",null,null,null"
    End If
    Cargar_List sql, ListView1, 6
    If id_Err = 0 Then
        sql = "select total FROM TMPSaldo where nro_factura = " & FacturaNRO
        Call BuscaConexion(sql)
        Saldo.Text = "$" & Format(rs(0), "##,#0")
    End If
End If
End Sub

Private Sub Calculadora_Click()
Shell ("Calc.exe")
End Sub

Private Sub Cancelar_Click()
If (MsgBox("Deseas cancelar la venta?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
    sql = "delete from TMPventas "
    sql = sql & "delete from TMPSaldo"
    Call BuscaConexion(sql)
    Set rs = Nothing
    Set cn = Nothing
    MsgBox "Venta Cancelada", vbInformation, "Break Burger"
    Unload Me
    Ventas.Show
End If
End Sub

Private Sub cerrar_Click()
Inicio.Show
Unload Me
End Sub

Private Sub Cierre_Click()
sql = "select count(1) from pago_venta where pedidos = 1"
Call BuscaConexion(sql)
If rs(0) >= 1 Then
    MsgBox "No se puede cerrar si posee pedidos pendientes", vbCritical, "Break Burger"
Else
    CierreCaja.Show
End If
Set rs = Nothing
Set cn = Nothing
End Sub



Private Sub CLIENTES_Click()
sql = "select txt_dir,txt_desc from tclientes where id_clientes = " & CLIENTES.ItemData(CLIENTES.ListIndex)
Call BuscaConexion(sql)
Direccion.Text = rs(0)
Observaciones.Text = rs(1)
Set rs = Nothing
Set cn = Nothing
End Sub

'Private Sub Clientes_KeyPress(KeyAscii As Integer)
'CLIENTES.Clear
'sql = "select rtrim(ltrim(txt_nombre_completo)) Descripcion,id_clientes ID from tclientes where txt_nombre_completo like '" & Chr(KeyAscii) & "%'"
'Combo CLIENTES, sql, Me
'End Sub


Private Sub Clientes_Change()
    Static YaEstoy As Boolean

    On Local Error Resume Next

    If Not YaEstoy Then
        YaEstoy = True
        unCombo_Change CLIENTES.Text, CLIENTES
        YaEstoy = False
    End If
    Err = 0
End Sub


Private Sub Clientes_KeyDown(KeyCode As Integer, Shift As Integer)
    unCombo_KeyDown KeyCode
End Sub


Private Sub Clientes_KeyPress(KeyAscii As Integer)
    unCombo_KeyPress KeyAscii
End Sub


Private Sub Cobrar_Click()
If pago1.Text = "" Then
    MsgBox "Ingrese la forma de pago", vbInformation, "Break Burger"
Else
    If TPagoA.Text = "$00,00" Then
        MsgBox "Ingrese el monto a pagar con la forma de pago 1", vbInformation, "Break Burger"
    Else
        If pago1.ItemData(pago1.ListIndex) <> 2 And PagaCon.Text = "$00,00" Then
            MsgBox "Ingrese con cuanto va a pagar en Efectivo", vbInformation, "Break Burger"
        ElseIf InStr(1, Vuelto.Text, "-") = 2 Then
            MsgBox "Error Critico", vbCritical, "Break Burger"
            MsgBox "El vuelto no puede ser negativo", vbCritical, "Breack Burger"
        Else
            txtDireccion = Direccion.Text
            If (MsgBox("Deseas COBRAR?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
                If (MsgBox("Es DELIVERY?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
                    mov_entrega = 1 'DELIVERI
                    If (MsgBox("Ingresar descripcion de la casa?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
                        descripcion.Show
                    Else
                        FCobrar
                        Comprobante.Show
                    End If
                Else
                    mov_entrega = 2 'RETIRO
                    FCobrar
                    Comprobante.Show
                End If
            End If
        End If
    End If
    Reporte.Enabled = True
End If
End Sub



Private Sub Combo1_Change()
Static YaEstoy As Boolean

    On Local Error Resume Next

    If Not YaEstoy Then
        YaEstoy = True
        unCombo_Change Combo1.Text, Combo1
        YaEstoy = False
    End If
    Err = 0
End Sub

Private Sub Combo1_Click()
If Combo1.ItemData(Combo1.ListIndex) <> 0 Then
    sql = "select precio_v from tmenu where id_menu = " & Combo1.ItemData(Combo1.ListIndex)
    Call BuscaConexion(sql)
    PPromo.Text = "$" & Format$(Val(rs(0)), "##,#0.00")
    Set rs = Nothing
    Set cn = Nothing
Else
    PPromo.Text = "$00,00"
End If
End Sub

Private Sub combo_menu_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
unCombo_KeyDown KeyCode
End Sub

Private Sub combo_menu_KeyPress(Index As Integer, KeyAscii As Integer)
unCombo_KeyPress KeyAscii
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
unCombo_KeyDown KeyCode
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
unCombo_KeyPress KeyAscii
End Sub



Private Sub Control_Click()
If pago1.Text = "" Then
    MsgBox "Ingrese la forma de pago", vbInformation, "Break Burger"
Else
    If TPagoA.Text = "$00,00" Then
        MsgBox "Ingrese el monto a pagar con la forma de pago 1", vbInformation, "Break Burger"
    Else
        If pago1.ItemData(pago1.ListIndex) <> 2 And PagaCon.Text = "$00,00" Then
            MsgBox "Ingrese con cuanto va a pagar en Efectivo", vbInformation, "Break Burger"
        ElseIf InStr(1, Vuelto.Text, "-") = 2 Then
            MsgBox "Error Critico", vbCritical, "Break Burger"
            MsgBox "El vuelto no puede ser negativo", vbCritical, "Breack Burger"
        Else
            ImporteControl FacturaNRO
            ControlV.Show
            Me.Enabled = False
        End If
    End If
End If
End Sub
Private Sub ImporteControl(Factura As Integer)
Dim TOTAL As Long

TOTAL = 0
ControlV.nro_factura.Text = FacturaNRO
ControlV.penv.Text = "$" & Format(PEnvio, "##,#0.00")
TOTAL = PEnvio

sql = "Select sum(B.precio_v) from TMPventas A "
sql = sql & "left join tmenu B on B.id_menu = A.menu "
sql = sql & "where A.nro_factura = " & Factura
Call BuscaConexion(sql)
If Not IsNull(rs(0)) = True Then
    TOTAL = TOTAL + rs(0)
    ControlV.pmenus.Text = "$" & Format(rs(0), "##,#0.00")
Else
    TOTAL = TOTAL + 0
    ControlV.pmenus.Text = "$00,00"
End If

Set rs = Nothing
Set cn = Nothing

sql = "Select sum(B.precio_v) from TMPventas A "
sql = sql & "left join tadicionales B on B.id_adicionales = A.adicional "
sql = sql & "where A.nro_factura = " & Factura
Call BuscaConexion(sql)
If Not IsNull(rs(0)) = True Then
    TOTAL = TOTAL + rs(0)
    ControlV.padic.Text = "$" & Format(rs(0), "##,#0.00")
Else
    TOTAL = TOTAL + 0
    ControlV.padic.Text = "$00.00"
End If

Set rs = Nothing
Set cn = Nothing

sql = "Select sum(B.precio_v) from TMPventas A "
sql = sql & "left join tadicionales B on B.id_adicionales = A.adicionalP "
sql = sql & "where A.nro_factura = " & Factura
Call BuscaConexion(sql)
If Not IsNull(rs(0)) = True Then
    TOTAL = TOTAL + rs(0)
    ControlV.padicp.Text = "$" & Format(rs(0), "##,#0.00")
Else
    TOTAL = TOTAL + 0
    ControlV.padicp.Text = "$00.00"
End If

Set rs = Nothing
Set cn = Nothing

sql = "Select sum(B.precio_v * A.cant) from TMPventas A "
sql = sql & "left join tbebidas B on B.id_bebidas = A.bebidas "
sql = sql & "where A.nro_factura = " & Factura
Call BuscaConexion(sql)
If Not IsNull(rs(0)) = True Then
    TOTAL = TOTAL + rs(0)
    ControlV.pbeb.Text = "$" & Format(rs(0), "##,#0.00")
Else
    TOTAL = TOTAL + 0
    ControlV.pbeb.Text = "$00.00"
End If
Set rs = Nothing
Set cn = Nothing

ControlV.importeT.Text = "$" & Format(TOTAL, "##,#0.00")
End Sub

Private Sub Direccion_Click()
If OtroCliente.Value = 1 Then
    If (MsgBox("Deseas ingresar un domicilio?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
        Direccion.Locked = False
        Direccion.Text = ""
    End If
End If
End Sub

Private Sub Eliminar_Click()
Dim salgo As Integer
sql = "exec SP_VENTAS 1," & FacturaNRO & ",null,null,null,null,null,null,null,null,null," & ListView1.SelectedItem.SubItems(1)
Cargar_List sql, ListView1, 6
If ListView1.ListItems.Count <> 0 Then
'    sql = "select total FROM TMPSaldo where nro_factura = " & FacturaNRO
'    Call BuscaConexion(sql)
'    Saldo = rs(0)
'    Set rs = Nothing
'    Set cn = Nothing
    sql = "select sum(isnull(envio,0) +  total) from TMPSaldo"
    Call BuscaConexion(sql)
    Saldo.Text = "$" & Format(rs(0), "##,#0.00")
    Set rs = Nothing
    Set cn = Nothing
Else
    Saldo.Text = "$00,00"
End If

End Sub

Private Sub finalizar_Click()
If Direccion.Text = "" Then
    MsgBox "Seleccione cliente", vbInformation, "Break Burger"
Else
    If ListView1.ListItems.Count <> 0 Then
        agregar.Enabled = False
        adicionales.Enabled = False
        bebidas.Enabled = False
        MenosB.Enabled = False
        MasB.Enabled = False
        Combo1.Enabled = False
        CLIENTES.Enabled = False
        OtroCliente.Enabled = False
        OpcSI.Enabled = False
        PEnvio.Enabled = False
        Eliminar.Enabled = False
        finalizar.Enabled = False
        ReAbrir.Enabled = True
        pago1.Enabled = True
        TPagoA.Locked = False
        RecargarA.Enabled = True
    '    pago2.Enabled = True
    '    TPagoB.Locked = False
'        PagaCon.Enabled = True
'        PagaCon.Locked = False
        Cancelar.Enabled = True
        Control.Enabled = True
    '    Cobrar.Enabled = False
        If cod_movimiento = 0 Then
            sql = "update TMPSaldo set id_cliente = 0, envio = " & Replace(Mid(PEnvio.Text, 2), ",", ".")
        Else
            sql = "update TMPSaldo set id_cliente = " & CLIENTES.ItemData(CLIENTES.ListIndex) & ", envio = " & Replace(Mid(PEnvio.Text, 2), ",", ".")
        End If
        Call BuscaConexion(sql)
        Set rs = Nothing
        Set cn = Nothing
        sql = "select sum(envio +  total) from TMPSaldo"
        Call BuscaConexion(sql)
        pagoF = rs(0)
        Set rs = Nothing
        Set cn = Nothing
        Saldo_Final.Text = "$" & Format(pagoF, "##,#0")
        'ver si es lo correcto habilitarlo(01-11-2022)
        Cobrar.Enabled = True
    Else
        MsgBox "No se puede cerrar venta si no ingreso ningun pedido", vbInformation, "Break Burger"
    End If

End If

End Sub

Private Sub Form_Load()
DisableX Ventas.hwnd 'LLAMA AL BLOQUEO DE (X)
desCasa = ""
user.Caption = Usuario
proceso_fin = 0
fecha.Caption = "Fecha del dia: " & Format(Date, "Long Date")
'---------------CARGO COMBO DE CLIENTES--------------------'
sql = "select rtrim(ltrim(txt_nombre_completo)) Descripcion,id_clientes ID from tclientes Order By txt_nombre_completo asc"
Combo CLIENTES, sql, Me
'---------------CARGO COMBO DE PAGO 1,2--------------------'
sql = "select concat(id_pago,'-',rtrim(ltrim(txt_pago))) Descripcion,id_pago ID from tforma_pago "
Combo pago1, sql, Me
Combo pago2, sql, Me
'----carga de combos------
CargaCombos
sql = "select factura from nro_factura"
Call BuscaConexion(sql)
FacturaNRO = rs(0)
'Factura = rs(0)
nro_factura.Caption = Format(FacturaNRO, "0000000000")
Set rs = Nothing
Set cn = Nothing
sql = "exec SP_VENTAS 1," & FacturaNRO & ",null,null,null,null,null,null,null,null,null"
Cargar_List sql, ListView1, 6
sql = "select total FROM TMPSaldo where nro_factura = " & FacturaNRO
Call BuscaConexion(sql)
If Not rs.EOF Then
    Saldo.Text = "$" & Format(rs(0), "##,#0")
End If
'If Not IsNull(rs(0)) = True Then
'    Saldo.Text = "$" & Format(rs(0), "##,#0")
'End If
Set rs = Nothing
Set cn = Nothing
End Sub
Private Sub CargaCombos()
'---------------CARGO COMBO DE MENU--------------------'
Combo1.AddItem ("Seleccionar")
Combo1.ListIndex = 0
sql = "select rtrim(ltrim(descripcion)) Descripcion,id_menu ID from tmenu order by descripcion asc"
Combo Combo1, sql, Me

'---------------CARGO COMBO DE ADICIONALES--------------------'
adicionales.AddItem ("Seleccionar")
adicionales.ListIndex = 0
adicionalesP.AddItem ("Seleccionar")
adicionalesP.ListIndex = 0
sql = "select concat(id_adicionales,'-',rtrim(ltrim(descripcion))) Descripcion,id_adicionales ID from tadicionales order by descripcion asc"
Combo adicionales, sql, Me
Combo adicionalesP, sql, Me
'---------------CARGO COMBO DE BEBIDAS--------------------'
bebidas.AddItem ("Seleccionar")
bebidas.ListIndex = 0
sql = "select concat(id_bebidas,'-',rtrim(ltrim(descripcion))) Descripcion,id_bebidas ID from tbebidas order by descripcion asc"
Combo bebidas, sql, Me
End Sub

Private Sub LimpiarTodo_Click()
Combo1.Clear
adicionales.Clear
bebidas.Clear
CargaCombos
CantBebidas.Text = 0
'PEnvio.Text = "$00,00"
'PEnvio.Enabled = False
'OpcSI.Value = 0
'Direccion.Text = ""
End Sub

Private Sub ListView1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button And vbRightButton Then
' User right-clicked the list box.
    PopupMenu Menu
End If
End Sub

'Private Sub mas_Click()
'CantPromo.Text = CantPromo.Text + 1
'End Sub

Private Sub MasB_Click()
CantBebidas.Text = CantBebidas.Text + 1
End Sub

'Private Sub menos_Click()
'If CantPromo.Text <= 1 Then
'    CantPromo.Text = 1
'Else
'    CantPromo.Text = CantPromo.Text - 1
'End If
'End Sub

Private Sub MenosB_Click()
If CantBebidas.Text <= 0 Then
    CantBebidas.Text = 0
Else
    CantBebidas.Text = CantBebidas.Text - 1
End If
End Sub




Private Sub OpcSI_Click()
If OpcSI.Value = 1 Then
    PEnvio.Enabled = True
Else
    PEnvio.Text = "$00,00"
End If
End Sub

Private Sub OtroCliente_Click()
If OtroCliente.Value = 1 Then
'    Clientes.Enabled = False
     If (MsgBox("Deseas ingresar el cliente?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
        cod_movimiento = 1
        cliente.Show
        Me.Enabled = False
    Else
        cod_movimiento = 0
        Direccion.Text = "Sin informacion"
    End If
End If

End Sub

Private Sub PagaCon_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If pago1.ItemData(pago1.ListIndex) = 1 Then
        If TPagoA.Text = "$00,00" Then
            MsgBox "Ingrese cuanto va a pagar en efectivo", vbInformation, "Break Burger"
        Else
            If (PagaCon - TPagoA.Text) < 0 Then
                MsgBox "Error en el importe", vbCritical, "Break Burger"
                MsgBox "Verifique el importe con el que va a pagar", vbInformation, "Break Burger"
            Else
                Vuelto.Text = PagaCon - TPagoA.Text
                Vuelto.Text = "$" & Format$(Val(Vuelto.Text), "##,#0")
            End If
        End If
    ElseIf pago2.ItemData(pago1.ListIndex) = 2 Then
        If TPagoB.Text = "$00,00" Then
            MsgBox "Ingrese cuanto va a pagar en efectivo", vbInformation, "Break Burger"
        Else
            If (PagaCon - TPagoB.Text) < 0 Then
                MsgBox "Error en el importe", vbCritical, "Break Burger"
                MsgBox "Verifique el importe con el que va a pagar", vbInformation, "Break Burger"
            Else
                Vuelto.Text = PagaCon - TPagoB.Text
                Vuelto.Text = "$" & Format$(Val(Vuelto.Text), "##,#0")
            End If
        End If
    End If
    
    PagaCon.Text = "$" & Format$(Val(PagaCon.Text), "##,#0")
End If
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub

Private Sub pago1_Click()
If (MsgBox("Deseas pagar el total en " & Mid(pago1.Text, 3) & "?", vbQuestion + vbYesNo, "Break Burger")) = vbYes Then
    If pago1.ItemData(pago1.ListIndex) = 2 Then
        PagaCon.Enabled = False
        PagaCon.Text = "$00,00"
        PagaCon.Locked = True
    Else
        PagaCon.Enabled = True
        PagaCon.Locked = False
    End If
    TPagoA.Text = Saldo_Final
    TPagoB.Text = "$00,00"
    pago2.Enabled = False
    pago2.Clear
    RecargarB.Enabled = False
    sql = "select concat(id_pago,'-',rtrim(ltrim(txt_pago))) Descripcion,id_pago ID from tforma_pago "
    Combo pago2, sql, Me
Else
    pago2.Enabled = True
    TPagoB.Locked = False
    RecargarB.Enabled = True
    PagaCon.Enabled = True
    PagaCon.Locked = False
    If pago1.ItemData(pago1.ListIndex) = 1 Then
        pago2.ListIndex = 1
'        PagaCon.Locked = False
    Else
        pago2.ListIndex = 0
    End If
End If
End Sub

Private Sub pedidosBtn_Click()
Pedidos.Show
End Sub

Private Sub PEnvio_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
'    PEnvio.Text = "$" & Format$(Val(PEnvio.Text), "##,00")
    PEnvio.Text = "$" & PEnvio.Text
End If
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If

End Sub

Private Sub ReAbrir_Click()
agregar.Enabled = True
adicionales.Enabled = True
bebidas.Enabled = True
MenosB.Enabled = True
MasB.Enabled = True
Combo1.Enabled = True
CLIENTES.Enabled = True
OtroCliente.Enabled = True
OpcSI.Enabled = True
If OpcSI.Value = 1 Then
    PEnvio.Enabled = True
End If
Eliminar.Enabled = True
finalizar.Enabled = True
ReAbrir.Enabled = False
finalizar.Enabled = True
pago1.Enabled = False
pago2.Enabled = False
PagaCon.Enabled = False
Cancelar.Enabled = False
Control.Enabled = False
Cobrar.Enabled = False
Saldo_Final.Text = "$00,00"
End Sub

Private Sub reca_Click()
Recaudacion.Show
End Sub

Private Sub RecargarA_Click()
pago1.Clear
sql = "select concat(id_pago,'-',rtrim(ltrim(txt_pago))) Descripcion,id_pago ID from tforma_pago "
Combo pago1, sql, Me
TPagoA.Text = "$00,00"
End Sub

Private Sub RecargarB_Click()
pago2.Clear
sql = "select concat(id_pago,'-',rtrim(ltrim(txt_pago))) Descripcion,id_pago ID from tforma_pago "
Combo pago2, sql, Me
TPagoB.Text = "$00,00"
End Sub

Private Sub Reporte_Click()
Comprobante.Show
End Sub

Private Sub TPagoA_KeyPress(KeyAscii As Integer)
Dim impPagar As Integer
If KeyAscii = 13 Then
    If TPagoA.Text > pagoF Then
        MsgBox "No puede superar el importe a pagar", vbCritical, "Break Burger"
        TPagoA.Text = "$00,00"
        TPagoB.Text = "$00,00"
    Else
        TPagoA.Text = "$" & Format$(Val(TPagoA.Text), "##,#0")
        impPagar = pagoF - TPagoA.Text
        TPagoB.Text = "$" & Format$(Val(impPagar), "##,#0")
    End If
End If
If IsNumeric(Chr(KeyAscii)) _
  Or KeyAscii = 8 _
  Or KeyAscii = 32 _
  Or KeyAscii = 46 _
  Then
  Else
    KeyAscii = 0
  End If
End Sub

Private Sub ventasB_Click()
ControlVentas.Show
End Sub

VERSION 5.00
Begin VB.Form otros 
   Caption         =   "Form1"
   ClientHeight    =   8550
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14685
   LinkTopic       =   "Form1"
   ScaleHeight     =   8550
   ScaleWidth      =   14685
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Left            =   9360
      Top             =   5400
   End
   Begin VB.TextBox txtMensaje 
      Height          =   975
      Left            =   8520
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   2760
      Width           =   2175
   End
   Begin VB.TextBox txtTitulo 
      Height          =   1455
      Left            =   3000
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   3720
      Width           =   2895
   End
   Begin VB.CommandButton btnCambiar 
      Caption         =   "Command1"
      Height          =   1815
      Left            =   1680
      TabIndex        =   0
      Top             =   1080
      Width           =   3135
   End
End
Attribute VB_Name = "otros"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
' Esta es la Estructura que necesita InitCommonControlsEx
Private Type tagINITCOMMONCONTROLSEX
    dwSize As Long
    dwICC As Long
End Type
' Aqui estan los tipos de inicializacion de temas
Private Const ICC_LISTVIEW_CLASSES = &H1          ' listview, header
Private Const ICC_TREEVIEW_CLASSES = &H2          ' treeview, tooltips
Private Const ICC_BAR_CLASSES = &H4               ' toolbar, statusbar, trackbar, tooltips
Private Const ICC_TAB_CLASSES = &H8               ' tab, tooltips
Private Const ICC_UPDOWN_CLASS = &H10             ' updown
Private Const ICC_PROGRESS_CLASS = &H20           ' progress
Private Const ICC_HOTKEY_CLASS = &H40             ' hotkey
Private Const ICC_ANIMATE_CLASS = &H80            ' animate
Private Const ICC_WIN95_CLASSES = &HFF
Private Const ICC_DATE_CLASSES = &H100            ' month picker, date picker, time picker, updown
Private Const ICC_USEREX_CLASSES = &H200          ' comboex
Private Const ICC_COOL_CLASSES = &H400            ' rebar (coolbar) control

' Nueva funcion para iniciarlizar los temas de XP
Private Declare Function InitCommonControlsEx Lib "comctl32.dll" (lpInitCtrls As tagINITCOMMONCONTROLSEX) As Boolean
' Creamos una instancia de la estructura
Dim Ini As tagINITCOMMONCONTROLSEX
' Estructura del notify icon (Version 5 o posterior)
    Private Type NOTIFYICONDATA ' declaracion del tipo de datos para notificar el Notify
        cbSize As Long
        hwnd As Long
        uID As Long
        uFlags As Long
        uCallbackMessage As Long
        hIcon As Long
        szTip As String * 128   'Desde aqui el nuevo notify
        dwState As Long
        dwStateMask As Long
        szInfo As String * 256
        uTimeout As Long        ' Este es compartido con (uVersion as Long)
        szInfoTitle As String * 64
        dwInfoFlags As Long
        ' guidItem As GUID (solo para la version 6)
    End Type
' Para la version de el Notify icon (por defecto en XP ya esta inicializado)
Private Const NOTIFYICON_VERSION = 3

'constantes relacionas con el raton
Private Const WM_RBUTTONUP = &H205
Private Const WM_LBUTTONDBLCLK = &H203
Private Const WM_MOUSEMOVE = &H200
Private Const WM_USER = &H400
' Constantes relacionadas con el Ballon tool tip
Private Const NIN_BALLOONSHOW = (WM_USER + 2)
Private Const NIN_BALLOONHIDE = (WM_USER + 3)
Private Const NIN_BALLOONTIMEOUT = (WM_USER + 4)
' Esta es la que me gusta !!!!
Private Const NIN_BALLOONUSERCLICK = (WM_USER + 5)
'constantes de lo que queremos que muestre el Notify
Private Const NIF_ICON = &H2 ' queremos que muestre un Notify
Private Const NIF_MESSAGE = &H1 ' queremos que nos envie un mensaje
Private Const NIF_TIP = &H4 ' queremos que muestre un texto al posicionarnos encima
' Para la version 5
Private Const NIF_STATE = &H8 ' Devuelve el estado
Private Const NIF_INFO = &H10 ' Muestra un ballon en el notify icon

' Aqui las constantes para los Notifys de los ballons tips
' No muestra nada
Private Const NIIF_NONE = &H0
' Muestra un Notify de Informacion
Private Const NIIF_INFO = &H1
' Muestra un Notify de Precaucion
Private Const NIIF_WARNING = &H2
' Muestra un Notify de Error
Private Const NIIF_ERROR = &H3

'constantes para añadir, borrar o modificar el Notify
Private Const NIM_ADD = &H0             ' añadirlo a la barra de tareas
Private Const NIM_DELETE = &H2  ' borrarlo de la barra de tareas
Private Const NIM_MODIFY = &H1  ' modificarlo
' Para la version 5
Private Const NIM_SETFOCUS = &H3                ' Da el foco a la barra de tareas
Private Const NIM_SETVERSION = &H4      ' Asigna la version del Notify icon

' declaracion de la funcion
Private Declare Function Shell_NotifyIcon Lib "shell32" (ByVal dwMessage As Long, lpData As NOTIFYICONDATA) As Boolean

' Creamos una instancia del notify
Dim Notify As NOTIFYICONDATA
'Option Explicit
 ' Cantidad de minutos para el intervalo del timer _   en este caso para 5 minutos
Const INTERVALO_EN_MINUTOS As Integer = 1

Private Sub Timer1_Timer()
' variable estática para acumular la cantidad de segundos
Static Temp_Seg As Long
' incrementa
Temp_Seg = Temp_Seg + 1
' comprueba que los segundos no sea igual a la cantidad de minutos _   que queremos , en este caso 5 minutos
If (Temp_Seg * 60) >= (INTERVALO_EN_MINUTOS * 60) * 60 Then
   ' reestablece
   Temp_Seg = 0
   MsgBox "Se ejcutó el timer ", vbInformation
End If

End Sub
Private Sub btnCambiar_Click()
    Me.Hide
    ' Mensajillo Personalizado
    Notify.dwInfoFlags = NIIF_WARNING
    Notify.szInfoTitle = Me.txtTitulo.Text + Chr$(0)
    Notify.szInfo = "Usted lo que escribio es :" + vbCr + Me.txtMensaje.Text + Chr$(0)
    ' llamamos a NIM_MODIFY para mostrar de nuevo el ballon
    Shell_NotifyIcon NIM_MODIFY, Notify
End Sub

Private Sub Close_Click()
    Unload Me
End Sub








Private Sub Form_Initialize()
    Ini.dwSize = Len(Ini)
    Ini.dwICC = ICC_COOL_CLASSES
    ' Verifica si se inicializan correctamente los controles
'    If Not InitCommonControlsEx(Ini) Then
'        MsgBox "no se inicializo", vbCritical, "Error al inicializarse"
'    End If
End Sub

Private Sub Form_Load()
    ' Ejecuta el timer cada 1 segundo
    Timer1.Interval = 1000
    Me.Hide                                                                             ' Oculto el Form
    Notify.cbSize = Len(Notify)                                 ' Tamaño de la estructura
    Notify.hIcon = Me.Icon                      ' Notify mostrado en la barra
    Notify.hwnd = Me.hwnd                       ' Ventana que manipula el proceso
    Notify.uCallbackMessage = WM_MOUSEMOVE             ' Procedimiento que maneja los eventos
    Notify.szTip = "Notify con Ballon tool tip" & Chr$(0)     ' tool tip clasico
    Notify.uFlags = NIF_ICON Or NIF_MESSAGE Or NIF_INFO Or NIF_TIP ' los eventos que pueden hacerse
    ' Mensaje que se mostrara en el ballon tool tip
'    Notify.szInfo = "Esto solo es una prueba" + vbCr + "Aprete aqui para ver el" + vbCr + "El formulario" + Chr$(0)
    Notify.szInfo = "Tiene pedidos pendientes," + vbCr + "Aprete aqui para ver el" + vbCr + "PEDIDO" + Chr$(0)
    ' Titulo del ballon tool tip
    Notify.szInfoTitle = "Prueba" & Chr$(0)
    ' Tiempo en milisegundos (Aunque no responde)
    Notify.uTimeout = 10 'Or NOTIFYICON_VERSION
    ' Hacer que se muestre el ballon tool tip al crearse
    Notify.dwInfoFlags = NIIF_INFO
    'Notify.uVersion = NOTIFYICON_VERSION (Si es que se quiere saber la version del Notify)
    Notify.uID = 1& ' un identificador del Notify
    sql = "select count(*),horarioEP from pago_venta where pedidos = 1 and"
    sql = sql & " horarioEP = (select min(horarioEP) from pago_venta where pedidos = 1 )"
    sql = sql & " group by horarioEP"
    Call BuscaConexion(sql)
    If rs(0) >= 1 Then
        Shell_NotifyIcon NIM_ADD, Notify ' llamamos a la funcion para añadirlo
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ' al cerrar quitamos el Notyfi
    Shell_NotifyIcon NIM_DELETE, Notify
End Sub
Private Sub form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Static rec As Boolean
    Dim msg As Long
    msg = X / Screen.TwipsPerPixelX
    If rec = False Then
    rec = True
    Select Case msg
        Case WM_LBUTTONDBLCLK:             ' doble click con el boton izquierdo del raton
            Me.Show                                 ' mostramos el formulario
        Case WM_RBUTTONUP:
            Me.PopupMenu otros             ' click con el boton secundario, mostramos el menu correspondiente
        Case NIN_BALLOONUSERCLICK:     'Click al ballon Tool Tip
            MsgBox "hizo click al ballon", vbExclamation, "Mensaje"
            Me.Show
    End Select
    rec = False
End If
End Sub

Private Sub Show_Click()
Me.Show
End Sub

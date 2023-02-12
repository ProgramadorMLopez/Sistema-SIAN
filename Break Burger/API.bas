Attribute VB_Name = "API"
Option Explicit
Dim Combo1Borrado As Boolean
'*********************************************************************
'Created by : Shuja
'Description : Reads and Writes to the INI file using the API calls
'For : A dude on Codeguru
'Creation Date : 24-03-2005
'*********************************************************************
Public Declare Function SendMessage Lib "user32" Alias _
                        "SendMessageA" (ByVal hwnd As Long, _
                         ByVal wMsg As Long, ByVal wParam As Long, _
                         lParam As Long) As Long

'API Function to read information from INI File
Public Declare Function GetPrivateProfileString Lib "kernel32" _
    Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any _
    , ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long _
    , ByVal lpFileName As String) As Long

'API Function to write information to the INI File
Private Declare Function WritePrivateProfileString Lib "kernel32" _
    Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any _
    , ByVal lpString As Any, ByVal lpFileName As String) As Long
    
'BLOQUEA EL BOTON (X)'
Public Const MF_BYPOSITION = &H400&
Public Declare Function GetSystemMenu Lib "user32" (ByVal hwnd As Long, _
ByVal bRevert As Long) As Long
Public Declare Function RemoveMenu Lib "user32" (ByVal hMenu As Long, _
ByVal nPosition As Long, ByVal wFlags As Long) As Long
Private Declare Function GetMenuItemCount Lib "user32" _
(ByVal hMenu As Long) As Long


'Get the INI Setting from the File
Public Function GetINISetting(ByVal sHeading As String, ByVal sKey As String, sINIFileName) As String
    Const cparmLen = 50
    Dim sReturn As String * cparmLen
    Dim sDefault As String * cparmLen
    Dim lLength As Long
    lLength = GetPrivateProfileString(sHeading, sKey _
            , sDefault, sReturn, cparmLen, sINIFileName)
    GetINISetting = Mid(sReturn, 1, lLength)
End Function
Public Sub DisableX(lhwnd As Long)
Dim lSysMenu As Long
Dim lItemCount As Long
Dim lRet As Long
lSysMenu = GetSystemMenu(lhwnd, False)
lItemCount = GetMenuItemCount(lSysMenu)
lRet = RemoveMenu(lSysMenu, lItemCount - 1, MF_BYPOSITION)
'lRet = RemoveMenu(lSysMenu, lItemCount - 2, MF_BYPOSITION)
'lRet = RemoveMenu(lSysMenu, lItemCount - 3, MF_BYPOSITION)
'lRet = RemoveMenu(lSysMenu, lItemCount - 4, MF_BYPOSITION)
End Sub
'Save INI Setting in the File
Public Function PutINISetting(ByVal sHeading As String, ByVal sKey As String, ByVal sSetting As String, sINIFileName) As Boolean
    On Error GoTo HandleError
    Const cparmLen = 50
    Dim sReturn As String * cparmLen
    Dim sDefault As String * cparmLen
    Dim aLength As Long
    aLength = WritePrivateProfileString(sHeading, sKey _
            , sSetting, sINIFileName)
    PutINISetting = True
    Exit Function
    
HandleError:
    Debug.Print Err.Number & " " & Err.Description
End Function





'-----------------NUEVO 01-11-2022------------------------'

Public Sub unCombo_KeyDown(KeyCode As Integer)
    If KeyCode = vbKeyDelete Then
        Combo1Borrado = True
    Else
        Combo1Borrado = False
    End If
End Sub


Public Sub unCombo_KeyPress(KeyAscii As Integer)
    'si se pulsa Borrar... ignorar la búsqueda al cambiar
    If KeyAscii = vbKeyBack Then
        Combo1Borrado = True
    Else
        Combo1Borrado = False
    End If
End Sub


Public Sub unCombo_Change(ByVal sText As String, elCombo As ComboBox)
    Dim i As Integer, L As Integer
    
    If Not Combo1Borrado Then
        L = Len(sText)
        With elCombo
            For i = 0 To .ListCount - 1
                If StrComp(sText, Left$(.List(i), L), 1) = 0 Then
                    .ListIndex = i
                    .Text = .List(.ListIndex)
                    .SelStart = L
                    .SelLength = Len(.Text) - .SelStart
                    Exit For
                End If
            Next
        End With
    End If
End Sub

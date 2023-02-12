Attribute VB_Name = "Conexiones"
Option Explicit

Public Sub BuscaConexion(sql As String)
'
' Dim Aux_clave As String
' Dim Aux_usuario As String
 Dim sSettingServer As String
 Dim sSettingDB As String
 Dim DataBase As String
' Dim variable, StrVar As String
' Dim mensaje As String
 

    
    'Reads a INI File (SETTINGS.INI) which has SECTION (SQLSERVER) and HEADING (SERVER) in It
    sSettingServer = GetINISetting("SQLSERVER", "server", App.Path & "\login.INI")
    sSettingDB = GetINISetting("SQLSERVER", "bdatos", App.Path & "\login.INI")
    
    'Change the above setting to this one
'    PutINISetting "SQLSERVER", "SERVER", "MyNewSQLServer", App.Path & "\login.INI"
 
 
 
 
 
 
 
'Open App.Path & "\login.ini" For Input As #1
'
'    Do While Not EOF(1)
'      Line Input #1, variable
'      StrVar = Trim(Mid(variable, 1, 7))
'      If StrVar = "server=" Then
'         Server = Trim(Mid(variable, 8, 27))
'      End If
'
'      StrVar = Trim(Mid(variable, 8, 23))
'      If StrVar = "bdatos=" Then
'         DataBase = Trim(Mid(variable, 9, 20))
'      End If
'
'      Loop
'
'Close
 DataBase = "Provider=SQLOLEDB; " & "Initial Catalog=" & sSettingDB & "; " & "Data Source=" & sSettingServer & ";" & _
            "integrated security=SSPI; persist security info=True;"
            


 Call Conexion(DataBase, sql)
' If rs.BOF = False And rs.EOF = False Then
'    mensaje = rs(0)
' End If

 
End Sub

Public Sub Conexion(DatosServer As String, sql As String)

cn.CursorLocation = adUseClient
If cn.State = adStateOpen Then
    cn.Close
End If
cn.ConnectionTimeout = 120
cn.Open DatosServer
rs.Open sql, cn, adOpenStatic, adLockOptimistic


End Sub


Attribute VB_Name = "Variables"
Public cn As New ADODB.Connection
Public rs As New ADODB.Recordset
Public sql As String
Public opc_movimiento As Integer
Public Usuario As String
Public cod_menu As Integer
Public cod_movimiento As Integer 'para ver si se abre una ventana o no
Public pagoF As Integer
Public proceso_fin As Integer
Public id_Err As Integer
Public mov_entrega As Integer
Public desCasa As String
Public FacturaNRO As Integer
Public txtDireccion As String

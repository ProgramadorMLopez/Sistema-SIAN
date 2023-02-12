Attribute VB_Name = "FuncionesGlobal"
Option Explicit
Public Sub Cargar_Cierre(sql As String, ListView As Object, cod_movimiento As Integer)


Dim campo As Integer
Dim id_carga As Integer
Dim Item As Object
Dim i As Integer
Call BuscaConexion(sql)
If rs.EOF And rs.BOF Then
        ListView.ListItems.Clear
        Set rs = Nothing
        Set cn = Nothing
        id_Err = 1
        Exit Sub
End If

With ListView
    .view = lvwReport
    .ListItems.Clear
    .LabelEdit = lvwManual 'no se puede editar el listview
    .ColumnHeaders.Clear
    .GridLines = True
    .Refresh
    
    For campo = 0 To rs.Fields.Count - 1
        Select Case cod_movimiento
        Case 1
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            End If
        Case 2
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            End If
        Case 3
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            End If
        Case 4
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1200
            End If
        End Select
        
    Next
    While Not rs.EOF
        Set Item = .ListItems.Add(, , rs.Fields(0))
        i = 1
        For campo = 1 To rs.Fields.Count - 1
            If Not IsNull(rs.Fields(campo)) Then
                Item.SubItems(i) = rs.Fields(campo)
               
            End If
            i = i + 1
        Next
    rs.MoveNext
    Wend
End With

Set rs = Nothing
Set cn = Nothing
End Sub
Public Sub Cargar_List(sql As String, ListView As Object, cod_movimiento As Integer)
Dim campo As Integer
Dim id_carga As Integer
Dim Item As Object
Dim i As Integer
Call BuscaConexion(sql)
If rs.EOF And rs.BOF Then
'    If cod_movimiento = 1 Then
'        FormMenu_Ingreso.ListView1.ListItems.Clear
        ListView.ListItems.Clear
        Set rs = Nothing
        Set cn = Nothing
        id_Err = 1
        Exit Sub
'    End If
Else
    If rs(0) = 999 Then
        MsgBox rs(1), vbInformation, "Break Burger"
        Set rs = Nothing
        Set cn = Nothing
        id_Err = 1
        Exit Sub
    End If
End If
id_Err = 0
With ListView
    .view = lvwReport
    .ListItems.Clear
    .LabelEdit = lvwManual 'no se puede editar el listview
    .ColumnHeaders.Clear
    .GridLines = True
    .Refresh

    For campo = 0 To rs.Fields.Count - 1
        Select Case cod_movimiento
        Case 1
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000 'id_menu
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 4500 'descripcion
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1930 'previo_v
            ElseIf campo = 4 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1930 'valor
            ElseIf campo = 5 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1930 'categoria
            Else
                .ColumnHeaders.Add , , rs.Fields(campo).Name
            End If
        Case 2
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1900 'id_menu
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 5400 'categoria
            End If
        Case 3
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500 'id_bebidas
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 4120 'bebidas
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2000 'precios
            End If
        Case 4
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1100 'id_adicionales
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 3950 'descripcion
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2000 'Precio
            End If
        Case 5
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1100 'id_clientes
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 3950 'txt_nombre_completo
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 6400 'txt_dir
            ElseIf campo = 4 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500 'txt_tel
            ElseIf campo = 5 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 3000 'txt_desc
            ElseIf campo = 6 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500 'fecha_ingreso
            End If
        Case 6
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1400
            ElseIf campo = 4 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2200
            ElseIf campo = 5 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1400
            ElseIf campo = 6 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2000
            ElseIf campo = 7 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1400
            ElseIf campo = 8 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2000
            ElseIf campo = 9 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 10 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            End If
        Case 7
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500
            ElseIf campo = 4 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500
            ElseIf campo = 5 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 6 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1300
            End If
        Case 8
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 0
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 3 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 4 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 5 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 6 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 7 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2000
            ElseIf campo = 8 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1500
            ElseIf campo = 9 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1300
            ElseIf campo = 10 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            End If
        Case 9
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 2 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            End If
        Case 10
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            End If
        Case 11
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            End If
        Case 12
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            End If
        Case 13
            If campo = 0 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 2500
            ElseIf campo = 1 Then
                .ColumnHeaders.Add , , rs.Fields(campo).Name, 1000
            End If
        End Select
        
    Next
    While Not rs.EOF
        Set Item = .ListItems.Add(, , rs.Fields(0))
        i = 1
        For campo = 1 To rs.Fields.Count - 1
            If Not IsNull(rs.Fields(campo)) Then
                Item.SubItems(i) = rs.Fields(campo)
               
            End If
            i = i + 1
        Next
    rs.MoveNext
    Wend
End With

Set rs = Nothing
Set cn = Nothing
End Sub



Sub Combo_Escribir(ComboOcupaciones As Object, el_form As Form)

Dim KeyCode As Integer ', Shift As Integer
Dim LenText As Long, ret As Long
     
   'Si los caracteres presionados están entre el 0 y la Z
   If KeyCode >= vbKey0 And KeyCode <= vbKeyZ Then
     
   ret = SendMessage(ComboOcupaciones.hwnd, &H14C&, -1, ByVal ComboOcupaciones.Text)
     
         If ret >= 0 Then
            LenText = Len(ComboOcupaciones.Text)
            ComboOcupaciones.ListIndex = ret
            ComboOcupaciones.Text = ComboOcupaciones.List(ret)
            ComboOcupaciones.SelStart = LenText
            ComboOcupaciones.SelLength = Len(ComboOcupaciones.Text) - LenText
              
         End If
   End If
End Sub

Public Sub Combo(combo_carga As Object, sql As String, Form As Form)
Call BuscaConexion(sql)
Do While Not rs.EOF
    combo_carga.AddItem rs.Fields("Descripcion").Value
    combo_carga.ItemData(combo_carga.NewIndex) = rs.Fields("ID").Value
    rs.MoveNext
Loop
rs.Close
cn.Close
Set cn = Nothing
Set rs = Nothing
Combo_Escribir combo_carga, Form
End Sub


Public Function ValidarKey_Texto(key As Integer, txt As TextBox) As Integer
 'Filtra Teclas que admite el textbox
    Select Case key
        Case 32: 'espacio
            ValidarKey_Texto = key
    End Select

End Function
'--------------------------------------------------------------------------------------'
'EXPORTAMOS los registros del LV a Excel                                               '
'Con el CommonDialog pedimos la direccion donde queremos exportarlo                    '
'--------------------------------------------------------------------------------------'
'Function Exportar_Excel(ListView1 As Object, ProgressBar1 As Object, CommonDialog1 As Object)
Function Exportar_Excel(ListView1 As Object, CommonDialog1 As Object)
    Dim Excel As Object     'Objecto Excel
    Dim Libro As Object     'Objecto Libro
    Dim Columna As Integer  'Variables para la columnas
    Dim Fila As Integer     'Variable para las filas
    Dim Ruta As String
    
    Set Excel = CreateObject("Excel.Application")
    If MsgBox("Estas seguro de exportar a Excel?", vbQuestion + vbYesNo, "Pregunta") = vbNo Then
            MsgBox "Cancelacion exitosa", vbInformation, "Sistema"
    Else
        If ListView1.ListItems.Count = 0 Then   'Si el listview esta vacio, manda el mensaje
            MsgBox "No hay datos que exportar.", vbInformation, "Sistema"
        Else
            CommonDialog1.FileName = ""
            CommonDialog1.DialogTitle = "Exportacion"
            'CommonDialog1.Filter = "Libro de Excel(*.xls)|*.xls"
            CommonDialog1.Filter = "Libro de Excel(*.xlsx)|*.xlsx"
            CommonDialog1.ShowSave
            Ruta = CommonDialog1.FileName 'Le indico la ruta
            If Ruta <> "" Then
                Set Libro = Excel.WorkBooks.Add
                'ProgressBar1.Max = ListView1.ListItems.Count
                For Fila = 1 To ListView1.ColumnHeaders.Count
                    'Le cambiamos el tamaño, tipo de letra y demas a la primera fila
                    With Libro.Sheets(1)
                        .cells(1, Fila) = ListView1.ColumnHeaders(Fila).Text 'Agrega el encabezado de las columnas en la primera fila
                        .cells(1, Fila).Font.Name = "Tahoma" 'TipoLetra
                        .cells(1, Fila).Font.Size = 10  'TamañoLetra
                        .cells(1, Fila).Font.Color = vbBlack 'ColorLetra
                        .cells(1, Fila).Borders.Color = vbBlack 'ColorBorde
                    End With
                Next Fila
                
                For Columna = 1 To ListView1.ListItems.Count
                    With Libro.Sheets(1)
                        Fila = 1
                        .cells(Columna + 1, Fila) = ListView1.ListItems.Item(Columna)
                        .cells(Columna + 1, Fila).Borders.Color = vbBlack
                        'Recorremos las columnas y le cambiamos a todas las filas el tamaño entre otras cosas.
                        For Fila = 1 To ListView1.ColumnHeaders.Count - 1
                                .cells(Columna + 1, Fila + 1) = ListView1.ListItems(Columna).SubItems(Fila)
                                .cells(Columna + 1, Fila + 1).Font.Name = "Tahoma"
                                .cells(Columna + 1, Fila + 1).Font.Size = 8 'TamañoLetra
                                .cells(Columna + 1, Fila + 1).Borders.Color = vbBlack 'ColorBorde
                                .cells(Columna + 1, Fila + 1).Font.Color = vbBlack 'ColorLetra
                        Next Fila
                        .Columns("A:Z").AutoFit
                        'If Not ProgressBar1 Is Nothing Then
                        '    ProgressBar1.Value = ProgressBar1.Value + 1 'Aumentamos en 1 la propiedad value
                        'End If
                    End With
                Next Columna
                With Excel
                    .Range("A1").Select
                    .selection.EntireColumn.Delete
                End With
                Libro.SaveAs FileName:=Ruta
                MsgBox "Se ha guardado existosamente", vbInformation, "Break Burger"
                'Liberacion de memoria
                Set Libro = Nothing
                Excel.Quit
                Set Excel = Nothing
                Exportar_Excel = True
                'If Not ProgressBar1 Is Nothing Then
                '   ProgressBar1.Value = 0
               ' End If
                Screen.MousePointer = vbArrow
            Else
            MsgBox "Usuario presiono cancelar", vbInformation, "Break Burger"
            End If
        End If
    End If
End Function


Function FCobrar()
sql = "exec sp_ventas 0," & FacturaNRO & ","
If Ventas.Clientes.ListIndex = -1 Then
    sql = sql & "0"
Else
    sql = sql & Ventas.Clientes.ItemData(Ventas.Clientes.ListIndex)
End If
sql = sql & ",null,null,null,null,null," & Replace(Replace(Ventas.PEnvio.Text, ".", ""), ",", "")
sql = sql & "," & Ventas.pago1.ItemData(Ventas.pago1.ListIndex)
If Ventas.pago2.ListIndex = -1 Then
    sql = sql & ",0"
Else
    sql = sql & "," & Ventas.pago2.ItemData(Ventas.pago2.ListIndex)
End If
sql = sql & ",null," & Replace(Ventas.TPagoA.Text, ".", "")
sql = sql & "," & Replace(Replace(Ventas.TPagoB.Text, ".", ""), ",", "")
sql = sql & "," & Replace(Replace(Ventas.PagaCon.Text, ".", ""), ",", "")
sql = sql & ",'" & Format(Ventas.DTPicker1.Value, "hh:mm:ss") & "'"
sql = sql & ",'" & Ventas.comentario.Text & "'," & mov_entrega

Call BuscaConexion(sql)
MsgBox rs(0), vbInformation, "Break Burger"
If (MsgBox("Generar Comprobante", vbQuestion + vbYes, "Break Burger")) = vbYes Then
    Ventas.Reporte.Enabled = True
'Else
'    MsgBox "Fin del proceso", vbInformation, "Break Burger"
'    Unload Ventas
'    Ventas.Show
End If
End Function



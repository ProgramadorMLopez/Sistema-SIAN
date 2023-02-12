VERSION 5.00
Begin VB.Form descripcion 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   1215
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8325
   Icon            =   "descripcion.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1215
   ScaleWidth      =   8325
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton aceptar 
      Caption         =   "&Ingreso"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   7320
      Picture         =   "descripcion.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   120
      Width           =   855
   End
   Begin VB.TextBox descripcion 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   7095
   End
End
Attribute VB_Name = "descripcion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub aceptar_Click()
desCasa = descripcion.Text
Me.Hide
FCobrar
Comprobante.Show
End Sub

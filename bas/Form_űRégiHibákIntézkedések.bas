Option Compare Database



Private Sub FennállE_AfterUpdate()
Me.Requery
End Sub

Private Sub Form_Current()
    Me.Hiba_részletei_.Requery
End Sub

Private Sub Form_Load()
Me.Kereső = "*"
Me.Requery
End Sub

Private Sub Kereső_AfterUpdate()
'    Me.FilterOn = False
'    Me.Filter = "[lekérdezésNeve] = '" & Me.Kereső.Value & "'"
'    Me.FilterOn = True
Me.Requery

End Sub
Option Compare Database

Private Sub F�jlV�laszt�_Click()
   
  
   ' Requires reference to Microsoft Office 11.0 Object Library.
 
   Dim fDialog As Office.FileDialog
   Dim varFile As Variant
 
   ' Clear listbox contents.
   Me.File.Value = ""
 
   ' Set up the File Dialog.
   Set fDialog = Application.FileDialog(msoFileDialogFilePicker)
 
   With fDialog
 
      ' Allow user to make multiple selections in dialog box
      .AllowMultiSelect = False
             
      ' Set the title of the dialog box.
      .Title = "Please select one or more files"
 
      ' Clear out the current filters, and add our own.
      .Filters.Clear
      .Filters.Add "MsExcel t�bla", "*.XLS*"
      '.Filters.Add "Access Projects", "*.XLSM"
      .Filters.Add "Minden fajta", "*.*"
 
      ' Show the dialog box. If the .Show method returns True, the
      ' user picked at least one file. If the .Show method returns
      ' False, the user clicked Cancel.
      If .Show = True Then
 
         'Loop through each file selected and add it to our list box.
         For Each varFile In .SelectedItems
            Me.File.Value = varFile
         Next
 
      Else
         MsgBox "You clicked Cancel in the file dialog box."
      End If
   End With
End Sub

Private Sub OK_gomb_Click()
    'Beolvas
    Select Case Me.OK_gomb.Caption
        Case "Beolvas�s"
            Call Szem�lyt�rzsImport(Me.File.Value, Me)
            Me.OK_gomb.Caption = "Bez�r"
        Case "Bez�r"
            Me.OK_gomb.Caption = "Beolvas�s"
            DoCmd.Close
        Case Else
            Me.OK_gomb.Caption = "Bez�r"
        
    End Select

        
End Sub
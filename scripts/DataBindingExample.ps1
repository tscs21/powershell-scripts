New-ListView -Show -DataBinding @{
   ItemsSource = New-Binding -Path Output
} -View {
   New-GridView -Columns {
       New-GridViewColumn "Name"
       New-GridViewColumn "Age"
       }
} -DataContext {
   Get-PowerShellDataSource -Script {
       $list = @()
       $list += New-Object Object |
           Add-Member NoteProperty Name "Serge" -passthru |
           Add-member NoteProperty Age "43" -passthru
       $list += New-Object Object |
           Add-Member NoteProperty Name "Dinah" -passthru |
           Add-member NoteProperty Age "42" -passthru
       $list += New-Object Object |
           Add-Member NoteProperty Name "Scott" -passthru |
           Add-member NoteProperty Age "8" -passthru
       $list += New-Object Object |
           Add-Member NoteProperty Name "Dean" -passthru |
           Add-member NoteProperty Age "4" -passthru
       $list += New-Object Object |
           Add-Member NoteProperty Name "Tahne" -passthru |
           Add-member NoteProperty Age "1" -passthru
       $list
   }
}
New-ListView -Width 350 -Height 350 -DataBinding @{
   ItemsSource = New-Binding -IsAsync -UpdateSourceTrigger PropertyChanged -Path Output
} -View {
   New-GridView -AllowsColumnReorder -Columns {
       New-GridViewColumn "Name"
       New-GridViewColumn "Id"
   }
} -DataContext {
   Get-PowerShellDataSource -Script {
       Get-Process | foreach-Object { $_ ; Start-Sleep -Milliseconds 25 }
   }
} -On_Loaded {
   Register-PowerShellCommand -Run -In "0:01:0" -ScriptBlock {
       $window.Content.DataContext.Script = $window.Content.DataContext.Script
   }
} -asjob
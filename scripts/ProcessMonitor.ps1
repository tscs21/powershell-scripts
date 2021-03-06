New-ListView -Width 350 -height 350 -DataBinding @{
    ItemsSource = New-Binding -IsAsync -UpdateSourceTrigger PropertyChanged -path Output
} -View {
    New-GridView -AllowsColumnReorder -Columns {
        New-GridViewColumn "name"
        New-GridViewColumn "Id"
        }
} -DataContext {
    Get-PowerShellDataSource -script {
        Get-Process | foreach-object {$_ ; Start-Sleep -Milliseconds 25}
        }
} -On_Loaded {
    Register-PowerShellCommand -Run -In "0:01:0" -ScriptBlock {
        $window.Content.DataContext.Script = $window.Content.DataContext.Script
        }
} -asjob

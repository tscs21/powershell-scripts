New-Label -On_Loaded {
    Register-PowerShellCommand -ScriptBlock {
        $d = Get-Date
        $content = $d.ToLongDateString()+" " +$d.ToLongTimeString()
        $window.Content.Content = $content
    } -run -in "0:0:1"
} -asjob


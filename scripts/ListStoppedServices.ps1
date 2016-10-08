param ([string] $StartsWith)
$StopServices = Get-Service | Where-Object {$_.Status -eq "Stopped"}
Write-host "The following $StartsWith services are stoppped on"`
"$Env:COMPUTERNAME:" -Foregroundcolor Yellow

$StopServices | Where-Object {$_.Name -like $StartsWith} |`
format-table Name, DisplayName


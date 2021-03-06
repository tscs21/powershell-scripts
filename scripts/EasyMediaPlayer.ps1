New-Window -AllowDrop -On_Drop {
$file = @($_.Data.GetFileDropList())[0]
$this.Content.Source = $file
$this.Content.Play()
} -On_Loaded {
$this.Content.Source = dir "$env:PUBLIC\videos\Sample Videos" -Filter *.wmv |
Get-Random | Select-Object -ExpandProperty Fullname
$this.Content.Play()
} -On_Closing {
$this.Content.Stop()
} {
New-MediaElement -LoadedBehavior Manual
} -asJob
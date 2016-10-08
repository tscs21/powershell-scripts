$Files = Get-ChildItem -File -Recurse -Path 'D:\Documents\Music\tempT' 
$Files | ForEach-Object {
    Invoke-Item D:\Documents\Music\tempT\*\*.flac
}
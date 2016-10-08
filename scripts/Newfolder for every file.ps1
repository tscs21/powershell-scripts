$Files = Get-ChildItem -Path 'D:\Documents\Music\tempU-Z'
$Files | ForEach-Object {

    $FileFullName = $_.FullName
    $TempFileName = "$($FileFullName).tmp"    
    $DestinationFileName = "$FileFullName\$($_.Name)"

    Move-Item $FileFullName $TempFileName
    New-Item -Path $FileFullName -ItemType Directory
    Move-Item $TempFileName $DestinationFileName
    Rename-Item $FileFullName $_.BaseName
}
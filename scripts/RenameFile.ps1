$Files = Get-ChildItem -Path 'D:\Documents\Music\tempU-Z'
$Files | ForEach-Object {
    if( $_.BaseName.Contains("-")) {
        $ArtistName, $AlbumName = $_.BaseName.split(' - ',2)
        Rename-Item $_.FullName "$($AlbumName).flac"
    }
}
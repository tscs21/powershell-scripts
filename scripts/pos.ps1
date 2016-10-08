$i=1
for ($i -le 5; $i++)
{
 Start-Sleep -m 5000      #added delay
 $dY = ([System.Windows.Forms.Cursor]::Position.Y ) #read the Y coordinates
 $dX = ([System.Windows.Forms.Cursor]::Position.X ) #read the X coordinates
 Write-Host $dX,$dY     #print to screen
}
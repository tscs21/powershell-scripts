$files = Get-ChildItem -recurse -filter *.wav
foreach ($file in $files)
{
    c:\Users\tim\OggEncGT3b1 -Q -q 10 $file.FullName
}
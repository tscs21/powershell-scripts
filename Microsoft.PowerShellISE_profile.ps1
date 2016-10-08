Set-ExecutionPolicy RemoteSigned
New-Item alias:np -Value C:\Windows\System32\notepad.exe 

function OpenOnedriveFileByName([string] $name) {Start-Process C:\Users\timsc\OneDrive\$name}
New-Item alias:ofn -Value OpenOnedriveFileByName 

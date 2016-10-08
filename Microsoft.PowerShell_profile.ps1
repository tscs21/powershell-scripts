Set-ExecutionPolicy RemoteSigned
Set-Location C:\Users\timsc
new-item alias:np -value c:\windows\system32\notepad.exe


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
function subl { &"${Env:ProgramFiles}\Sublime Text 3\sublime_text.exe" $args }

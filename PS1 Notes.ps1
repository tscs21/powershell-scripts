PS1 Notes

# gets child objects ie files selects the property value of each 
# displaying in a gridview (window) where items can be selected and 
# passed on to be displayed

Get-ChildItem | 
Select-Object -Property |
Out-GridView -PassThru

#variables always declared $VarName = ""
$musiclist = Get-ChildItem E:\Music
$musiclist | Get-Member
$musiclist.Length
[int] $myint #strongly typed

#a command can be written over several line using the pipe | or backtick ` 

Get-ChildItem | Out-GridView  `
				-PassThru `

Get-PSProvider 
Get-PSDrive                

New-PSDrive -Name tim `
            -PSProvider FileSystem `
            -Root C:\Users\timsc\OneDrive\Documents

Set-Location tim:
Get-ChildItem | Format-Table

Remove-PSDrive tim

Get-ChildItem -name | Sort-Object > C:\Users\timsc\OneDrive\Documents\music01.txt
$Name = New-Grid -Rows 2 -Columns 'Auto','1*' {
$TextChanged = {
$firstName = Get-Resource FirstName | Select-Object -ExpandProperty Text
$lastName = Get-Resource LastName | Select-Object -ExpandProperty Text
$this.Parent.Tag = "$LastName, $FirstName"
}
New-Label "First Name"
New-TextBox -Name FirstName -Column 1 -On_Loaded {
Set-Resource -Name FirstName -Value $this -Depth -1
} -On_TextChanged $TextChanged
New-Label "Last Name" -Row 1
New-TextBox -Name LastName -Column 1 -Row 1 -On_Loaded {
Set-Resource -Name LastName -Value $this -Depth -1
} -On_TextChanged $TextChanged
} -show 
foreach ($address in get-content "c:\users\tim\testpds.txt")
{
  Out-host -inputobject $address 
}
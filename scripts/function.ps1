function Get-Bios

{

 Param (

  $computername,

  $credential)

 

  Get-WmiObject -class Win32_bios @psboundparameters

}
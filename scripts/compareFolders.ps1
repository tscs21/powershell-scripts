# displays only files in F:\ that are not in H:\

$1 = gci -recurse H:\libraries\documents | ? {!$_.PsIsContainer} | % {$_.name}
gci -recurse F:\libraries\documents | ? {!$_.PsIsContainer} | ? {$1 -notcontains $_.name} | % {$_.name}

# created from the following example:-

# $Dir1 = gci c:\temp\1 | ? {!$_.PsIsContainer} | % {$_.Name} 
# gci c:\temp\2 | ? {!$_.PsIsContainer} | ? {$Dir1 -contains $_.Name} | % {$_.Name}

gci -recurse C:\Temp | ? {!$_.PsIsContainer} | % {$_.Name} 
gci F:\Temp | ? {!$_.PsIsContainer} |? {$Dir1 -contains $_.Name} | % {$_.Name}}
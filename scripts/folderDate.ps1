param ($x,$y)

get-childitem -recurse $x |
where {$_.creationtime -nomatch [datetime]::parse($y)} |
ft fullname


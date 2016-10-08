$psScriptName   = "ScriptSystem.Collection.ps1"
$psScriptAuthor = "Md. Marufuzzaman"
$psScriptDate   = "19/02/2009"

### Variable declaration ###
###  hash table ###
$DictionaryEntry =  new-object system.collections.DictionaryEntry; 
$myHashTable = new-object system.collections.hashtable 
### ArrayList ###
$myArrayList = new-object system.collections.ArrayList 
## Assign some values
$myHashTable = @{"" = 1; "Code Project" = 2; "Is" = 3; "Cool" = 4}
$myArrayList = @{"" = 1; "Code Project" = 2; "Is" = 3; "Cool" = 4}

foreach($entry in $myHashTable)
{
    write-host ($entry.Keys , $entry.Values)
}

foreach($entry in $myArrayList)
{
    write-host ($entry.Keys , $entry.Values )
}
$olFolderDrafts = 16
$ol = New-Object -comObject Outlook.Application 
$ns = $ol.GetNameSpace("MAPI")

# call the save method yo dave the email in the drafts folder
$mail = $ol.CreateItem(0)
$null = $Mail.Recipients.Add("tim_smith@vodafone.co.nz")  
$Mail.Subject = "PS1 Script TestMail"  
$Mail.Body = "  Test Mail  "
$Mail.save()

# get it back from drafts and update the body
$drafts = $ns.GetDefaultFolder($olFolderDrafts)
$draft = $drafts.Items | where {$_.subject -eq 'PS1 Script TestMail'}
$draft.body += "`n foo bar"
$draft.save()

# send the message
#$draft.Send()
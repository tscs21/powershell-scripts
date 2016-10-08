$psScriptName   = "ScriptWinForm.ps1"
$psScriptAuthor = "Md. Marufuzzaman"
$psScriptDate   = "19/02/2009"

## .Net Namespace
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 

## Creating instance of System.Windows.Forms.Form 
$objForm = New-Object System.Windows.Forms.Form 
## Set Form caption
$objForm.Text = "The Code Project"
##Set window size
$objForm.Size = New-Object System.Drawing.Size(350,150) 
## Set window start position 
$objForm.StartPosition = "CenterScreen"

## Add event for key press
$objForm.KeyPreview = $True
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Enter") 
    {$x=$objTextBox.Text;$objForm.Close()}})
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Escape") 
    {$objForm.Close()}})
    
$objLabel = New-Object System.Windows.Forms.Label
$objLabel.Location = New-Object System.Drawing.Size(10,20) 
$objLabel.Size = New-Object System.Drawing.Size(280,40) 
$objLabel.Text = "I will not say I have failed 1000 times; " + 
                 "I will say that I have discovered 1000 " + 
                 "ways that can cause failure – Thomas Edison."
                
$objForm.Controls.Add($objLabel) 

## Creating System.Windows.Forms.Form.Button object
$OkButton = New-Object System.Windows.Forms.Button
## Set the button location / position
$OkButton.Location = New-Object System.Drawing.Size(150,75)
## Set button size
$OkButton.Size = New-Object System.Drawing.Size(75,23)
## Set button text
$OkButton.Text = "OKay"
## Set button click event
$OkButton.Add_Click({$objForm.Close()})

## Add the button into the From
$objForm.Controls.Add($OkButton)

$objForm.Topmost = $True
$objForm
$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()
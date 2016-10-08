$psScriptName   = "ScriptSystem.Drawing.ps1"
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
$objForm.Size = New-Object System.Drawing.Size(250,150)  
## Set window start position 
$objForm.StartPosition = "CenterScreen"

## Add event for key press
$objForm.KeyPreview = $True
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Enter") 
    {$x=$objTextBox.Text;$objForm.Close()}})
$objForm.Add_KeyDown({if ($_.KeyCode -eq "Escape") 
    {$objForm.Close()}})

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

$formGraphics = $objForm.createGraphics()

$objForm.add_paint(
{
    $myBrush = New-Object System.Drawing.SolidBrush green
    $myPen = New-Object System.Drawing.Pen red
    $myPen.color = "red"
    $myPen.width = 10

    $Point1 = new-object Drawing.Point 10, 10
    $Point2 = new-object Drawing.Point 100, 30
    $Point3 = new-object Drawing.Point 170, 10
    $Point4 = new-object Drawing.Point 200, 60
    $formGraphics.DrawBezier($myPen, $Point1, $Point2, $Point3, $Point4)
}
)

## Add the button into the From
$objForm.Controls.Add($OkButton)
$objForm.Topmost = $True
$objForm
$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()
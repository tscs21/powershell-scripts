param(
    ## The input to send to the clipboard
    [Parameter(ValueFromPipeline = $true)]
    [object[ ]] $InputObject
)
begin
{
    Set-StrictMode -Version Latest
    $objectsToProcess = @()
}
process
{
    ## Collect everything sent to the script either through
    ## pipeline input, or direct input.
    $objectsToProcess += $inputObject
}
end
{
    ## Launch a new instance of PowerShell in STA mode.
    ## This lets us interact with the Windows clipboard.
    $objectsToProcess | PowerShell -NoProfile -STA -Command {
        Add-Type -Assembly PresentationCore
        ## Convert the input objects to a string representation
        $clipText = ($input | Out-String -Stream) -join "`r`n"
        ## And finally set the clipboard text
        [Windows.Clipboard]::SetText($clipText)
    }
}
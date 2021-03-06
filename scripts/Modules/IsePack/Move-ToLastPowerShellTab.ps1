function Move-ToLastPowerShellTab {
    <#
    .Synopsis
        Moves to the last PowerShell Tab
    .Description
        Moves to the last PowerShell Tab
    .Example
        Move-ToLastPowerShellTab
    #>
    param()
    for ($index = 0; $index -lt $psise.PowerShellTabs.Count; $index++) {
        if ($psise.PowerShellTabs[$index] -eq $psise.CurrentPowerShellTab) {
            break       
        } 
    }
    
    $tab = $psise.PowerShellTabs[$index  - 1]
    if (-not $tab) {
        $psise.PowerShellTabs.SetSelectedPowerShellTab(
            @($psise.PowerShellTabs)[-1]
        )
    } else {
        $psise.PowerShellTabs.SetSelectedPowerShellTab($tab)
    }
    
}
New-Grid -Name gGrid1 -Background  blue -Rows 2 -Columns "auto","1*" -On_Loaded {            
    $script:AccData = $window | Get-ChildControl AccData            
    $script:Data = $window | Get-ChildControl Data            
    $AccData.background = "black"            
    $AccData.foreground = "lime"            
} -Children {            
    New-Label "Data" -Row 0 -Column 0 -Foreground "yellow"            
    New-TextBox -TextWrapping Wrap -AcceptsReturn -Row 0 -Column 1 -Name Data -On_PreviewKeyUp {            
        if($_.key -eq "Return"){                      
            $AccData.text = $AccData.text + $this.text            
            $this.text = ""            
        }            
    }            
    New-Label "Accumulated Data" -Row 1 -Column 0 -Foreground "yellow"            
    New-TextBox -IsReadOnly -TextWrapping Wrap -Row 1 -Column 1 -Name AccData            
} -asjob
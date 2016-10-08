New-Grid -Rows (@('Auto')*13) {            
    foreach ($n in 8..32) {            
        if (-not ($n % 2)) {            
            $row = ($n - 8) / 2            
            New-Label "Font Size $n" -FontSize $n -Row $row            
        }            
    }            
} -asjob
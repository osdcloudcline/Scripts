$Productivity1 = "Adobe Reader DC"


Write-Verbose "Updating $Productivity1 on $env:computername..." -Verbose
winget upgrade --id Adobe.Acrobat.Reader.64-bit

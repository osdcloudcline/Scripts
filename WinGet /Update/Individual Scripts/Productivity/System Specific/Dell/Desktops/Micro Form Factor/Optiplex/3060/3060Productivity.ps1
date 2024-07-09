$Productivity1 = "Adobe Reader DC"


Write-Verbose "Checking for and processing update: $Productivity1..." -Verbose
winget upgrade --id Adobe.Acrobat.Reader.64-bit

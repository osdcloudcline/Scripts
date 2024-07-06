$Utilitiesapp1 = "7-Zip"

Write-Verbose "Processing update: $Utilitiesapp1..." -Verbose
winget upgrade --id 7zip.7zip

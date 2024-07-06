$Utilitiesapp1 = "7-Zip"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id 7zip.7zip

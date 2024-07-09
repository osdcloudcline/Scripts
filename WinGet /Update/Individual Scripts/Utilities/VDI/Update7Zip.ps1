$Utilitiesapp1 = "7-Zip"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id 7zip.7zip

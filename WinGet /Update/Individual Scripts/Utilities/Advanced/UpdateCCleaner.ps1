$Utilitiesapp1 = "CCleaner"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Piriform.CCleaner

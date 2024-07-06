$Utilitiesapp1 = "CCleaner"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Piriform.CCleaner

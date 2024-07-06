$Utilitiesapp1 = "IObit Driver Booster"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id IObit.DriverBooster

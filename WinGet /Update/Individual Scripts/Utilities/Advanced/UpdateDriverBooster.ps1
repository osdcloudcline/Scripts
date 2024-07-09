$Utilitiesapp1 = "IObit Driver Booster"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id IObit.DriverBooster

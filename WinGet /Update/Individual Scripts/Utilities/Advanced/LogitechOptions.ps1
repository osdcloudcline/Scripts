$Utilitiesapp1 = "Logitech Options"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Logitech.Options

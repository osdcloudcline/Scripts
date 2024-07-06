$Utilitiesapp1 = "Logitech Options"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Logitech.Options

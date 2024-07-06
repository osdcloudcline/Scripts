$Utilitiesapp1 = "Logitech Unifying Software"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Logitech.UnifyingSoftware

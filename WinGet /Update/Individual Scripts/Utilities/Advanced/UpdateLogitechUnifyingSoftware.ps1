$Utilitiesapp1 = "Logitech Unifying Software"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Logitech.UnifyingSoftware

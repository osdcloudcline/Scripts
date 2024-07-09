$Utilitiesapp1 = "Samsung Magician"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Samsung.SamsungMagician

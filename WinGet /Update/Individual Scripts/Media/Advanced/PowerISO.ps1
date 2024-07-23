$app1 = "PowerISO"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id PowerSoftware.PowerISO

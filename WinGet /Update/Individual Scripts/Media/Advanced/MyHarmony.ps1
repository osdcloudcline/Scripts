$app1 = "Logitech MyHarmony"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Logitech.MyHarmony

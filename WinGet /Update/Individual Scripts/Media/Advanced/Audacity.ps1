$app1 = "Audacity"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Audacity.Audacity


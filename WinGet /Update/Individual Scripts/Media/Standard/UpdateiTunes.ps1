$app1 = "Apple iTunes"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Apple.iTunes

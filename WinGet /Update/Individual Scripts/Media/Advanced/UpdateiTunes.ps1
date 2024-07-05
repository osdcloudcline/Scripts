$app1 = "Apple iTunes"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget upgrade --id Apple.iTunes

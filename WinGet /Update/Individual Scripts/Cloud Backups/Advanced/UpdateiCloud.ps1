$app1 = "Apple iCloud"

Write-Host "Processing update: $app1..." -ForegroundColor Cyan

winget upgrade --id Apple.iCloud 

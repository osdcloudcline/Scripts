$app1 = "Apple iCloud"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Apple.iCloud 

$app1 = "CCleaner"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Piriform.CCleaner

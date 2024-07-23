$app1 = "7-Zip"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id 7zip.7zip

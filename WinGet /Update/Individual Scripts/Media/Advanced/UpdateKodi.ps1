$app1 = "Kodi"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id XBMCFoundation.Kodi

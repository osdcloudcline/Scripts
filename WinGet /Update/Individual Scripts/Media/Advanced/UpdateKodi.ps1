$app1 = "Kodi"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget upgrade --id XBMCFoundation.Kodi

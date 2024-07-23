$app1 = "MKVToolNix"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id MoritzBunkus.MKVToolNix

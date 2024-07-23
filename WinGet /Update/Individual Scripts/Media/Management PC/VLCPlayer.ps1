$app1 = "VLC Media Player"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id VideoLAN.VLC


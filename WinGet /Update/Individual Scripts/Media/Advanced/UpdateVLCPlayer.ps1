$app1 = "VLC Media Player"

Write-Host "Updating $app1..." -ForegroundColor Cyan

winget upgrade --id VideoLAN.VLC

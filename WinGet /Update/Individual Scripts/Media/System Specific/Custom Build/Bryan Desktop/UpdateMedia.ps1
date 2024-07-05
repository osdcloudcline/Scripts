$app1 = "VLC Media Player"
$app2 = "MediaInfo"


Write-Host "Updating $app1..." -ForegroundColor Cyan
winget upgrade --id VideoLAN.VLC



Write-Host "Updating $app2..." -ForegroundColor Cyan
winget upgrade --id MediaArea.MediaInfo.GUI

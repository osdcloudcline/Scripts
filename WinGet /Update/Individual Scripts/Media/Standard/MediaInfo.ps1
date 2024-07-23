$app1 = "MediaInfo"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id MediaArea.MediaInfo.GUI

$app1 = "Audacity and FFMPEG"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Audacity.Audacity
choco upgrade audacity-ffmpeg -y

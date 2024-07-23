$app1 = "Handbrake"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id HandBrake.HandBrake

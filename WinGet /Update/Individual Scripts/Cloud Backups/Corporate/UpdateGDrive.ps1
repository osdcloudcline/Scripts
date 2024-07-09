$app1 = "Google Drive"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Google.GoogleDrive

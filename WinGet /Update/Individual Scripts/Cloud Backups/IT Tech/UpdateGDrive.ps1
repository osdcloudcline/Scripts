$app1 = "Google Drive"

Write-Host "Processing updates: $app1..." -ForegroundColor Cyan
winget upgrade --id Google.GoogleDrive

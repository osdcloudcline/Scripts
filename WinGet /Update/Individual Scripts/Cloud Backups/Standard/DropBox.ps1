$app1 = "DropBox"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Dropbox.Dropbox

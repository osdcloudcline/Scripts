$app1 = "DropBox"

Write-Host "Processing updates: $app1..." -ForegroundColor Cyan
winget upgrade --id Dropbox.Dropbox

$app1 = "DropBox"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

winget uninstall --id Dropbox.Dropbox

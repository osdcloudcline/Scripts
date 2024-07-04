$app1 = "Apple iCloud"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

winget uninstall --id Apple.iCloud

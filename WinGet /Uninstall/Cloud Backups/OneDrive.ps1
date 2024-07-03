$app1 = "Microsoft OneDrive"

Write-Host "Uninstalling $app1..." -ForegroundColor Cyan

winget uninstall --id Microsoft.OneDrive

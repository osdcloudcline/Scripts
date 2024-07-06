$app1 = "Microsoft OneDrive"

Write-Host "Processing update: $app1..." -ForegroundColor Cyan

winget upgrade --id Microsoft.OneDrive

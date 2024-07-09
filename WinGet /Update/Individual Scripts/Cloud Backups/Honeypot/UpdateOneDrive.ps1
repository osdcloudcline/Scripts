$app1 = "Microsoft OneDrive"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Microsoft.OneDrive

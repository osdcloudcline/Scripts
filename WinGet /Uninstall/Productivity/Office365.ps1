$app1 = "Microsoft 365 (Office)"
$app2 = "Microsoft Office 365 for enterprise"


Write-Host "Processing unistallation: $app1..." -ForegroundColor Cyan
winget uninstall --id 9WZDNCRD29V9 --source msstore

Write-Host "Processing unistallation: $app2..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Office

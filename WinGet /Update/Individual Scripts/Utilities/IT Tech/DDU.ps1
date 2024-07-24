$app1 = "Display Driver Uninstaller"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id Wagnardsoft.DisplayDriverUninstaller

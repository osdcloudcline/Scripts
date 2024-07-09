$Utilitiesapp1 = "Display Driver Uninstaller"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Wagnardsoft.DisplayDriverUninstaller

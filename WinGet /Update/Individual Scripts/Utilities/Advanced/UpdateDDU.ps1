$Utilitiesapp1 = "Display Driver Uninstaller"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Wagnardsoft.DisplayDriverUninstaller

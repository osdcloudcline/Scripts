$Utilitiesapp1 = "Windows Admin Center"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Microsoft.WindowsAdminCenter

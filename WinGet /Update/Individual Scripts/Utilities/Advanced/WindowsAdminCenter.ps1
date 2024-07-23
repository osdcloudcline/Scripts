$Utilitiesapp1 = "Windows Admin Center"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Microsoft.WindowsAdminCenter

$Utilitiesapp1 = "Fan Control"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Rem0o.FanControl

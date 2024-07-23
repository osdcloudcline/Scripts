$Utilitiesapp1 = "Microsoft Mouse and Keyboard Center"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Microsoft.MouseandKeyboardCenter

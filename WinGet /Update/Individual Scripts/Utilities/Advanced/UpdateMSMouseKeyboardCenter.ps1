$Utilitiesapp1 = "Microsoft Mouse and Keyboard Center"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Microsoft.MouseandKeyboardCenter

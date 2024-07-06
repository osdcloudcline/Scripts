$Utilitiesapp1 = "Rufus"

Write-Host "Processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Rufus.Rufus

$Utilitiesapp1 = "Rufus"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id Rufus.Rufus

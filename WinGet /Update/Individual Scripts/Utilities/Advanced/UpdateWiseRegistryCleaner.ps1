$Utilitiesapp1 = "Wise Registry Cleaner"

Write-Host "Checking for and processing update: $Utilitiesapp1..." -ForegroundColor Cyan
winget upgrade --id XPDLS1XBTXVPP4 --source msstore

$app1 = "GIMP"

Write-Host "Checking for and processing update: $app1..." -ForegroundColor Cyan
winget upgrade --id GIMP.GIMP

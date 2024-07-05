$app1 = "GIMP"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget upgrade --id GIMP.GIMP

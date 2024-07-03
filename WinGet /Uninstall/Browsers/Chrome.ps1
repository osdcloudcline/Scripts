$app1 = "Google Chrome for Enterprise"

Write-Host "Removing $app1..." -ForegroundColor Cyan

winget uninstall --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

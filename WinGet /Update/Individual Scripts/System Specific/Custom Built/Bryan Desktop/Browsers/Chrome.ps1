$app1 = "Google Chrome for Enterprise"

Write-Host "Checking for and processing update: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Google.Chrome

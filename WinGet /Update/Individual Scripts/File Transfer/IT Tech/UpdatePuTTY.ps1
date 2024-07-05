$app1 = "PuTTy"

Write-Host "Processing updates: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id PuTTY.PuTTY

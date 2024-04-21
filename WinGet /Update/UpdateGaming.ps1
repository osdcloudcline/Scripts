$app1 = "Steam"

Write-Host "Beginning Application Upgrades on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading Gaming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

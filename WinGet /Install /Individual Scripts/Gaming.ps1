$app1 = "Steam"

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green

Write-Host "Installing Gaming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

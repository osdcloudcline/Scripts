$app1 = "VS Code"
$app2 = "Visual Studio 2022 Enterprise"

Write-Host "Beginning Application upgrades on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading Programming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername ..." -ForegroundColor Yellow
winget upgrade --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app2 on $env:computername ..." -ForegroundColor Yellow
winget upgrade --id Microsoft.VisualStudio.2022.Enterprise --exact --accept-source-agreements  --accept-source-agreements --force

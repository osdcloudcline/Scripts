$app1 = "Google Chrome for Enterprise"
$app2 = "Mozilla Firefox"

Write-Host "Beginning Application Upgrades on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Upgrading: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

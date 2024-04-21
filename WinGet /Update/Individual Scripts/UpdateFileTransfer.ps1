$app1 = "FileZilla"
$app2 = "PuTTy"
$app3 = "WinSCP"

Write-Host "Beginning Application Upgrades on $env:computername..." -ForegroundColor Green

# File Transfer Software
Write-Host "Upgrading File Transfer Applications on $env:computername..." -ForegroundColor Green

Write-Host "Upgrading: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco upgrade filezilla  -y

Write-Host "Upgrading: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Host "Upgrading: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget upgrade --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force

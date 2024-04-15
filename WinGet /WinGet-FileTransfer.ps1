$app1 = "FileZilla"
$app2 = "PuTTy"
$app3 = "WinSCP"

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green

# File Transfer Software
Write-Host "Installing File Transfer Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app1 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install filezilla  -y

Write-Host "Installing: $app2 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Host "Installing: $app3 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force

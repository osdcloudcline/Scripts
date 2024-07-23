$app1 = "Visual Studio 2022 Enterprise"

Write-Host "Checking for and processing update: $app1 on $env:computername ..." -ForegroundColor Yellow
choco upgrade visualstudio2022enterprise -y

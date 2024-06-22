$app1 = "VS Code"
$app2 = "Visual Studio 2022 Enterprise"

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green

Write-Host "Installing Programming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing $app1 on $env:computername ..." -ForegroundColor Yellow
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing $app2 on $env:computername ..." -ForegroundColor Yellow
choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

$app1 = "Visual Studio 2022 Enterprise"

Write-Host "Processing updates: $app1 on $env:computername ..." -ForegroundColor Yellow
winget upgrade --id Microsoft.VisualStudio.2022.Enterprise

$app1 = "VS Code"

Write-Host "Processing updates: $app1 on $env:computername ..." -ForegroundColor Yellow
winget upgrade --id Microsoft.VisualStudioCode

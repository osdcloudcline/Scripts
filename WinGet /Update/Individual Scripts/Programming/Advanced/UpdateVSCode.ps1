$app1 = "VS Code"

Write-Host "Checking for and processing update: $app1 on $env:computername ..." -ForegroundColor Yellow
winget upgrade --id Microsoft.VisualStudioCode

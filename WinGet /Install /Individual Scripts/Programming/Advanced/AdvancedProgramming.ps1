Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProgrammingInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VS Code"
$app2 = "AI Cursor Editor"
$app3 = "Microsoft Visual Studio Enterprise 2022"


Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app2..." -ForegroundColor Cyan
winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host
Write-Host "Installing $app3..." -ForegroundColor Cyan
choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

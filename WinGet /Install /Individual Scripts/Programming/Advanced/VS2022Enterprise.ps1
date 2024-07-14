Start-Transcript -Path "C:\Logs\Powershell\Advanced\Programming\$env:computername-VSEnterprise2022Install.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Visual Studio Enterprise 2022"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

Stop-Transcript

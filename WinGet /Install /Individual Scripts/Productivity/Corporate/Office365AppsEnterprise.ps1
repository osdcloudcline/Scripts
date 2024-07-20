Start-Transcript -Path "C:\Logs\Powershell\Corporate\Productivity\$env:computername-MSO365AppsEnterpriseInstall.log"

$app1 = "Microsoft Office 365 for enterprise"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

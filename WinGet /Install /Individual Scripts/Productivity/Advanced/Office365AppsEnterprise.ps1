Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedProductivity-MSO365AppsEnterpriseInstall.log"



$app1 = "Microsoft Office 365 for enterprise"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id 9WZDNCRD29V9 --source msstore

Stop-Transcript

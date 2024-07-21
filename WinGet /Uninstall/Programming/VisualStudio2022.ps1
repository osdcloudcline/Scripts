Start-Transcript -Path "C:\Logs\Powershell\Uninstall\Programming\$env:computername-VSEnterprise2022.log"

$Date = Get-Date

Write-Host "Uninstalled on: $Date"

$app1 = "Microsoft Visual Studio Enterprise 2022"

Write-Host
Write-Host "Uninstalling $app1..." -ForegroundColor Cyan
choco uninstall visualstudio2022enterprise -y

Stop-Transcript

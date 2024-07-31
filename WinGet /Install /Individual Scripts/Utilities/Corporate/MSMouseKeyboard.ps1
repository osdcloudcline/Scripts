Start-Transcript -Path "C:\Logs\Powershell\Corporate\Utilities\$env:computername-MSMouseKBCenterInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Mouse and Keyboard Center"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Microsoft.MouseandKeyboardCenter --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript

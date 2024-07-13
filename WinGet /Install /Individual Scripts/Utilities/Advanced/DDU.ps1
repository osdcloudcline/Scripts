Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-DDUInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Display Driver Uninstaller"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements  --accept-package-agreements --force

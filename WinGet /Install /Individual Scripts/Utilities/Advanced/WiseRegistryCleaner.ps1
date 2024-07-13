Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-WRCInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Wise Registry Cleaner"

Write-Verbose "Installing $app1..." -Verbose
winget install --id XPDLS1XBTXVPP4 --exact --accept-source-agreements --accept-source-agreements --force

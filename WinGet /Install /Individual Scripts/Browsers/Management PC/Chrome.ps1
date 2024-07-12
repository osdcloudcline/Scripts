Start-Transcript -Path "C:\Logs\Powershell\Management PC\$env:computername-ManagementPCBrowsersInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Chrome for Enterprise"



Write-Host "Installing Web Browsing Applications..." -ForegroundColor Green
Write-Host
Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan

winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

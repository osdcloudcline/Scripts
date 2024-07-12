Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-StandardBrowsersChromeInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Chrome for Enterprise"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host

Stop-Transcript

Start-Transcript -Path "C:\Logs\Powershell\Standard\$env:computername-StandardBrowsersFirefoxInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Mozilla Firefox"

Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

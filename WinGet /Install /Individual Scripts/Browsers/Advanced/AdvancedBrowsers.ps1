Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedBrowsersInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Chrome for Enterprise"
$app2 = "Mozilla Firefox"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host

Write-Host "Installing $app2..." -ForegroundColor Cyan
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

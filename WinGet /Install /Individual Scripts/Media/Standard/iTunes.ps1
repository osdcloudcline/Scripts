Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMedia-iTunesInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Apple iTunes"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

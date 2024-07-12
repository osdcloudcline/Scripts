Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedMedia-MKVToolNixInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "MKVToolNix"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

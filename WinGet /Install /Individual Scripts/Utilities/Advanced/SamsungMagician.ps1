Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-SamsungMagicianInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Samsung Magician"

Write-Host
Write-Verbose "Installing $app14..." -Verbose
winget install --id Samsung.SamsungMagician --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript

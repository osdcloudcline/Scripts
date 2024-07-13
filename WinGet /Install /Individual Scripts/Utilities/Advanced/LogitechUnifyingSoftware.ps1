Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-LogitechUnifyingSoftwareInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Logitech Unifying Software"

Write-Host
Write-Verbose "Installing $app27..." -Verbose
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript

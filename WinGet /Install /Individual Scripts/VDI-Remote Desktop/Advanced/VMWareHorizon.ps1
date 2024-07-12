Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedVDI-VMWAreHorizonInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VMWare Horizon Client"

Write-Host
Write-Host "Installing: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install vmware-horizon-client -y

Stop-Transcript

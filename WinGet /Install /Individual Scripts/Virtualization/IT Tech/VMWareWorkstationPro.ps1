Start-Transcript -Path "C:\Logs\Powershell\IT Tech\Virtualization\$env:computername-VMWareWSProInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VMWare Workstation Professional"

Write-Host "Installing: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
choco install vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y

Stop-Transcript

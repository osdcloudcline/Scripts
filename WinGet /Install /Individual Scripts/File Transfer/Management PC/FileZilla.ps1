Start-Transcript -Path "C:\Logs\Powershell\Management PC\File Transfer\$env:computername-FileZillaInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FileZilla"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
choco install filezilla  -y

Stop-Transcript

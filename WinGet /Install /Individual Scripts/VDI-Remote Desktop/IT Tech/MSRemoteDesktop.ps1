Start-Transcript -Path "C:\Logs\Powershell\IT Tech\VDI\$env:computername-MSRemoteDesktopInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Remote Desktop Client"

Write-Host
Write-Host "Installing: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

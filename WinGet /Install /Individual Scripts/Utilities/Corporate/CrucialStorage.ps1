Start-Transcript -Path "C:\Logs\Powershell\Corporate\Utilities\$env:computername-CrucialStorageInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Crucial Storage Executive"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Crucial.StorageExecutive --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript

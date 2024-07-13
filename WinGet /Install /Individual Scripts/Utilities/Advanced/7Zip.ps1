Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-7ZipInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "7-Zip"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript

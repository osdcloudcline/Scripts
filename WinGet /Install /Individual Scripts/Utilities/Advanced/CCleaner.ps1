Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedUtilities-CCleanerInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "CCleaner"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

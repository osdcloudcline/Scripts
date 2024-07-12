Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-AdvancedCloudBackup-UPBRInstall.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "User Profile Backup and Restore"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force


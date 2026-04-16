# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"




Write-Verbose "Installing: $CloudModule1..." -Verbose
Install-Module -Name Microsoft.PowerShell.PSResourceGet -Force
Import-Module Microsoft.PowerShell.PSResourceGet
Get-Module Microsoft.PowerShell.PSResourceGet -ListAvailable
Install-Module -Name PSCloudPC -Verbose
Import-Module PSCloudPC -Verbose -Force
Get-Module -ListAvailable | Where-Object {$_.Name -eq "PSCloudPC"}
pwsh -PassThru | Connect-Windows365

# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"

Set-PSResourceRepository -Name PSGallery -Trusted


Write-Verbose "Installing: $CloudModule1..." -Verbose
Install-Module -Name Microsoft.PowerShell.PSResourceGet -Force
Import-Module Microsoft.PowerShell.PSResourceGet
Get-Module Microsoft.PowerShell.PSResourceGet -ListAvailable
pwsh
Install-PSResource -Name PSCloudPC -PassThru -Reinstall
Get-Module -ListAvailable | Where-Object {$_.Name -eq "PSCloudPC"}


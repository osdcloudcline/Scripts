# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Verbose "Installing: $CloudModule1..." -Verbose
pwsh | Install-PSResource -Name Microsoft.PowerShell.PSResourceGet Repository PSGallery -TrustRepository -AcceptLicense
pwsh | Install-PSResource -Name PSCloudPC -Repository PSGallery -TrustRepository -AcceptLicense
Start-Sleep -Seconds 5
pwsh | Import-Module -Name PSCloudPC -Force
Get-Module -ListAvailable | Where-Object {$_.Name -eq "PSCloudPC"}

# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Verbose "Installing: $CloudModule1..." -Verbose
Install-Module Microsoft.PowerShell.PSResourceGet -AllowClobber -SkipPublisherCheck -Force
Start-Process -FilePath $PS7 | Install-PSResource -Name PSCloudPC -Repository PSGallery -TrustRepository -AcceptLicense
Start-Sleep -Seconds 5
Start-Process -FilePath $PS7 | Import-Module -Name PSCloudPC -Force
Get-Module -ListAvailable | Where-Object {$_.Name -eq "PSCloudPC"}

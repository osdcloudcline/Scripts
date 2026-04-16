# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Host  "Installing: $CloudModule1..." -ForegroundColor Cyan
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-PSResource -Name PSCloudPC -Repository PSGallery -TrustRepository -Reinstall
Start-Sleep -Seconds 3
Write-Host

Start-Process -FilePath $PS7 -PassThru | Get-Command -Module PSCloudPC

# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Host  "Installing: $CloudModule1..." -ForegroundColor Cyan
Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 3
Import-Module -Name PSCloudPC -Force
Start-Sleep -Seconds 4
Write-Host

Get-Command -Module PSCloudPC

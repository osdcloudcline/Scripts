# 1. Define variables first
$CloudModule1 = "Windows 365 Cloud PC"
$ModuleName = "PSCloudPC"


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Host  "Installing: $CloudModule1..." -ForegroundColor Cyan
Install-PSResource -Name PSCloudPC 
Start-Sleep -Seconds 3
Write-Host

Get-Command -Module PSCloudPC

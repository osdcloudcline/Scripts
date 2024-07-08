$PSModsLogs = "C:\OSDCloud\DeploymentLogs\PSModules\$env:computername-PS7Modules.log"
Start-Transcript -Path $PSModsLogs
Get-Date 

############################
### PS Module Group Names ##
############################

$OSDGroup1 = "OSD: Cloud"

#################################
## PS Modules to be installed ###
#################################

$CloudModule1 = "Windows 365 Cloud PC"

# Cloud PowerShell Modules

$OSapp = "Microsoft Windows Powershell"
$OSappver = "Version: 7.4.3.0"	


$PS7 = "pwsh.exe"
Start-Process -FilePath $PS7

Write-Host "Installing and Importing: $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host

Write-Verbose "Installing: $CloudModule1..." -Verbose
Start-Process -FilePath $PS7 | Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Start-Process -FilePath $PS7 | Import-Module -Name PSCloudPC -Force
Start-Sleep -Seconds 4
Write-Host

Stop-Transcript

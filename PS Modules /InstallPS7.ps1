$PS7 = "C:\Program Files\PowerShell\7\pwsh.exe"
Start-Process -FilePath $PS7

$PSModsLogs = "C:\OSDCloud\DeploymentLogs\PSModules\$env:computername-PS7Modules.log"
Start-Transcript -Path $PSModsLogs
Get-Date 

############################
### PS Module Group Names ##
############################

$OSDGroup3 = "OSD: Cloud"

#################################
## PS Modules to be installed ###
#################################

$CloudModule18 = "Windows 365 Cloud PC"

# Cloud PowerShell Modules

Write-Host "Installing and Importing: $OSDGroup3 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host


Write-Verbose "Installing: $CloudModule18..." -Verbose
Install-Module -Name PSCloudPC -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Import-Module -Name PSCloudPC -Force
Start-Sleep -Seconds 5
Write-Host

Stop-Transcript

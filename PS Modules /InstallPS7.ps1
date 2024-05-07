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

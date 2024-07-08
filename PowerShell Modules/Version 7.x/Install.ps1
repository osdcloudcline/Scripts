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

Write-Verbose "Installing $OSapp, $OSappver..." -Verbose
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force

$PS7 = "pwsh.exe"

Write-Host "Installing and Importing: $OSDGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host


Write-Verbose "Installing: $CloudModule1..." -Verbose
Install-Module -Name Microsoft.PowerShell.PSResourceGet -AllowClobber -SkipPublisherCheck -Force
Start-Sleep -Seconds 3
Import-Module -Name Microsoft.PowerShell.PSResourceGet -Force
Start-Process -FilePath $PS7| Install-PSResource -Name PSCloudPC -Repository PSGallery -TrustRepository -AcceptLicense -Reinstall -PassThru
Start-Sleep -Seconds 5
Start-Process -FilePath $PS7 | Import-Module -Name PSCloudPC -Force -PassThru
Start-Sleep -Seconds 4
Write-Host
pwsh
$CloudModule1 = "Windows 365 Cloud PC"
Write-Verbose "Verifying Module: $CloudModule1..." -Verbose
Get-Module -ListAvailable | Where-Object {$_.Name -like '*PSCloud*'}
pause
Get-Process -name pwsh | Stop-Process -Force -WarningAction Ignore 

pause
Write-Host

Stop-Transcript

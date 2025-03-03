       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 
pause
Clear-Host

Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' This Git Hub-based script will perform the following:                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Scripts repository backup                                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloudDrivers repository backup                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Update-Scripts repository backup                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Uninstall-Scripts repository backup                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Install-Scripts repository backup                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDBuilder repository backup                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloud repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Software repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS-Items repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloud 2.0 repository backup                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDDocker repository backup                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host


Function Get-ScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

##############################
# OS Integration Scripts
###############################

$DriversScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Administrative/OS%20Integration/Drivers.ps1"
$ExtraFilesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Administrative/OS%20Integration/ExtraFiles.ps1"
$RegistryScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Administrative/OS%20Integration/Registry.ps1"
$UpdatesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Administrative/OS%20Integration/Updates.ps1"

####################################
# System Hardware Inventory  Scripts
#####################################

$HWInventoryScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Administrative/System%20Hardware%20Inventory/HardwareInfo.ps1"

####################################
# Audit Mode  Scripts
#####################################

$AuditModeCLIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/AuditMode/ConfigureCLIClients.ps1"
$AuditModeGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/AuditMode/ConfigureGUIClients.ps1"
$AuditModeServersScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/AuditMode/ConfigureServers.ps1"
$AuditModeMainScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/AuditMode/MainMenu.ps1"


#######################################
# Data Info Retrival Scripts - Local PC
########################################

$SoftwareDLLFilesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Data%20Info%20Retrival/Local%20PC/GetSoftwareDLLFiles.ps1"
$SoftwareEXEFilesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Data%20Info%20Retrival/Local%20PC/GetSoftwareEXEFiles.ps1"
$SystemDLLFilesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Data%20Info%20Retrival/Local%20PC/GetSystemDLLFiles.ps1"
$SystemEXEFilesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Data%20Info%20Retrival/Local%20PC/GetSystemEXEFiles.ps1"

#######################################
# Data Info Retrival Scripts - Network Devives
########################################

$RemoteNetworkDevicesScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Data%20Info%20Retrival/Network%20Devices/GetRemoteShares.ps1"


Write-Host
[System.IO.DriveInfo]::GetDrives() | Where-Object {$_.DriveType -eq 'Fixed'} | Format-Table @{n='Drive ID';e={($_.Name)}}, @{n='Label';e={($_.VolumeLabel)}}, @{n='Free (GB)';e={[int]($_.AvailableFreeSpace/1GB)}}
Write-Host
Write-Host ' Above is a list of all hard disk partitions showing available'
Write-Host ' free space on each of them. Select a partition for backup'
Write-Host ' storage for repository.                                  '
Write-Host

$Drive = Read-Host -Prompt ' Enter drive letter and press Enter'
$BackupFolder = $Drive.Substring(0,1) + ':\OSDCloudCline-GitHubBackup'

if (Test-Path $BackupFolder){Remove-Item $BackupFolder}
$BackupFolder = New-Item -ItemType Directory -Path $BackupFolder

Write-Verbose "Processing: OS Integration scripts...." -Verbose

$OSIntegrationDestination = "$BackupFolder\Scripts\OS Integration" 

Save-WebFile -SourceUrl $DriversScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $ExtraFilesScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $RegistryScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $UpdatesScriptURL -DestinationDirectory $OSIntegrationDestination

Write-Verbose "Processing: System Hardware Inventory scripts...." -Verbose

$PCHardwareInventoryDestination = "$BackupFolder\Scripts\PC Hardware Inventory" 

Save-WebFile -SourceUrl $HWInventoryScriptURL -DestinationDirectory $PCHardwareInventoryDestination

Write-Verbose "Processing: Audit Mode scripts...." -Verbose

$AuditModeDestination = "$BackupFolder\Scripts\Audit Mode" 

Save-WebFile -SourceUrl $AuditModeCLIScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeGUIScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeServersScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeMainScriptURL -DestinationDirectory $AuditModeDestination

Write-Verbose "Processing: Data Info Retrival scripts - Local PC...." -Verbose

$LocalPCDataInfoDestination = "$BackupFolder\Scripts\Data Info Retrival\Local PC" 

Save-WebFile -SourceUrl $SoftwareDLLFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SoftwareEXEFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SystemDLLFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SystemEXEFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination

Write-Verbose "Processing: Data Info Retrival scripts - Network Devices...." -Verbose

$NetworkDevicesDataInfoDestination = "$BackupFolder\Scripts\Data Info Retrival\Network Devices" 

Save-WebFile -SourceUrl $RemoteNetworkDevicesScriptURL -DestinationDirectory $NetworkDevicesDataInfoDestination

}

Function Get-OSDCloudDriversRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-UpdateScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-UninstallScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-InstallScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDBuilderRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDCloudRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-SoftwareRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSItemsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDCloud2Repo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDDockerRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

$GitHubBackupLog = "C:\Logs\OSDCloudCline\OSDCloudCline-GitHubBackup.log

Start-Transcript -Path $GitHubBackupLog

Get-Date 

Write-Verbose "Processing: OSDCloudCline - Scripts Repository..." -Verbose
Write-Host

Get-ScriptsRepo

Write-Verbose "Processing: OSDCloudCline - OSDCloud Drivers Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - Update Scripts Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - Uninstall Scripts Repository..." -Verbose
Write-Host

Write-Verbose "Processing: OSDCloudCline - Install Scripts Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - OSDBuilder Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - OSDCloud Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - Software Repository..." -Verbose
Write-Host

Write-Verbose "Processing: OSDCloudCline - OS Items Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - OSDCloud 2.0 Repository..." -Verbose
Write-Host


Write-Verbose "Processing: OSDCloudCline - OSD Docker Repository..." -Verbose
Write-Host

Stop-Transcript

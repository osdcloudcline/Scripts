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

#######################################
# Domain Administration Scripts 
########################################

$DomainAdministrationScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Domain%20Administration/DomainAdminMain.ps1"

#######################################
# Local PC Scripts 
########################################

$LocalPCScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Local%20Computer/LocalPCMain.ps1"

#######################################
# Local PC Scripts 
########################################

$LocalPCScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Local%20Computer/LocalPCMain.ps1"

#######################################
# OOBE Splash Screen Scripts - Advanced 
########################################

$OOBEAdvancedGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Advanced/ADVSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - Corporate 
########################################

$OOBECorporateGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Corporate/CORPSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - Honeypot 
########################################

$OOBEHoneypotGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Honeypot/HONEYPOTSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - IT Tech 
########################################

$OOBEITGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/IT%20Tech/ITTechSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - Management PC 
########################################

$OOBEMPCGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Management%20PC/ManagementPCSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - Servers 
########################################

$OOBEServersGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Server/Server.ps1"

#######################################
# OOBE Splash Screen Scripts - Standard 
########################################

$OOBEStandardGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/Standard/StandardSplashScreen.ps1"

#######################################
# OOBE Splash Screen Scripts - VDI 
########################################

$OOBEClientVDIGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/VDI/ClientVDISplashScreen.ps1"
$OOBEServerVDIGUIScriptURL = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OOBE%20Splash%20Screen/VDI/ServerVDISplashScreen.ps1"

################################################
## OS Downloads - Windows 11 Insider Preview Builds
################################################

$IP262365000URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Insider%20Previews/Windows%2011/26236.5000/26236.5000_amd64_en-us_multi_d55ca98b_convert_virtual.zip"
$IP262365000URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Insider%20Previews/Windows%2011/26236.5000/262365000.ps1"

$IP277641000URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Insider%20Previews/Windows%2011/27764.1000/27764.1000_amd64_en-us_multi_5444b584_convert_virtual.zip"
$IP277641000URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Insider%20Previews/Windows%2011/27764.1000/277641000.ps1"

################################################
## OS Downloads - Windows 10 22H2
################################################

$Windows1022H2URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2010/22H2/19045.5073_amd64_en-us_multi_60d84f07_convert_virtual.zip"
$Windows1022H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2010/22H2/22H2.ps1"

################################################
## OS Downloads - Windows 11 21H2
################################################

$Windows1121H2URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/21H2/22000.2960_amd64_en-us_multi_1843eef2_convert_virtual.zip"
$Windows1121H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1"

################################################
## OS Downloads - Windows 11 22H2
################################################

$Windows1122H2URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/22H2/22621.3668_amd64_en-us_multi_354f5027_convert_virtual.zip"
$Windows1122H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/22H2/22H2.ps1"

################################################
## OS Downloads - Windows 11 23H2
################################################

$Windows1123H2URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/23H2/22631.3668_amd64_en-us_multi_593f698d_convert_virtual.zip"
$Windows1123H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/23H2/23H2.ps1"

################################################
## OS Downloads - Windows 11 24H2
################################################

$Windows1124H2URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/24H2/26100.2033_amd64_en-us_multi_7a25f043_convert_virtual.zip"
$Windows1124H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/24H2/24H2.ps1"

################################################
## OS Downloads - Windows 11 25H2
################################################

$Windows1125H2URL1 = ""
$Windows1125H2URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/25H2/25H2.ps1"

################################################
## OS Downloads - ALL Windows 11
################################################

$Win11ALLURL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/ALLWin11.ps1"
$Win11NetworkALLURL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/ALLWin11-Network.ps1"

################################################
## OS Downloads - Windows 12 RTM
################################################

$Windows12RTMURL1 = ""
$Windows12RTMURL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2012/RTM/RTM.ps1"

################################################
## OS Downloads - Windows 13 RTM
################################################

$Windows13RTMURL1 = ""
$Windows13RTMURL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2013/RTM/RTM.ps1"

################################################
## OS Downloads - Windows 14 RTM
################################################

$Windows14RTMURL1 = ""
$Windows14RTMURL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2014/RTM/RTM.ps1"

################################################
## OS Downloads - Windows 15 RTM
################################################

$Windows15RTMURL1 = ""
$Windows15RTMURL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2015/RTM/RTM.ps1"

################################################
## OS Downloads - Windows 16 RTM
################################################

$Windows16RTMURL1 = ""
$Windows16RTMURL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2016/RTM/RTM.ps1"

################################################
## OS Downloads - Windows Server 2022
################################################

$WinServer2022URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2022/20348.2461_amd64_en-us_multi_b9f1ddc0_convert.zip"
$WinServer2022URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2022/2022.ps1"

################################################
## OS Downloads - Windows Server 2025
################################################

$WinServer2025URL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2025/26100.2314_amd64_en-us_multi_c4bd87c1_convert.zip"
$WinServer2025URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2025/2025.ps1"

################################################
## OS Downloads - Windows Server 2028
################################################

$WinServer2028URL1 = ""
$WinServer2028URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2028/2028.ps1"

################################################
## OS Downloads - Windows Server 2031
################################################

$WinServer2031URL1 = ""
$WinServer2031URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2031/2031.ps1"

################################################
## OS Downloads - Windows Server 2034
################################################

$WinServer2034URL1 = ""
$WinServer2034URL2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/2034/2034.ps1"

################################################
## OS Downloads - ALL Windows Server 
################################################

$WinServerALLURL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%20Server/ALLWinServer.ps1"

################################################
## OS Downloads - OS Downloads Main Menu 
################################################

$OSDLURL1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/OS.ps1"

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
Write-Host 

$OSIntegrationDestination = "$BackupFolder\Scripts\OS Integration" 

Save-WebFile -SourceUrl $DriversScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $ExtraFilesScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $RegistryScriptURL -DestinationDirectory $OSIntegrationDestination
Save-WebFile -SourceUrl $UpdatesScriptURL -DestinationDirectory $OSIntegrationDestination

Write-Verbose "Processing: System Hardware Inventory scripts...." -Verbose
Write-Host

$PCHardwareInventoryDestination = "$BackupFolder\Scripts\PC Hardware Inventory" 

Save-WebFile -SourceUrl $HWInventoryScriptURL -DestinationDirectory $PCHardwareInventoryDestination

Write-Verbose "Processing: Audit Mode scripts...." -Verbose
Write-Host

$AuditModeDestination = "$BackupFolder\Scripts\Audit Mode" 

Save-WebFile -SourceUrl $AuditModeCLIScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeGUIScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeServersScriptURL -DestinationDirectory $AuditModeDestination
Save-WebFile -SourceUrl $AuditModeMainScriptURL -DestinationDirectory $AuditModeDestination

Write-Verbose "Processing: Data Info Retrival scripts - Local PC...." -Verbose
Write-Host

$LocalPCDataInfoDestination = "$BackupFolder\Scripts\Data Info Retrival\Local PC" 

Save-WebFile -SourceUrl $SoftwareDLLFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SoftwareEXEFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SystemDLLFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination
Save-WebFile -SourceUrl $SystemEXEFilesScriptURL -DestinationDirectory $LocalPCDataInfoDestination

Write-Verbose "Processing: Data Info Retrival scripts - Network Devices...." -Verbose
Write-Host

$NetworkDevicesDataInfoDestination = "$BackupFolder\Scripts\Data Info Retrival\Network Devices" 

Save-WebFile -SourceUrl $RemoteNetworkDevicesScriptURL -DestinationDirectory $NetworkDevicesDataInfoDestination

Write-Verbose "Processing: Domain Administration scripts...." -Verbose
Write-Host

$DomainAdminDestination = "$BackupFolder\Scripts\Domain Administration"

Save-WebFile -SourceUrl $DomainAdministrationScriptURL -DestinationDirectory $DomainAdminDestination

Write-Verbose "Processing: Local PC scripts...." -Verbose
Write-Host

$LocalPCDestination = "$BackupFolder\Scripts\Local PC" 

Save-WebFile -SourceUrl $LocalPCScriptURL -DestinationDirectory $LocalPCDestination

Write-Verbose "Processing: OOBE Splash Screen scripts...." -Verbose
Write-Host

$OOBEScriptsDestination = "$BackupFolder\Scripts\OOBE Splash Screen" 

Save-WebFile -SourceUrl $OOBEAdvancedGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBECorporateGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEHoneypotGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEITGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEMPCGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEServersGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEStandardGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEClientVDIGUIScriptURL -DestinationDirectory $OOBEScriptsDestination
Save-WebFile -SourceUrl $OOBEServerVDIGUIScriptURL -DestinationDirectory $OOBEScriptsDestination


Write-Verbose "Processing: OS Downloads - Windows 11 Insider Preview Builds scripts...." -Verbose
Write-Host

$W11IPScriptsDestination1 = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\Insider Preview Builds\26236.5000" 
$W11IPScriptsDestination2 = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\Insider Preview Builds\27764.1000" 

Save-WebFile -SourceUrl $IP262365000URL1 -DestinationDirectory $W11IPScriptsDestination1
Save-WebFile -SourceUrl $IP262365000URL2 -DestinationDirectory $W11IPScriptsDestination1
Save-WebFile -SourceUrl $IP277641000URL1 -DestinationDirectory $W11IPScriptsDestination2
Save-WebFile -SourceUrl $IP277641000URL2 -DestinationDirectory $W11IPScriptsDestination2

Write-Verbose "Processing: OS Downloads - Windows 10 22H2 scripts...." -Verbose
Write-Host

$W1022H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 10\22H2" 

Save-WebFile -SourceUrl $Windows1022H2URL1 -DestinationDirectory $W1022H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1022H2URL2 -DestinationDirectory $W1022H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 11 21H2 scripts...." -Verbose
Write-Host

$W1121H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\21H2" 

Save-WebFile -SourceUrl $Windows1121H2URL1 -DestinationDirectory $W1121H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1121H2URL2 -DestinationDirectory $W1121H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 11 22H2 scripts...." -Verbose
Write-Host

$W1122H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\22H2" 

Save-WebFile -SourceUrl $Windows1122H2URL1 -DestinationDirectory $W1122H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1122H2URL2 -DestinationDirectory $W1122H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 11 23H2 scripts...." -Verbose
Write-Host

$W1123H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\23H2" 

Save-WebFile -SourceUrl $Windows1123H2URL1 -DestinationDirectory $W1123H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1123H2URL2 -DestinationDirectory $W1123H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 11 24H2 scripts...." -Verbose
Write-Host

$W1124H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\24H2" 

Save-WebFile -SourceUrl $Windows1124H2URL1 -DestinationDirectory $W1123H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1124H2URL2 -DestinationDirectory $W1123H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 11 25H2 scripts...." -Verbose
Write-Host

$W1125H2ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\25H2" 

Save-WebFile -SourceUrl $Windows1125H2URL1 -DestinationDirectory $W1123H2ScriptsDestination
Save-WebFile -SourceUrl $Windows1125H2URL2 -DestinationDirectory $W1123H2ScriptsDestination

Write-Verbose "Processing: OS Downloads - ALL Windows 11 script...." -Verbose
Write-Host

$Win11ALLScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 11\ALL" 

Save-WebFile -SourceUrl $Win11ALLURL1 -DestinationDirectory $Win11ALLScriptsDestination
Save-WebFile -SourceUrl $Win11ALLURL2 -DestinationDirectory $Win11ALLScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 12 RTM scripts...." -Verbose
Write-Host

$W12RTMScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 12\RTM" 

Save-WebFile -SourceUrl $Windows12RTMURL1 -DestinationDirectory $W12RTMScriptsDestination
Save-WebFile -SourceUrl $Windows12RTMURL2 -DestinationDirectory $W12RTMScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 13 RTM scripts...." -Verbose
Write-Host

$W13RTMScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 13\RTM" 

Save-WebFile -SourceUrl $Windows13RTMURL1 -DestinationDirectory $W13RTMScriptsDestination
Save-WebFile -SourceUrl $Windows13RTMURL2 -DestinationDirectory $W13RTMScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 14 RTM scripts...." -Verbose
Write-Host

$W14RTMScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 14\RTM" 

Save-WebFile -SourceUrl $Windows14RTMURL1 -DestinationDirectory $W14RTMScriptsDestination
Save-WebFile -SourceUrl $Windows14RTMURL2 -DestinationDirectory $W14RTMScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 15 RTM scripts...." -Verbose
Write-Host

$W15RTMScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 15\RTM" 

Save-WebFile -SourceUrl $Windows15RTMURL1 -DestinationDirectory $W15RTMScriptsDestination
Save-WebFile -SourceUrl $Windows15RTMURL2 -DestinationDirectory $W15RTMScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows 16 RTM scripts...." -Verbose
Write-Host

$W16RTMScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Client OS\Windows 16\RTM" 

Save-WebFile -SourceUrl $Windows16RTMURL1 -DestinationDirectory $W16RTMScriptsDestination
Save-WebFile -SourceUrl $Windows16RTMURL2 -DestinationDirectory $W16RTMScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows Server 2022 RTM scripts...." -Verbose
Write-Host

$WS2022ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server 2022" 

Save-WebFile -SourceUrl $WinServer2022URL1 -DestinationDirectory $WS2022ScriptsDestination
Save-WebFile -SourceUrl $WinServer2022URL2 -DestinationDirectory $WS2022ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows Server 2025 scripts...." -Verbose
Write-Host

$WS2025ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server 2025" 

Save-WebFile -SourceUrl $WinServer2025URL1 -DestinationDirectory $WS2025ScriptsDestination
Save-WebFile -SourceUrl $WinServer2025URL2 -DestinationDirectory $WS2025ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows Server 2028 scripts...." -Verbose
Write-Host

$WS2028ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server 2028" 

Save-WebFile -SourceUrl $WinServer2028URL1 -DestinationDirectory $WS2028ScriptsDestination
Save-WebFile -SourceUrl $WinServer2028URL2 -DestinationDirectory $WS2028ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows Server 2031 scripts...." -Verbose
Write-Host

$WS2031ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server 2031" 

Save-WebFile -SourceUrl $WinServer2031URL1 -DestinationDirectory $WS2031ScriptsDestination
Save-WebFile -SourceUrl $WinServer2031URL2 -DestinationDirectory $WS2031ScriptsDestination

Write-Verbose "Processing: OS Downloads - Windows Server 2034 scripts...." -Verbose
Write-Host

$WS2034ScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server 2034" 

Save-WebFile -SourceUrl $WinServer2034URL1 -DestinationDirectory $WS2034ScriptsDestination
Save-WebFile -SourceUrl $WinServer2034URL2 -DestinationDirectory $WS2034ScriptsDestination

Write-Verbose "Processing: OS Downloads - ALL Windows Server script...." -Verbose
Write-Host

$WSALLScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Server OS\Windows Server\ALL" 

Save-WebFile -SourceUrl $WinServerALLURL1 -DestinationDirectory $WSALLScriptsDestination

Write-Verbose "Processing: OS Downloads - Main Menu script...." -Verbose
Write-Host

$OSDownloadsMainMenuScriptsDestination = "$BackupFolder\Scripts\OS Downloads\Main Menu" 

Save-WebFile -SourceUrl $OSDLURL1 -DestinationDirectory $OSDownloadsMainMenuScriptsDestination

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

$OSDModuleLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSModule.log"
Start-Transcript -Path $OSDModuleLogs

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Stop-Transcript

$OSDMediaSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDMediaSoftware.log"
Start-Transcript -Path $OSDMediaSoftwareLogs

# Media Software

Write-Host
Write-Host
Write-Host "Step 1: Media Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Mediaapp1 = "VLC Media Player"
$Mediaapp2 = "MediaInfo"


Write-Host "ATTN: $env:username - 53 pieces of software will be installed. 3 will be downloaded. Please be patient" -ForegroundColor Red

Write-Host "Installing Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Media Software 1 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp1..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 2 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp2..." -Verbose
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

$OSDBrowserSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDWebBrowserSoftware.log"
Start-Transcript -Path $OSDBrowserSoftwareLogs

# Web Browsing Software

Write-Host
Write-Host
Write-Host "Step 2: Web Browsing Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Browsingapp1 = "Google Chrome for Enterprise"


Write-Host "Installing Web Browsing Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Web Browsing Software 1 of 1..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Browsingapp1..." -Verbose
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

$OSDUtilitiesSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDUtilitiesSoftware.log"
Start-Transcript -Path $OSDUtilitiesSoftwareLogs

# Utilities Software

Write-Host
Write-Host
Write-Host "Step 3: Sytem Utilities Software" -ForegroundColor Cyan
Write-Host
Write-Host


$Utilitiesapp1 = "7-Zip"
$Utilitiesapp2 = "CCleaner"
$Utilitiesapp3 = "IObit Driver Booster"
$Utilitiesapp4 = "Wise Registry Cleaner"
$Utilitiesapp5 = "Windows Admin Center"
$Utilitiesapp6 = "Windows 11 22H2 SDK"
$Utilitiesapp7 = "Windows 11 22H2 ADK"
$Utilitiesapp8 = "Windows 11 22H2 ADK PE Add-On"
$Utilitiesapp9 = "Display Driver Uninstaller"
$Utilitiesapp10 = "Rufus"
$Utilitiesapp11 = "Logitech Unifying Software"
$Utilitiesapp12 = "Logitech Options"

Write-Host "Installing System Utilities Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing System Utilities Software 1 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp1..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 2 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp2..." -Verbose
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing System Utilities Software 3 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp3..." -Verbose
winget install --id IObit.DriverBooster --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 4 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp4..." -Verbose
winget install --id XPDLS1XBTXVPP4 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 5 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp5..." -Verbose
winget install --id Microsoft.WindowsAdminCenter --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 6 of 12..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp6 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2SDK = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp7 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2SDK

pause

Write-Host "Installing System Utilities Software 7 of 12..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp7 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2ADK = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp8 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2ADK

pause

Write-Host "Installing System Utilities Software 8 of 12..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp8 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2PEADK = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp9 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath $Win11_22H2PEADK 

pause

Write-Host "Installing System Utilities Software 9 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp9..." -Verbose
winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 10 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp10..." -Verbose
winget install --id Rufus.Rufus --exact --accept-source-agreements  --accept-package-agreements --force



Write-Host "Installing System Utilities Software 11 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp11..." -Verbose
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "Installing System Utilities Software 12 of 12..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp12..." -Verbose
winget install --id Logitech.Options --exact --accept-source-agreements  --accept-package-agreements --force

Write-Host "All System Utility software successfully installed" -ForegroundColor Green

Stop-Transcript

$OSDProductivitySoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDProductivitySoftware.log"
Start-Transcript -Path $OSDProductivitySoftwareLogs

# Productivity software

Write-Host
Write-Host
Write-Host "Step 4: Productivity Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Prodapp1 = "Adobe Acrobat Reader DC 64-bit"
$Prodapp2 = "Microsoft Office 2021 LTSC"

Write-Host "Installing Productivity Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Productivity Software 1 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Prodapp1..." -Verbose
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force --source winget

Write-Host "Installing Productivity Software 2 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Prodapp2..." -Verbose
$OfficeGHdownloads = "C:\OSDCloud\GitHub\downloads\Office" 
mkdir $OfficeGHdownloads
$Office2021FilesUrl = "https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/OSDCloud-Office2021.zip"
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads
Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads
$Office2021DownloadFile = "$OfficeGHdownloads\OfficeCDNDownload.cmd"
$Office2021SetupFile = "$OfficeGHdownloads\OfficeCDNSetup.cmd"
$Office2021DownloadPath = Join-Path -Path $OfficeGHdownloads -ChildPath "OfficeCDNDownload.cmd"
$Office2021SetupPath = Join-Path -Path $OfficeGHdownloads -ChildPath "OfficeCDNSetup.cmd"
$Office2021ConfigPath = Join-Path -Path $OfficeGHdownloads -ChildPath "config.xml"
cd $OfficeGHdownloads
Start-Process -FilePath $Office2021DownloadFile
pause
Start-Process -FilePath $Office2021SetupFile
pause

Stop-Transcript

$OSDVDIRDCITSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDVDIRDCITSoftware.log"
Start-Transcript -Path $OSDVDIRDCITSoftwareLogs

# Virtualization Remote Desktop related software

Write-Host
Write-Host
Write-Host "Step 5: Remote Desktop / IT Software" -ForegroundColor Cyan
Write-Host
Write-Host

$RDCapp1 = "Microsoft Remote Desktop Client"
$RDCapp2 = "VMWare Horizon Remote Desktop Connection Client"
$RDCapp3 = "AnyDesk"
$RDCapp4 = "Windows 365 Azure Virtual Desktop"

Write-Host "Installing Virtualization, Remote Desktop and VDI Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Remote Desktop/Virtualization Software 1 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp1..."  -Verbose
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 2 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp2..." -Verbose
winget install --id VMware.HorizonClient --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 3 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp3..."  -Verbose
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 5 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp4..." -Verbose 
winget install --id 9N1F85V9T8BN --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

$OSDSecuritySoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDSecuritySoftware.log"
Start-Transcript -Path $OSDSecuritySoftwareLogs

# Security Software

Write-Host
Write-Host
Write-Host "Step 6: Security Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Securityapp1 = "MalwareBytes Anti-Malware"


Write-Host "Downloading Security Software 1 of 1..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Downloading $Securityapp1..."  -Verbose
$MalwarebytesURL = "https://data-cdn.mbamupdates.com/web/mb4-setup-consumer/offline/MBSetup.exe"
$OSDDownloads = "C:\OSDCloud\downloads"
Save-WebFile $MalwarebytesURL -DestinationDirectory $OSDDownloads

Stop-Transcript




$OSDMessagingSoftwareLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSDMessagingSoftware.log"
Start-Transcript -Path $OSDMessagingSoftwareLogs

# Messaging software

Write-Host
Write-Host
Write-Host "Step 7: Messaging Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Messagingapp1 = "Cisco WebEx"
$Messagingapp2 = "Cisco WebEx Teams"
$Messagingapp3 = "Cisco WebEx Meetings"
$Messagingapp4 = "Cisco WebEx Outlook Plug-in"
$Messagingapp5 = "Microsoft Teams"
$Messagingapp6 = "Zoom"
$Messagingapp7 = "Zoom Outlook Plug-in"

Write-Host "Installing Messaging Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Messaging Software 1 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp1..." -Verbose
winget install --id Cisco.Webex --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host "Installing Messaging Software 2 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp2..." -Verbose
choco install webex-teams -y
Write-Host "Installing Messaging Software 3 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp3..." -Verbose
winget install --id Cisco.CiscoWebexMeetings --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host "Installing Messaging Software 4 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp4..." -Verbose
winget install --id Cisco.webex-outlook-plugin --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host "Installing Messaging Software 5 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp5..." -Verbose
winget install --id Microsoft.Teams --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host "Installing Messaging Software 6 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp6..." -Verbose
winget install --id Zoom.Zoom --exact --accept-source-agreements  --accept-source-agreements --force
Write-Host "Installing Messaging Software 7 of 7..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $Messagingapp7..." -Verbose
winget install --id Zoom.ZoomOutlookPlugin --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript

$OSDFeaturesLogs = "C:\OSDCloud\DeploymentLogs\ADV\$env:computername-OSD-OSFeatures.log"
Start-Transcript -Path $OSDFeaturesLogs

# OS Features

Write-Host
Write-Host
Write-Host "Step 8: OS Features" -ForegroundColor Cyan
Write-Host
Write-Host

$OSFeatures1 = "Windows RSAT - Remote Server Administration Tools"


Write-Host "Installing OS Features on $env:computername..." -ForegroundColor Green

Write-Host "Installing OS Features 1 of 1..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $OSFeatures1..." -Verbose
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online


Stop-Transcript





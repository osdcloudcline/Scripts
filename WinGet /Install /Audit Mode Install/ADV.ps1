Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

# Media Software

Write-Host
Write-Host
Write-Host "Step 1 : Media Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Mediaapp1 = "VLC Media Player"
$Mediaapp2 = "MediaInfo"
$Mediaapp3 = "MakeMKV"
$Mediaapp4 = "Handbrake"
$Mediaapp5 = "PowerISO"
$Mediaapp6 = "Audacity and FFMPEG"
$Mediaapp7 = "Logitech MyHarmony"
$Mediaapp8 = "MKVToolNix"
$Mediaapp9 = "Apple iTunes"
$Mediaapp10 = "Kodi"

Write-Host "ATTN: $env:username - 43 pieces of software will be installed. Please be patient" -ForegroundColor Red

Write-Host "Installing Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Media Software 1 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp1..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 2 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp2..." -Verbose
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 3 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp3..." -Verbose
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 4 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp4..." -Verbose
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 5 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp5..." -Verbose
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 6 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp6..." -Verbose
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Host "Installing Media Software 7 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp7..." -Verbose
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 8 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp8..." -Verbose
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 9 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp9..." -Verbose
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Media Software 10 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Mediaapp10..." -Verbose
winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

# Web Browsing Software

Write-Host
Write-Host
Write-Host "Step 2 : Web Browsing Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Browsingapp1 = "Google Chrome for Enterprise"
$Browsingapp2 = "Mozilla Firefox"

Write-Host "Installing Web Browsing Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Web Browsing Software 1 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Browsingapp1..." -Verbose
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Web Browsing Software 2 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Browsingapp2..." -Verbose
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

# Utilities Software

Write-Host
Write-Host
Write-Host "Step 3 : Sytem Utilities Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Utilitiesapp1 = "AIDA64 Engineer"
$Utilitiesapp2 = "7-Zip"
$Utilitiesapp3 = "CCleaner"
$Utilitiesapp4 = "IObit Driver Booster"
$Utilitiesapp5 = "Wise Registry Cleaner"
$Utilitiesapp6 = "Windows Admin Center"
$Utilitiesapp7 = "Windows 11 22H2 SDK"
$Utilitiesapp8 = "Windows 11 22H2 ADK"
$Utilitiesapp9 = "Windows 11 22H2 ADK PE Add-On"
$Utilitiesapp10 = "Starwind V2V Converter"
$Utilitiesapp11 = "Cinebench 2024"

Write-Host "Installing System Utilities Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing System Utilities Software 1 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp1 on $env:computername..." -Verbose
winget install --id FinalWire.AIDA64.Engineer --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing System Utilities Software 2 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp2..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 3 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp3..." -Verbose
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing System Utilities Software 4 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp4..." -Verbose
winget install --id IObit.DriverBooster --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 5 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp5..." -Verbose
winget install --id XPDLS1XBTXVPP4 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 6 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp6..." -Verbose
winget install --id Microsoft.WindowsAdminCenter --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing System Utilities Software 7 of 10..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp7 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2SDK = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp7 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads


Write-Host "Installing System Utilities Software 8 of 10..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp8 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2ADK = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp8 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Installing System Utilities Software 9 of 10..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Acquiring $Utilitiesapp7 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2PEADK = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Write-Verbose "Processing and Downloading: $Utilitiesapp9 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Installing System Utilities Software 10 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp10..." -Verbose
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"

Write-Host "Installing System Utilities Software 11 of 10..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Utilitiesapp11..." -Verbose
choco install cinebench -y

# Programming software

Write-Host
Write-Host
Write-Host "Step 4 : Programming Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Programmingapp1 = "VS Code"
$Programmingapp2 = "Visual Studio 2022 Enterprise"

Write-Host "Installing Programming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Programming Software 1 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Programmingapp1..." -Verbose
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Programming Software 2 of 2..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Programmingapp2..." -Verbose
choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

# Productivity software

Write-Host
Write-Host
Write-Host "Step 5 : Productivity Software" -ForegroundColor Cyan
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

# Virtualization Remote Desktop related software

Write-Host
Write-Host
Write-Host "Step 6 : Remote Desktop / IT Software" -ForegroundColor Cyan
Write-Host
Write-Host

$RDCapp1 = "Microsoft Remote Desktop Client"
$RDCapp2 = "VMWare Horizon Remote Desktop Connection Client"
$RDCapp3 = "AnyDesk"
$RDCapp4 = "VMWare Workstation Professional"
$RDCapp5 = "Windows 365 Azure Virtual Desktop"

Write-Host "Installing Virtualization, Remote Desktop and VDI Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Remote Desktop/Virtualization Software 1 of 5..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp1..."  -Verbose
winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 2 of 5..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp2..." -Verbose
winget install --id VMware.HorizonClient --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 3 of 5..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp3..."  -Verbose
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Remote Desktop/Virtualization Software 4 of 5..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp4 ..." -Verbose  
choco install vmwareworkstation --params='"/SERIALNUMBER=VV7RA-0YZ0N-M89EP-JFN7C-P62RF"' -y

Write-Host "Installing Remote Desktop/Virtualization Software 5 of 5..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $RDCapp5..." -Verbose 
winget install --id 9N1F85V9T8BN --exact --accept-source-agreements  --accept-source-agreements --force


# Gaming software

Write-Host
Write-Host
Write-Host "Step 7 : Gaming Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Gamingapp1 = "Steam"

Write-Host "Installing Gaming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Gaming Software 1 of 1..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $Gamingapp1..."  -Verbose
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

# Security Software

Write-Host
Write-Host
Write-Host "Step 8 : Security Software" -ForegroundColor Cyan
Write-Host
Write-Host

$Securityapp1 = "MalwareBytes Anti-Malware"
$Securityapp2 = "BitDefender Total Security"
$Securityapp3 = "Norton 360"

Write-Host "Downloading Security Software 1 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Downloading $Securityapp1..."  -Verbose
$MalwarebytesURL = "https://data-cdn.mbamupdates.com/web/mb4-setup-consumer/offline/MBSetup.exe"
$OSDDownloads = "C:\OSDCloud\downloads"
Save-WebFile $MalwarebytesURL -DestinationDirectory $OSDDownloads

Write-Host "Downloading Security Software 2 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Downloading $Securityapp2..."  -Verbose
$BitdefenderURL = "https://download.bitdefender.com/windows/desktop/connect/cl/2022/all/bitdefender_ts_26_64b.exe"
$OSDDownloads = "C:\OSDCloud\downloads"
Save-WebFile $BitdefenderURL -DestinationDirectory $OSDDownloads

Write-Host "Downloading Security Software 3 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Downloading $Securityapp3..."  -Verbose
$Norton360URL = ""
$OSDDownloads = "C:\OSDCloud\downloads"
Save-WebFile $Norton360URL -DestinationDirectory $OSDDownloads

# File Transfer Software

Write-Host
Write-Host
Write-Host "Step 9 : File Transfer Software" -ForegroundColor Cyan
Write-Host
Write-Host

$FileTransferapp1 = "FileZilla"
$FileTransferapp2 = "PuTTy"
$FileTransferapp3 = "WinSCP"



Write-Host "Installing File Transfer Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing File Transfer Software 1 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $FileTransferapp1..."  -Verbose
choco install filezilla  -y

Write-Host "Installing File Transfer Software 2 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing: $FileTransferapp2..." -Verbose
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Host "Installing File Transfer Software 3 of 3..." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing: $FileTransferapp3..." -Verbose
winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force


# Cloud Backup software

Write-Host
Write-Host
Write-Host "Step 10 : Cloud Backup Software" -ForegroundColor Cyan
Write-Host
Write-Host

$CloudBackupapp1 = "Google Drive"
$CloudBackupapp2 = "Nextcloud Desktop Client"
$CloudBackupapp3 = "DropBox"
$CloudBackupapp4 = "Microsoft OneDrive"

Write-Host "Installing Cloud Backup Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing Cloud Backup Software 1 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $CloudBackupapp1..." -Verbose 
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Cloud Backup Software 2 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $CloudBackupapp2..." -Verbose
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Cloud Backup Software 3 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $CloudBackupapp3..." -Verbose 
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing Cloud Backup Software 4 of 4..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $CloudBackupapp4..." -Verbose 
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force


# NAS and Networking software

Write-Host
Write-Host
Write-Host "Step 11 : NAS and Networking Software" -ForegroundColor Cyan
Write-Host
Write-Host

$NASapp1 = "Synology Assistant"

Write-Host "Installing NAS and Networking Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing NAS and Networking Software 1 of 1..." -ForegroundColor Cyan 
Write-Host
Write-Verbose "Installing $NASapp1..." -Verbose
winget install --id Synology.Assistant --exact --accept-source-agreements  --accept-source-agreements --force

# Messaging software

Write-Host
Write-Host
Write-Host "Step 12 : Messaging Software" -ForegroundColor Cyan
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




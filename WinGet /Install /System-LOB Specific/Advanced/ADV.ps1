
Set-ExecutionPolicy -Scope LocalMachine unrestricted -Force -ErrorAction SilentlyContinue
Set-ExecutionPolicy -Scope CurrentUser unrestricted -Force -ErrorAction SilentlyContinue




Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-SoftwareInstall.log"

Write-Host "Processing Step 3 of 4: Software Installation..." -Foreground Color Yellow  


####################################################################
### ADVANCED SYSTEM SOFTWARE VARIABLES AND INSTALL             #####
####################################################################

$app27 = "Google Chrome for Enterprise"
$app28 = "Mozilla Firefox"
$app29 = "Google Drive"
$app30 = "Nextcloud Desktop Client"
$app31 = "DropBox"
$app32 = "Microsoft OneDrive"
$app33 = "User Profile Backup and Restore"
$app34 = "FileZilla"
$app35 = "PuTTy"
$app36 = "WinSCP"
$app37 = "Steam"
$app38 = "VLC Media Player"
$app39 = "MediaInfo"
$app40 = "MakeMKV"
$app41 = "Handbrake"
$app42 = "PowerISO"
$app43 = "Audacity and FFMPEG"
$app44 = "Logitech MyHarmony"
$app45 = "MKVToolNix"
$app46 = "Apple iTunes"
$app47 = "GIMP"
$app48 = "VS Code"
$app49 = "Visual Studio 2022 Enterprise"
$app50 = "Notepad ++"
$app51 = "CCleaner"
$app52 = "7-Zip"
$app53 = "Driver Booster"
$app54 = "Windows 22H2 SDK"
$app55 = "Windows 22H2 ADK"
$app56 = "Windows 22H2 PE Add-On"
$app57 = "Microsoft Office 2021 LTSC"
$app58 = "Windows 365 Azure Virtual Desktop"
$app59 = "VMWare Horizon VDI Client"
$app60 = "VMWare Workstation Professional"

Write-Host "Beginning Application Installation on $env:computername..." -ForegroundColor Green


# Web Browsers
Write-Host "Installing Web Browser Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app27 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app28 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force


# Cloud Backup Software
Write-Host "Installing Cloud Backup Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app30 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Google.GoogleDrive --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app31 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Nextcloud.NextcloudDesktop --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app32 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Dropbox.Dropbox --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app33 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.OneDrive --exact --accept-source-agreements  --accept-source-agreements --force


# File Transfer Software
Write-Host "Installing File Transfer Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app34 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install filezilla  -y

Write-Host "Installing: $app35 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Write-Host "Installing: $app36 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force


# Gaming Software
Write-Host "Installing Gaming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app37 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force



# Media-related software
Write-Host "Installing Media Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app38 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app39 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app40 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app41 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app42 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app43 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force
choco install audacity-ffmpeg -y

Write-Host "Installing: $app44 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app45 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app46 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app47 on $env:computername ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force

# Programming Software
Write-Host "Installing Programming Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing $app48 on $env:computername ..." -ForegroundColor Yellow
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing $app49 on $env:computername ..." -ForegroundColor Yellow
winget install --id Microsoft.VisualStudio.2022.Enterprise --exact --accept-source-agreements  --accept-source-agreements --force

# Utilities Software
Write-Host "Installing Utility Applications on $env:computername..." -ForegroundColor Green

Write-Host "Installing: $app50 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app51 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Notepad++.Notepad++ --exact --accept-source-agreements  --accept-source-agreements --force

Write-Host "Installing: $app52 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app53 on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id IObit.DriverBooster --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Acquiring $app54 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2SDK = "C:\OSDCloud\GitHub\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'
Write-Host "Processing and Downloading: $app54 Setup File..." -ForegroundColor Cyan
Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Acquiring $app55 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2ADK = "C:\OSDCloud\GitHub\downloads\adksetup.exe"
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'
Write-Host "Processing and Downloading: $app55 Setup File..." -ForegroundColor Cyan
Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Acquiring $app56 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -ForegroundColor Cyan 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$Win11_22H2PEADK = "C:\OSDCloud\GitHub\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'
Write-Host "Processing and Downloading: $app56 Setup File..." -ForegroundColor Cyan
Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

Write-Host "Installing $app54 on $env:computername..." -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2SDK
pause

Write-Host "Installing $app55 on $env:computername..." -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2ADK
pause

Write-Host "Installing $app56 on $env:computername..." -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2PEADK
pause

$Office2021 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Office2021.ps1")
Invoke-Expression $($Office2021.Content)
$cmd = "C:\Windows\System32\cmd.exe"
Start-Process -FilePath $cmd
cd "C:\OSDCloud\GitHub\downloads\Office"



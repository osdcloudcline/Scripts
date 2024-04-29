Write-Host
Write-Host "This is an automated installation script that installs:" 
Write-Host "System Pre-Reqs:  "
Write-Host
Write-Host "NuGet, OneGet, WinGet and Program Management Pacage Management Modules "
Write-Host
Write-Host "PowerShell Modules:"
Write-Host
Write-Host "OSD Module"
Write-Host "OSD SUS Module"
Write-Host "OSD Builder Module"
Write-Host "OSD Update & Update Catalog Module"
Write-Host "OSD Drivers Module"
Write-Host "OSD Cloud Modules"
Write-Host "OSD Software Module"
Write-Host "OSD Deploy Module"
Write-Host "Windows Update Module"
Write-Host
Write-Host "Mandated System Software:"
Write-Host
Write-Host ".NET Runtime 3.1, 5.0, 6.0, 7.0 and 8.0"
Write-Host "Visual C++ Redistrib 2005, 2008, 2010, 2012, 2013, 2015, 2017 and 2002 x64/x86"
Write-Host "XNA Redistribtable Framework 4.0"
Write-Host "Open AL Framework 1.1"
Write-Host "Microsoft Edge - Latest Version"
Write-Host "Windows Terminal - Latest Version"
Write-Host "Windows PowerShell 7.0 - Latest Version"
Write-Host
Write-Host " Software:"
Write-Host 
Write-Host "Google Chrome for Enterprise"
Write-Host "Mozilla Firefox"
Write-Host "Google Drive"
Write-Host "Nextcloud Desktop Client"
Write-Host "DropBox"
Write-Host "Microsoft OneDrive"
Write-Host "User Profile Backup and Restore"
Write-Host "FileZilla"
Write-Host "PuTTy"
Write-Host "WinSCP"
Write-Host "Steam"
Write-Host "VLC Media Player"
Write-Host "MediaInfo"
Write-Host "MakeMKV"
Write-Host "Handbrake"
Write-Host "PowerISO"
Write-Host "Audacity and FFMPEG"
Write-Host "Logitech MyHarmony"
Write-Host "MKVToolNix"
Write-Host "Apple iTunes"
Write-Host "GIMP"
Write-Host "VS Code"
Write-Host "Visual Studio 2022 Enterprise"
Write-Host "Notepad ++"
Write-Host "CCleaner"
Write-Host "7-Zip"
Write-Host "Driver Booster"
Write-Host "Windows 22H2 SDK"
Write-Host "Windows 22H2 ADK"
Write-Host "Windows 22H2 PE Add-On"
Write-Host "Microsoft Office 2021 LTSC"
Write-Host "Windows 365 Azure Virtual Desktop"
Write-Host "VMWare Horizon VDI Client"
Write-Host "VMWare Workstation Professional"

Write-Host

pause

Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-PreReqInstall.log"

####################################################################
### SYSTEM SOFTWARE VARIABLES AND INSTALL                      #####
####################################################################

$app1 = ".NET Runtime 3.1"
$app1ver = "Version: 3.1.32"
$app2 = ".NET Runtime 5.0"
$app2ver = "Version: 5.0.17"
$app3 = ".NET Runtime 6.0"
$app3ver = "Version: 6.0.26"
$app4 = ".NET Runtime 7.0"
$app4ver = "Version: 7.0.15"
$app5 = ".NET Runtime 8.0"
$app5ver = "Version: 8.0.1"
$app6 = "Oracle JAVA Runtime Environment 8.0"
$app6ver = "Version: 8.0.4010.10"
$app7 = "MS VS C++ Redistributable 2005 x64"
$app7ver = "Version: 8.0.61000"
$app8 = "MS VS C++ Redistributable 2005 x86"
$app8ver = "Version: 8.0.61001"
$app9 = "MS VS C++ Redistributable 2008 x64"
$app9ver = "Version: 9.0.30729.6161"
$app10 = "MS VS C++ Redistributable 2008 x86"
$app10ver = "Version: 9.0.30729.6161"
$app11 = "MS VS C++ Redistributable 2010 x64"
$app11ver = "Version: 10.0.40219"
$app12 = "MS VS C++ Redistributable 2010 x86"
$app12ver = "Version: 10.0.40219"
$app13 = "MS VS C++ Redistributable 2012 x64"
$app13ver = "Version: 11.0.61030.0"
$app14 = "MS VS C++ Redistributable 2012 x86"
$app14ver = "Version: 11.0.61030.0"
$app15 = "MS VS C++ Redistributable 2013 x64"
$app15ver = "Version: 12.040664.0"
$app16 = "MS VS C++ Redistributable 2013 x86"
$app16ver = "Version: 12.040664.0"
$app17 = "MS VS C++ Redistributable 2015 UWP Desktop"
$app17ver = "Version: 14.0.33321.0"
$app18 = "MS VS C++ Redistributable 2015-2022 x64"
$app18ver = "Version: 14.38.33135.0"
$app19 = "MS VS C++ Redistributable 2015-2022 x86"
$app19ver = "Version: 14.38.33130.0"
$app20 = "MS VS C++ Redistributable 2017"
$app20ver = "Version: 14.16.27033"
$app21 = "MS XNA Redistributable Framework"
$app21ver = "Version: 4.0.30901.0"
$app22 = ".NET Framework"
$app22ver = "Version: 4.8.1"
$app23 = "OpenAL Framework"
$app23ver = "Version: 1.1"
$app24 = "Microsoft Edge"
$app24ver = "Version: Latest"
$app25 = "Microsoft Windows Terminal"
$app25ver = "Version: 1.19.10302.0"
$app26 = "Microsoft Windows Powershell"
$app26ver = "Version: 7.4.1.0"	



# WinGet Mandatory Software Install

Write-Host "Processing Step 1 of 4: System Pre-Requisities, including PowerShell Package Management Modules..." -Foreground Color Yellow
Write-Host
Write-Host
Write-Host
Set-ExecutionPolicy unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


Set-ExecutionPolicy -Scope LocalMachine unrestricted -Force -ErrorAction SilentlyContinue
Set-ExecutionPolicy -Scope CurrentUser unrestricted -Force -ErrorAction SilentlyContinue

$PSModule9 = "NuGet"
$PSModule10 = "OneGet"
$PSModule11 = "WinGet"
$PSModule12 = "Program Management Module"


Write-Host
Write-Host 
Write-Host "Installing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name NuGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule9..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name NuGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name PackageManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule10..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name PackageManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name WinGet -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSmodule11..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name WinGet -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Write-Host
Write-Host "Installing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Install-Module -Name ProgramManagement -Repository PSGallery -Force -AllowClobber
Start-Sleep -Seconds 5
Write-Host
Write-Host "Importing: $PSModule12..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Import-Module -Name ProgramManagement -Force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Start-Sleep -Seconds 5
Stop-Transcript

Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-OSDPowerShellModules.log"
Write-Host
Write-Host
Write-Host
Write-Host
Write-Host "Processing Step 2 of 4: PowerShell Modules..." -Foreground Color Yellow
Write-Host

$PSModules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PS%20Modules%20/Install.ps1")
Invoke-Expression $($PSModules.Content)


Stop-Transcript 


Start-Transcript -Path "C:\Logs\Powershell\Advanced\$env:computername-SoftwareInstall.log"

Write-Host "Processing Step 3 of 4: Software Installation..." -Foreground Color Yellow  
Write-Host
Write-Host
Write-Host "Processing: Mandatory System Software Pre-Requisites" -ForegroundColor Yellow
Write-Host
Write-Host
Write-Host "Installing: $app1, $app1ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host "Installing: $app2, $app2ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app3, $app3ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app4, $app4ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app5, $app5ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.DotNet.Runtime.8 --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app6, $app6ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app7, $app7ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app8, $app8ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app9, $app9ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app10, $app10ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements  --force
		
Write-Host "Installing: $app11, $app11ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app12, $app12ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app13, $app13ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app14, $app14ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app15, $app15ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app16, $app16ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app17, $app17ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install Microsoft.VCLibs.Desktop.14 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app18, $app18ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app19, $app19ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app20, $app20ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install vcredist2017 -y
		
Write-Host "Installing: $app21, $app21ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app22, $app22ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install dotnetfx -y
		
Write-Host "Installing: $app23, $app23ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
choco install openal -y
	
Write-Host "Installing: $app24, $app24ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app25, $app25ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
		
Write-Host "Installing: $app26, $app26ver on $env:computername..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force
	
Write-Host "Finished Installing System related software..." -ForegroundColor Yellow

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

Write-Host "Installing $app54 on $env:computername -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2SDK
pause

Write-Host "Installing $app55 on $env:computername -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2ADK
pause

Write-Host "Installing $app56 on $env:computername -ForegroundColor Cyan 
Start-Process -FilePath $Win11_22H2PEADK
pause

Write-Host "Acquiring $app57 setup and configuration files - OSDCloudCline GitHub OSDCloud\Software repository...." -ForegroundColor Cyan 
$OSDCloudGHOfficedownloads = "C:\OSDCloud\GitHub\downloads\Office"
$Office2021ConfigUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/Configuration-Office2021.xml'
$Office2021SetupEXEUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/setup.exe'
$Office2021SetupCMDUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/OfficeCDNSetup.cmd'
$Office2021SetupDLCMDUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/Software/Office2021/OfficeCDNDownload.cmd'
Write-Host "Processing and Downloading: $app57 Files..." -ForegroundColor Cyan
Save-WebFile -SourceUrl $Office2021ConfigUrl -DestinationDirectory $OSDCloudGHOfficedownloads
Save-WebFile -SourceUrl $Office2021SetupEXEUrl -DestinationDirectory $OSDCloudGHOfficedownloads
Save-WebFile -SourceUrl $Office2021SetupCMDUrl -DestinationDirectory $OSDCloudGHOfficedownloads
Save-WebFile -SourceUrl $Office2021SetupDLCMDUrl -DestinationDirectory $OSDCloudGHOfficedownloads

Write-Host "Downloading $app57 - Download Source: Microsoft Office CDN...." -ForegroundColor Cyan 
Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\Offices\OfficeCDNDownload.cmd"
pause

Write-Host "Installing $app57 - Microsoft Office CDN...." -ForegroundColor Cyan 
Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\Office\OfficeCDNSetup.cmd"
pause 



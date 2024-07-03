Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              STANDARD SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and Mozilla Firefox              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: and Google Drive                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: MakeMKV, Handbrake, PowerISO, Audacity, FFMPEG        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Logitech MyHarmony, GIMP, Kodi,                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: DDU, Driver Booster 11,  CCleaner                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, V2V Converter                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause



$Browsers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Standard/StandardBrowsers.ps1")
Invoke-Expression $($Browsers.Content)

$CloudBackup = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Standard/StandardCloudBackup.ps1")
Invoke-Expression $($CloudBackup.Content)

$FileTransfer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Standard/StandardFileTransfer.ps1")
Invoke-Expression $($FileTransfer.Content)

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Gaming/Standard/StandardGaming.ps1")
Invoke-Expression $($Gaming.Content)

$Media = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Standard/StandardMedia.ps1")
Invoke-Expression $($Media.Content)

$Productivity = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Standard/StandardProductivity.ps1")
Invoke-Expression $($Productivity.Content)

$Programming = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Standard/StandardProgramming.ps1")
Invoke-Expression $($Programming.Content)

$VDI = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/VDI-Remote%20Desktop/Standard/StandardVDIRDC.ps1")
Invoke-Expression $($VDI.Content)

$Virtualization = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Virtualization/Standard/StandardVirtualization.ps1")
Invoke-Expression $($Virtualization.Content)

$Utilities = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Standard/StandardUtilities.ps1")
Invoke-Expression $($Utilities.Content)

$Security = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Standard/StandardSecurity.ps1")
Invoke-Expression $($Security.Content)

Write-Verbose "Detecting PC Manufacturer..." -Verbose

$PCManufacturer = (Get-CimInstance -Class Win32_ComputerSystem).Manufacturer
If($PCManufacturer -like "*Dell*"){
Write-Host "Installing Dell Software...." -ForegroundColor Cyan
$Dell = Invoke-WebRequest("")
Invoke-Expression $($Dell.Content)
}
ElseIf($PCManufacturer -like "*ASUS*"){
Write-Host "Installing ASUS Software...." -ForegroundColor Cyan
$ASUS = Invoke-WebRequest("")
Invoke-Expression $($ASUS.Content)
}
ElseIf($PCManufacturer -like "*Acer*"){
Write-Host "Installing Acer Software...." -ForegroundColor Cyan
$Acer = Invoke-WebRequest("")
Invoke-Expression $($Acer.Content)
}
ElseIf($PCManufacturer -like "*Lenovo*"){
Write-Host "Installing Lenovo Software...." -ForegroundColor Cyan
$Lenovo = Invoke-WebRequest("")
Invoke-Expression $($Lenovo.Content)
}
ElseIf($PCManufacturer -like "*HP*"){
Write-Host "Installing HP Software...." -ForegroundColor Cyan
$HP = Invoke-WebRequest("")
Invoke-Expression $($HP.Content)

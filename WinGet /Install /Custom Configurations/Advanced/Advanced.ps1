Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              ADVANCED SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and Mozilla Firefox              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive and NextCloud Client              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: MakeMKV, Handbrake, PowerISO, Audacity, FFMPEG        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Logitech MyHarmony, GIMP, Kodi,                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: HD Video Converter Factory Pro, DVDFab                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Master Collection                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: Microsoft Visual Studio Enterprise 2022         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: DDU, Driver Booster 11,  CCleaner                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, V2V Converter                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Write-Host "Processing install for: Web Browsers..." -ForegroundColor Cyan

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Firefox.ps1")
Invoke-Expression $($Firefox.Content)


Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor Cyan

$DropBox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/DropBox.ps1")
Invoke-Expression $($DropBox.Content)

$GDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/GDrive.ps1")
Invoke-Expression $($GDrive.Content)

$NextCloudClient = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/NextCloudClient.ps1")
Invoke-Expression $($NextCloudClient.Content)

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/OneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/UPBR.ps1")
Invoke-Expression $($UPBR.Content)

$iCloud = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Advanced/iCloud.ps1")
Invoke-Expression $($iCloud.Content)


Write-Host "Processing install for: File Transfer software..." -ForegroundColor Cyan

$FileZilla = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/FileZilla.ps1")
Invoke-Expression $($FileZilla.Content)

$PuTTY = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/PuTTY.ps1")
Invoke-Expression $($PuTTY.Content)

$WinSCP = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/WinSCP.ps1")
Invoke-Expression $($WinSCP.Content)

Write-Host "Processing install for: Gaming software..." -ForegroundColor Cyan

$Gaming = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Gaming/Advanced/AdvancedGaming.ps1")
Invoke-Expression $($Gaming.Content)

Write-Host "Processing install for: Media software..." -ForegroundColor Cyan

$Media = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/AdvancedMedia.ps1")
Invoke-Expression $($Media.Content)

Write-Host "Processing install for: Productivity software..." -ForegroundColor Cyan

$Productivity = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/AdvancedProductivity.ps1")
Invoke-Expression $($Productivity.Content)

Write-Host "Processing install for: Programming software..." -ForegroundColor Cyan

$Programming = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Advanced/AdvancedProgramming.ps1")
Invoke-Expression $($Programming.Content)

Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor Cyan

$VDI = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/VDI-Remote%20Desktop/Advanced/AdvancedVDIRDC.ps1")
Invoke-Expression $($VDI.Content)

Write-Host "Processing install for: Virtualization software..." -ForegroundColor Cyan

$Virtualization = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Virtualization/Advanced/AdvancedVirtualization.ps1")
Invoke-Expression $($Virtualization.Content)

Write-Host "Processing install for: System Utilities software..." -ForegroundColor Cyan

$Utilities = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/AdvancedUtilities.ps1")
Invoke-Expression $($Utilities.Content)

Write-Host "Processing downloads for: Security software..." -ForegroundColor Cyan

$Security = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Advanced/AdvancedSecurity.ps1")
Invoke-Expression $($Security.Content)

Write-Host "Detecting PC CPU to determine related file downloads..." -ForegroundColor Cyan 

$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($CPU -eq "AuthenticAMD"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$AMD = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/AMD%20/AMD.ps1")
Invoke-Expression $($AMD.Content)
}
ElseIf($CPU -eq "GenuineIntel"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$Intel = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/Intel/Intel.ps1")
Invoke-Expression $($Intel.Content)
}

Write-Host "Processing system specific custom scripts..." -ForegroundColor Cyan

# Bryan Desktop 

If($env:computername -eq "BTDESKTOP"){

Write-Host "Processing install for: Bryan's Desktop Utilities software..." -ForegroundColor Cyan

$BTDesktopUtils = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Custom/Bryan%20Desktop/CustomDesktopUtilities.ps1")
Invoke-Expression $($BTDesktopUtils.Content)
}
else{ 
Write-Host "Skipping execution of a Custom Utilities Script" -ForegroundColor DarkRed -BackgroundColor White
}

# Bryan Desktop Wallpaper 

If($env:computername -eq "BTDESKTOP"){

Write-Host "Processing downloads for: Bryan's Desktop wallpaper..." -ForegroundColor Cyan

$BTDesktopWallpaper = Invoke-WebRequest("")
Invoke-Expression $($BTDesktopWallpaper.Content)
}
else{
Write-Host "Downloading Other Wallpapers..." -ForegroundColor Cyan BackgroundColor White
$OtherWallpaper = Invoke-WebRequest("")
Invoke-Expression $($OtherWallpaper.Content)
}

# Bryan Laptop

If($env:computername -eq "BTLAPTOP"){

Write-Host "Processing install for: Bryan's Laptop Utilities software..." -ForegroundColor Cyan

$BTLaptopUtils = Invoke-WebRequest("")
Invoke-Expression $($BTLaptopUtils.Content)
}
else{ 
Write-Host "Skipping execution of a Custom Utilities Script" -ForegroundColor DarkRed -BackgroundColor White
}

# Bryan Laptop Wallpaper

If($env:computername -eq "BTLAPTOP"){

Write-Host "Processing downloads for: Bryan's Laptop wallpaper..." -ForegroundColor Cyan
$BTLaptopWallpaper = Invoke-WebRequest("")
Invoke-Expression $($BTLaptopWallpaper.Content)
}
else{
Write-Host "Downloading Other Wallpapers..." -ForegroundColor Cyan BackgroundColor White
$OtherWallpaper = Invoke-WebRequest("")
Invoke-Expression $($OtherWallpaper.Content)
}

# Sean PC

# Billy PC



$Uninstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
Invoke-Expression $($Uninstall.Content)

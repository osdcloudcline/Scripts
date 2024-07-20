Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              IT TECH SOFTWARE CONFIGURATION                     ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and Mozilla Firefox              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive, iCloud and NextCloud Client      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - OS Profile: User Profile Backup and Restore                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Master Collection                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: Microsoft Visual Studio Enterprise 2022         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Options, Logitech Unifying Software      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Samsung Magician, Crucial Storage Executive       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, Wise Registry Cleaner, Rufus        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Advanced/Firefox.ps1")
Invoke-Expression $($Firefox.Content)


Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

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


Write-Host "Processing install for: File Transfer software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileZilla = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/FileZilla.ps1")
Invoke-Expression $($FileZilla.Content)

$PuTTY = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/PuTTY.ps1")
Invoke-Expression $($PuTTY.Content)

$WinSCP = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/File%20Transfer/Advanced/WinSCP.ps1")
Invoke-Expression $($WinSCP.Content)


Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Advanced/VLCMediaPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)


Write-Host "Processing install for: Productivity software..." -ForegroundColor DarkBlue -BackgroundColor White

$AcrobatReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/AcrobatReaderDC,ps1")
Invoke-Expression $($AcrobatReaderDC.Content)

$MSO365 = = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/MSO365.ps1")
Invoke-Expression $($MSO365.Content)

$MSO365E = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office365AppsEnterprise.ps1")
Invoke-Expression $($MSO365E.Content)

$Office2021 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office2021.ps1")
Invoke-Expression $($Office2021.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/Office2024.ps1")
Invoke-Expression $($Office2024.Content)


Write-Host "Processing install for: Programming software..." -ForegroundColor DarkBlue -BackgroundColor White

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Advanced/VSCode.ps1")
Invoke-Expression $($VSCode.Content)

$AICursor = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Advanced/AICursorEditor.ps1")
Invoke-Expression $($AICursor.Content)

$VS2022Enterprise = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Advanced/VS2022Enterprise.ps1")
Invoke-Expression $($VS2022Enterprise.Content)

Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor DarkBlue -BackgroundColor White

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/VDI-Remote%20Desktop/Advanced/AnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

$MSRemoteDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/VDI-Remote%20Desktop/Advanced/MSRemoteDesktop.ps1")
Invoke-Expression $($MSRemoteDesktop.Content)

$VMWareHorizon = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/VDI-Remote%20Desktop/Advanced/VMWareHorizon.ps1")
Invoke-Expression $($VMWareHorizon.Content)


Write-Host "Processing install for: Virtualization software..." -ForegroundColor DarkBlue -BackgroundColor White

$VMWareWSPro = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Virtualization/Advanced/VMWareWSPro.ps1")
Invoke-Expression $($VMWareWSPro.Content)


Write-Host "Processing install for: System Utilities software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/CCleaner.ps1")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/DDU.ps1")
Invoke-Expression $($DDU.Content)

$SmartDefrag = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/SmartDefrag.ps1")
Invoke-Expression $($SmartDefrag.Content)

$OSKits = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)

$LogitechOptions = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/LogitechOptions.ps1")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifying = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/LogitechUnifyingSoftware.ps1")
Invoke-Expression $($LogitechUnifying.Content)

$SamsungMagician = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/SamsungMagician.ps1")
Invoke-Expression $($SamsungMagician.Content)

$CrucialStorage = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/CrucialStorage.ps1")
Invoke-Expression $($CrucialStorage.Content)

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Advanced/WiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$Security = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Advanced/AdvancedSecurity.ps1")
Invoke-Expression $($Security.Content)

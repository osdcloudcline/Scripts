Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              ADVANCED SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be updated:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome, MS Edge and Mozilla Firefox     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox, iCloud,                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive and NextCloud Client              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: MakeMKV, Handbrake, PowerISO, Audacity, FFMPEG        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Logitech MyHarmony, GIMP, Kodi,                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: HD Video Converter Factory Pro                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Master Collection                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: Microsoft Visual Studio Enterprise 2022         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU, Driver Booster,             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Fan Control, Logitech Options,                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Unifying Software, Rufus,                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Samsung Magician, Windows Admin Center            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Wise Registry Cleaner                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Host "Processing updates for: Web Browsers..." -ForegroundColor Cyan

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateChrome.ps1")
Invoke-Expression $($Chrome.Content)

$Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateEdge.ps1")
Invoke-Expression $($Edge.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateFirefox.ps1")
Invoke-Expression $($Firefox.Content)

Write-Host "Processing updates for: Cloud Backup software..." -ForegroundColor Cyan

$Dropbox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateDropBox.ps1")
Invoke-Expression $($DropBox.Content) 

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateOneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$iCloud = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateiCloud.ps1")
Invoke-Expression $($iCloud.Content)

$GDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateGDrive.ps1")
Invoke-Expression $($GDrive.Content)

$NextCloud = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateNextCloud.ps1")
Invoke-Expression $($NextCloud.Content)

Write-Host "Processing updates for: File Transfer software..." -ForegroundColor Cyan

$FileZilla = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/File%20Transfer/Advanced/UpdateFilezilla.ps1")
Invoke-Expression $($FileZilla.Content)

$PuTTY = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/File%20Transfer/Advanced/UpdatePuTTY.ps1")
Invoke-Expression $($PuTTY.Content)

$WinSCP = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/File%20Transfer/Advanced/UpdateWinSCP.ps1")
Invoke-Expression $($WinSCP.Content)

Write-Host "Processing updates for: Gaming software..." -ForegroundColor Cyan

$Steam = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Gaming/Advanced/UpdateSteam.ps1")
Invoke-Expression $($Steam.Content)

Write-Host "Processing updates for: Media software..." -ForegroundColor Cyan

$AudacityFFMPEG = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateAudacityFFMPEG.ps1")
Invoke-Expression $($AudacityFFMPEG.Content)

$GIMP = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateGIMP.ps1")
Invoke-Expression $($GIMP.Content)

$HDVideo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateHDVideoConverterFactoryPro.ps1")
Invoke-Expression $($HDVideo.Content)

$Handbrake = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateHandbrake.ps1")
Invoke-Expression $($Handbrake.Content)

$Kodi = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateKodi.ps1")
Invoke-Expression $($Kodi.Content)

$MKVToolnix = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateMKVToolnix.ps1")
Invoke-Expression $($MKVToolnix.Content)

$MakeMKV = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateMakeMKV.ps1")
Invoke-Expression $($MakeMKV.Content)

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateMediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$MyHarmony = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateMyHarmony.ps1")
Invoke-Expression $($MyHarmony.Content) 

$PowerISO = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdatePowerISO.ps1")
Invoke-Expression $($PowerISO.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateVLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)

$iTunes = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateiTunes.ps1")
Invoke-Expression $($iTunes.Content) 

Write-Host "Processing updates for: Productivity software..." -ForegroundColor Cyan

Write-Host "Processing updates for: Programming software..." -ForegroundColor Cyan

$AICoder = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Programming/Advanced/UpdateAICoder.ps1")
Invoke-Expression $($AICoder.Content)

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Programming/Advanced/UpdateVSCode.ps1")
Invoke-Expression $($VSCode.Content)

$VisualStudio2022 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Programming/Advanced/UpdateVisualStudio2022.ps1")
Invoke-Expression $($VisualStudio2022.Content)

Write-Host "Processing updates for: VDI/Remote Desktop software..." -ForegroundColor Cyan

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/VDI%20Remote%20Connections/Advanced/UpdateAnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

$MSRDC = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/VDI%20Remote%20Connections/Advanced/UpdateMSRDCSoftware.ps1")
Invoke-Expression $($MSRDC.Content)

$VMWareHorizon = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/VDI%20Remote%20Connections/Advanced/UpdateVMWareHorizonClient.ps1")
Invoke-Expression $($VMWareHorizon.Content)

$Win365 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/VDI%20Remote%20Connections/Advanced/UpdateWindows365AzureClient.ps1")
Invoke-Expression $($Win365.Content)

Write-Host "Processing updates for: Virtualization software..." -ForegroundColor Cyan

$VMWareWorkstationPro = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Virtualization/Advanced/UpdateVMWareWorkstationPro.ps1")
Invoke-Expression $($VMWareWorkstationPro.Content)

Write-Host "Processing updates for: Utilities software..." -ForegroundColor Cyan

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/Update7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateCCleaner.ps1")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateDDU.ps1")
Invoke-Expression $($DDU.Content)

$DriverBooster = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateDriverBooster.ps1")
Invoke-Expression $($DriverBooster.Content)

$FanControl = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateFanControl.ps1")
Invoke-Expression $($FanControl.Content)

$LogitechOptions = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateLogitechOptions.ps1")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifyingSoftware = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateLogitechUnifyingSoftware.ps1")
Invoke-Expression $($LogitechUnifyingSoftware.Content)

$Rufus = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateRufus.ps1")
Invoke-Expression $($Rufus.Content)

$SamsungMagician = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateSamsungMagician.ps1")
Invoke-Expression $($SamsungMagician.Content)

$WindowsAdminCenter = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateWindowsAdminCenter.ps1")
Invoke-Expression $($WindowsAdminCenter.Content)

$WiseRegistryCleaner = Invoke-WebRequest("")
Invoke-Expression $($WiseRegistryCleaner.Content)

Write-Host "Processing updates for: Windows Store - Business Apps..." -ForegroundColor Cyan

$WSBusiness = Invoke-WebRequest("")
Invoke-Expression $($WSBusiness.Content)

Write-Host "Processing updates for: Windows Store - Development Tools..." -ForegroundColor Cyan

$WSDevelopmentTools = Invoke-WebRequest("")
Invoke-Expression $($WSDevelopmentTools.Content)

Write-Host "Processing updates for: Windows Store - Entertainment Apps..." -ForegroundColor Cyan

$WSEntertainment = Invoke-WebRequest("")
Invoke-Expression $($WSEntertainment.Content)

Write-Host "Processing updates for: Windows Store - Network Tools..." -ForegroundColor Cyan

$WSNetworkTools = Invoke-WebRequest("")
Invoke-Expression $($WSNetworkTools.Content)

Write-Host "Processing updates for: Windows Store - OS SYSTEM..." -ForegroundColor Cyan

$WSOSSystem = Invoke-WebRequest("")
Invoke-Expression $($WSOSSystem.Content)

Write-Host "Processing updates for: OS SYSTEM software..." -ForegroundColor Cyan

$OSSystem = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/OS%20SYSTEM/Clients/ClientSystemUpdates.ps1")
Invoke-Expression $($OSSystem.Content)

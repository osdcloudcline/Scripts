Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              STANDARD SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be updated:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome, MS Edge and Mozilla Firefox     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox, iCloud,                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: and Google Drive                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: FileZilla                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Kodi                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader DC                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code and AI Code Editor                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU, Driver Booster,             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Fan Control, Logitech Options,                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Unifying Software, Rufus,                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Samsung Magician                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Wise Registry Cleaner                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Host "Processing updates for: Web Browsers..." -ForegroundColor Cyan

$Chrome = Invoke-WebRequest("")
Invoke-Expression $($Chrome.Content)

$Edge = Invoke-WebRequest("")
Invoke-Expression $($Edge.Content)

$Firefox = Invoke-WebRequest("")
Invoke-Expression $($Firefox.Content)

Write-Host "Processing updates for: Cloud Backup software..." -ForegroundColor Cyan

$Dropbox = Invoke-WebRequest("")
Invoke-Expression $($DropBox.Content) 

$OneDrive = Invoke-WebRequest("")
Invoke-Expression $($OneDrive.Content)

$iCloud = Invoke-WebRequest("")
Invoke-Expression $($iCloud.Content)

$GDrive = Invoke-WebRequest("")
Invoke-Expression $($GDrive.Content)


Write-Host "Processing updates for: File Transfer software..." -ForegroundColor Cyan

$FileZilla = Invoke-WebRequest("")
Invoke-Expression $($FileZilla.Content)


Write-Host "Processing updates for: Gaming software..." -ForegroundColor Cyan

$Steam = Invoke-WebRequest("")
Invoke-Expression $($Steam.Content)


Write-Host "Processing updates for: Media software..." -ForegroundColor Cyan


$Kodi = Invoke-WebRequest("")
Invoke-Expression $($Kodi.Content)

$MKVToolnix = Invoke-WebRequest("")
Invoke-Expression $($MKVToolnix.Content)

$MediaInfo = Invoke-WebRequest("")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("")
Invoke-Expression $($VLCPlayer.Content)

$iTunes = Invoke-WebRequest("")
Invoke-Expression $($iTunes.Content) 


Write-Host "Processing updates for: Productivity software..." -ForegroundColor Cyan

$AdobeReaderDC = Invoke-WebRequest("")
Invoke-Expression $($AdobeReaderDC.Content)


Write-Host "Processing updates for: Programming software..." -ForegroundColor Cyan

$AICoder = Invoke-WebRequest("")
Invoke-Expression $($AICoder.Content)

$VSCode = Invoke-WebRequest("")
Invoke-Expression $($VSCode.Content)


Write-Host "Processing updates for: VDI/Remote Desktop software..." -ForegroundColor Cyan

$AnyDesk = Invoke-WebRequest("")
Invoke-Expression $($AnyDesk.Content)

$MSRDC = Invoke-WebRequest("")
Invoke-Expression $($MSRDC.Content)

$VMWareHorizon = Invoke-WebRequest("")
Invoke-Expression $($VMWareHorizon.Content)

$Win365 = Invoke-WebRequest("")
Invoke-Expression $($Win365.Content)

Write-Host "Processing updates for: Virtualization software..." -ForegroundColor Cyan

$VMWareWorkstationPro = Invoke-WebRequest("")
Invoke-Expression $($VMWareWorkstationPro.Content)

Write-Host "Processing updates for: Utilities software..." -ForegroundColor Cyan

$7Zip = Invoke-WebRequest("")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("")
Invoke-Expression $($DDU.Content)

$DriverBooster = Invoke-WebRequest("")
Invoke-Expression $($DriverBooster.Content)

$FanControl = Invoke-WebRequest("")
Invoke-Expression $($FanControl.Content)

$LogitechOptions = Invoke-WebRequest("")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifyingSoftware = Invoke-WebRequest("")
Invoke-Expression $($LogitechUnifyingSoftware.Content)

$MSMouseKB = Invoke-WebRequest("")
Invoke-Expression $($MSMouseKB.Content)

$Rufus = Invoke-WebRequest("")
Invoke-Expression $($Rufus.Content)

$SamsungMagician = Invoke-WebRequest("")
Invoke-Expression $($SamsungMagician.Content)

$WiseRegistryCleaner = Invoke-WebRequest("")
Invoke-Expression $($WiseRegistryCleaner.Content)

Write-Host "Processing updates for: Windows Store - Business Apps..." -ForegroundColor Cyan

$WSBusiness = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Windows%20Store%20Apps/Business/BusinessStoreApps.ps1")
Invoke-Expression $($WSBusiness.Content)


Write-Host "Processing updates for: Windows Store - Entertainment Apps..." -ForegroundColor Cyan

$WSEntertainment = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Windows%20Store%20Apps/Entertainment/EntertainmentStoreApps.ps1")
Invoke-Expression $($WSEntertainment.Content)


Write-Host "Processing updates for: Windows Store - OS SYSTEM..." -ForegroundColor Cyan

$WSOSSystem = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Windows%20Store%20Apps/OS%20SYSTEM/OSStoreApps.ps1")
Invoke-Expression $($WSOSSystem.Content)

Write-Host "Processing updates for: OS SYSTEM software..." -ForegroundColor Cyan

$OSSystem = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/OS%20SYSTEM/Clients/ClientSystemUpdates.ps1")
Invoke-Expression $($OSSystem.Content)

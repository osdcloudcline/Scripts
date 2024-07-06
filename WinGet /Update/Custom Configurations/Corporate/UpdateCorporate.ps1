Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              CORPORATE SOFTWARE CONFIGURATION                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be updated:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and MS Edge                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader DC                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU, Driver Booster,             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Fan Control, Logitech Options,                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Unifying Software, Rufus,                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Wise Registry Cleaner                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Host "Processing updates for: Web Browsers..." -ForegroundColor Cyan

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateChrome.ps1")
Invoke-Expression $($Chrome.Content)

$Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateEdge.ps1")
Invoke-Expression $($Edge.Content)

Write-Host "Processing updates for: Cloud Backup software..." -ForegroundColor Cyan

$Dropbox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateDropBox.ps1")
Invoke-Expression $($DropBox.Content) 

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateOneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$GDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateGDrive.ps1")
Invoke-Expression $($GDrive.Content)

Write-Host "Processing updates for: Media software..." -ForegroundColor Cyan

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateMediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Advanced/UpdateVLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)

Write-Host "Processing updates for: Productivity software..." -ForegroundColor Cyan

Write-Host "Processing updates for: Programming software..." -ForegroundColor Cyan

$AICoder = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Programming/Advanced/UpdateAICoder.ps1")
Invoke-Expression $($AICoder.Content)

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Programming/Advanced/UpdateVSCode.ps1")
Invoke-Expression $($VSCode.Content)

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

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/Advanced/UpdateWiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)

Write-Host "Processing updates for: Windows Store - Business Apps..." -ForegroundColor Cyan

$WSBusiness = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Windows%20Store%20Apps/Business/BusinessStoreApps.ps1")
Invoke-Expression $($WSBusiness.Content)

Write-Host "Processing updates for: OS SYSTEM software..." -ForegroundColor Cyan

$OSSystem = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/OS%20SYSTEM/Clients/ClientSystemUpdates.ps1")
Invoke-Expression $($OSSystem.Content)

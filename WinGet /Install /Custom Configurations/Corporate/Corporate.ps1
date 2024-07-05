Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              CORPORATE SOFTWARE CONFIGURATION                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader                                   ' -ForegroundColor DarkBlue -BackgroundColor White
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


$Browsers = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Corporate/CorporateBrowsers.ps1")
Invoke-Expression $($Browsers.Content)

$CloudBackup = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Cloud%20Backup/Corporate/CorporateCloudBackup.ps1")
Invoke-Expression $($CloudBackup.Content)

$Media = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Corporate/CorporateMedia.ps1")
Invoke-Expression $($Media.Content)

$Productivity = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Corporate/CorporateProductivity.ps1")
Invoke-Expression $($Productivity.Content)

$Uninstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
Invoke-Expression $($Uninstall.Content)

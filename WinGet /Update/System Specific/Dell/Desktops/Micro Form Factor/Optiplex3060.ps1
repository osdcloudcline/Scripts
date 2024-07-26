Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              DELL OPTIPLEX 3060 UPDATE                          ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Messaging: Cisco Webex and WebEx Meetings                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Driver Booster 11                `                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - System: ALL OS SYSTEM Software                               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
pause

$Browsers = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/Browsers.ps1")
Invoke-Expression $($Browsers.Content)

$CloudBackups = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/CloudBackups.ps1")
Invoke-Expression $($CloudBackups.Content)

$Media = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/Media.ps1")
Invoke-Expression $($Media.Content)

$Messaging = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Messaging/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060Messaging.ps1")
Invoke-Expression $($Messaging.Content)

$Productivity = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Productivity/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060Productivity.ps1")
Invoke-Expression $($Productivity.Content)

$VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/VDI%20Remote%20Connections/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060VDIRemote.ps1")
Invoke-Expression $($VDI.Content)

$Utilities = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Utilities/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060Utilties.ps1")
Invoke-Expression $($Utilities.Content)

$OSSystem = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/OS%20SYSTEM/Clients/ClientSystemUpdates.ps1")
Invoke-Expression $($OSSystem.Content)

$DellPSModules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/PowerShell%20Modules/Dell%20Specific%20Modules/UpdateDellModules.ps1")
Invoke-Expression $($DellPSModules.Content)

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
Write-Host '  - System: Windows Terminal, Microsoft PowerShell,              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - System: Visual C++ Redistributables                          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

$Browsers = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060Browsers.ps1")
Invoke-Expression $($Browsers.Content)

$CloudBackups = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060CloudBackups.ps1")
Invoke-Expression $($CloudBackups.Content)

$Media = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/System%20Specific/Dell/Desktops/Micro%20Form%20Factor/Optiplex/3060/3060Media.ps1")
Invoke-Expression $($Media.Content)




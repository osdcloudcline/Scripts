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

Write Verbose "Processing updates for installed Web Browsers..." -Verbose

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateChrome.ps1")
Invoke-Expression $($Chrome.Content)

$Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateEdge.ps1")
Invoke-Expression $($Edge.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Advanced/UpdateFirefox.ps1")
Invoke-Expression $($Firefox.Content)

Write Verbose "Processing updates for installed Cloud Backup software..." -Verbose

$Dropbox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateDropBox.ps1")
Invoke-Expression $($DropBox.Content) 

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Advanced/UpdateOneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$iCloud = Invoke-WebRequest("")
Invoke-Expression $($iCloud.Content)

$GDrive = Invoke-WebRequest("")
Invoke-Expression $($GDrive.Content)

$NextCloud = Invoke-WebRequest("")
Invoke-Expression $($NextCloud.Content)

Write Verbose "Processing updates for installed File Transfer software..." -Verbose

Write Verbose "Processing updates for installed Gaming software..." -Verbose

Write Verbose "Processing updates for installed Media software..." -Verbose

Write Verbose "Processing updates for installed Productivity software..." -Verbose

Write Verbose "Processing updates for installed Programming software..." -Verbose

Write Verbose "Processing updates for installed VDI/Remote Desktop software..." -Verbose

Write Verbose "Processing updates for installed Virtualization software..." -Verbose

Write Verbose "Processing updates for installed Utilities software..." -Verbose

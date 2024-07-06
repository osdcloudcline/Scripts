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


Write-Host "Processing updates for: Productivity software..." -ForegroundColor Cyan

Write-Host "Processing updates for: Programming software..." -ForegroundColor Cyan

Write-Host "Processing updates for: VDI/Remote Desktop software..." -ForegroundColor Cyan

Write-Host "Processing updates for: Virtualization software..." -ForegroundColor Cyan

Write-Host "Processing updates for: Utilities software..." -ForegroundColor Cyan

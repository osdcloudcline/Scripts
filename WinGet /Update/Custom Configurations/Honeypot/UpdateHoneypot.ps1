Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              HONEYPOT SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be updated:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Cloud Backups: Microsoft OneDrive                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - OS SYSTEM: OS System Software                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security:  IPVanish VPN                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security:  MalwareBytes                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
pause

Write-Host "Processing updates for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Honeypot/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Honeypot/Firefox.ps1")
Invoke-Expression $($Firefox.Content)

$Edge = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Browsers/Honeypot/Edge.ps1")
Invoke-Expression $($Edge.Content)

Write-Host "Processing updates for: Cloud Backups..." -ForegroundColor DarkBlue -BackgroundColor White

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Cloud%20Backups/Honeypot/OneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

Write-Host "Processing updates for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Honeypot/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/Media/Honeypot/VLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)

Write-Host "Processing updates for: OS SYSTEM Software..." -ForegroundColor DarkBlue -BackgroundColor White

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Update/Individual%20Scripts/OS%20SYSTEM/Clients/ClientSystemUpdates.ps1")
Invoke-Expression $($OS.Content)

Write-Host "Processing updates for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileDLs = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Honeypot/VMFileDLs.ps1")
Invoke-Expression $($FileDLs.Content)

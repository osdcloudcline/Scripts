Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              HONEYPOT SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - IPVanish VPN                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Browsers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Honeypot/Chrome.ps1")
Invoke-Expression $($Browsers.Content)


Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Honetypot/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLC = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Honetypot/VLCPlayer.ps1")
Invoke-Expression $($VLC.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileDLs = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Honeypot/VMFileDLs.ps1")
Invoke-Expression $($FileDLs.Content)

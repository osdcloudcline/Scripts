Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              HONEYPOT SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be updated:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security:  IPVanish VPN                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security:  MalwareBytes                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
pause

Write-Host "Processing updates for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Browsers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Honeypot/HoneypotBrowsers.ps1")
Invoke-Expression $($Browsers.Content)


Write-Host "Processing updates for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$Media = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Media/Honetypot/HoneypotMedia.ps1")
Invoke-Expression $($Media.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileDLs = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Security/Honeypot/VMFileDLs.ps1")
Invoke-Expression $($FileDLs.Content)

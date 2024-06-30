Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '          MANAGEMENT PC SOFTWARE CONFIGURATION                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '        The following software will be installed:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

$PS7Modules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1")
Invoke-Expression $($PS7Modules.Content)

$ClientRSAT = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1")
Invoke-Expression $($ClientRSAT.Content)

$Browsers = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Browsers/Management%20PC/ManagementPCBrowsers.ps1")
Invoke-Expression $($Browsers.Content)

$Programming = Invoke-WeBRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Programming/Management%20PC/ManagementPCProgramming.ps1")
Invoke-Expression $($Programming.Content)

$Utilities = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Management%20PC/ManagementPCUtilities.ps1")
Invoke-Expression $($Utilities.Content)

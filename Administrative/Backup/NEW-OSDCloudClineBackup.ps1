       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 
pause
Clear-Host

Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' This Git Hub-based script will perform the following:                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Scripts repository backup                                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloudDrivers repository backup                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Update-Scripts repository backup                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Uninstall-Scripts repository backup                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Install-Scripts repository backup                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDBuilder repository backup                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloud repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Software repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OS-Items repository backup                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDCloud 2.0 repository backup                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - OSDDocker repository backup                                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host


Function Get-ScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDCloudDriversRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-UpdateScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-UninstallScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-InstallScriptsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDBuilderRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDCloudRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-SoftwareRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSItemsRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDCloud2Repo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

Function Get-OSDDockerRepo(){
Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

}

$GitHubBackupLog = "C:\Logs\OSDCloudCline\OSDCloudCline-GitHubBackup.log

Start-Transcript -Path $GitHubBackupLog

Get-Date 

Write-Verbose "Processing: ALL Files in OSDCloudCline - Scripts Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - OSDCloud Drivers Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - Update Scripts Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - Uninstall Scripts Repository..." -Verbose
Write-Host

Write-Verbose "Processing: ALL Files in OSDCloudCline - Install Scripts Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - OSDBuilder Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - OSDCloud Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - Software Repository..." -Verbose
Write-Host

Write-Verbose "Processing: ALL Files in OSDCloudCline - OS Items Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - OSDCloud 2.0 Repository..." -Verbose
Write-Host


Write-Verbose "Processing: ALL Files in OSDCloudCline - OSD Docker Repository..." -Verbose
Write-Host

Stop-Transcript

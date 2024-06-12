#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'Operating System Administration & Deployment - Main Menu',
   [string]$Question = 'What type of action do you need to do?'
   )
cls

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


Write-Host 
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host                                                                -BackgroundColor White
Write-Host ' This Git Hub-based deployment scripting solution allows the user to:' -BackgroundColor White
Write-Host '     - Domain User and Computer Administration' -BackgroundColor White
Write-Host '     - Local PC User Administration' -BackgroundColor White
Write-Host '     - Install OS MandatorySystem Software and PowerShell 5.1 and 7.x Modules' -BackgroundColor White
Write-Host '     - Scripted Install of multiple types of software configurations' -BackgroundColor White
Write-Host '     - Import of Registry Entries'  -BackgroundColor White
Write-Host '     - Set-up Custom Windows 11 ONLY based Start Menu' -BackgroundColor White
Write-Host '     - Debloat the OS' -BackgroundColor White
Write-Host '     - Install Client and Server OS Roles' -BackgroundColor White
Write-Host '     - Download Windows Client and Server ISO files' -BackgroundColor White
Write-Host '     - Configure an OSDCloud bootable USB Stick or ISO File' -BackgroundColor White
Write-Host '     - Run OSD Builder to create an up to date OS ISO file'-BackgroundColor White
Write-Host                                                             -BackgroundColor White
pause
Clear-Host
}
Show-MainMenu

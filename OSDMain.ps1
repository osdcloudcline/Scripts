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

       $IP1 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP2 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet 2" -and $_.PrefixLength -eq "24"}).IPAddress
       $GatewayDNS = (Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName $env:computername).DefaultIPGateway
       $ExternalIP = (Invoke-WebRequest -uri "https://api.ipify.org/").Content

       $Baseboard1 = (Get-CimInstance -ClassName Win32_Baseboard).Manufacturer
       $Baseboard2 = (Get-CimInstance -ClassName Win32_Baseboard).Product
       $CPU = (Get-CimInstance -Class Win32_Processor -ComputerName "$env:computername").Name
       $RAM = (Get-CimInstance -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).sum/1gb
       $PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
       $BIOS1 = (Get-CimInstance -ClassName Win32_BIOS).Manufacturer
       $BIOS2 = (Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion
 
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 

      Write-Host 
      Write-Host         "Network Connection Info:" -ForegroundColor Green 
      Write-Verbose "System Hostname: $PCName" -Verbose
      Write-Verbose "System IP Address 1: $IP1" -Verbose
      Write-Verbose "System IP Address 2: $IP2" -Verbose
      Write-Verbose "System Gateway/DNS Server: $GatewayDNS" -Verbose
      Write-Verbose "WAN or External IP Address: $ExternalIP" -Verbose

      Write-Host 
      Write-Host         "System Hardware Info:" -ForegroundColor Green 
      Write-Verbose "System Hostname: $PCName" -Verbose
      Write-Verbose "Processor: $CPU" -Verbose
      Write-Verbose "System Memory: $RAM GB" -Verbose
      Write-Verbose "Motherboard: $Baseboard1 $Baseboard2" -Verbose
      Write-Verbose "Manufacturer: $PCManufacturer" -Verbose
      Write-Verbose "System BIOS: $BIOS1 $BIOS2" -Verbose

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
Write-Host ' This Git Hub-based deployment scripting solution allows the user to perform: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Domain User and Computer Administration                                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Local PC User Administration                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Install OS Mandatory System Software                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Install PowerShell 5.1 and 7.x Modules                                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Scripted Install of multiple types of software configurations          ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Import of Registry Entries                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Set-up Custom Windows 11 ONLY based Start Menu                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Configure an OSDCloud bootable USB Stick or ISO File                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Run OSD Builder to create an up to date OS ISO file                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Debloat the OS                                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Install Client and Server OS Roles                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Download Windows Client and Server ISO files                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. Windows Domain Administration Tasks"
Write-Host " 2. Local Computer Administration Tasks"
Write-Host " 3. Software Installation/Updates/Upgrades"
Write-Host " 4. OSD Cloud"
Write-Host " 5. OSD Builder"
Write-Host " 6. Audit Mode Configuration Tasks"
Write-Host " 7. Debloat Operating System"
Write-Host " 8. Backup/Restore User Profile Data"
Write-Host " 9. Administrative System Tasks"
Write-Host " 10. Operating System Downloads and ISO Creation" 
Write-Host " 11. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Domain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Domain%20Administration/DomainAdminMain.ps1")
        Invoke-Expression $($Domain.Content)
        }
  '2' { cls
        $Local = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Local%20Computer/LocalPCMain.ps1")
        Invoke-Expression $($Local.Content)
        }
  '3' { cls
        $WinGetMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMain.Content)
        }
  '4' { cls
        $OSDCloud = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/OSDCloudMain.ps1")
        Invoke-Expression $($OSDCloud.Content)
        }
  '5' { cls
        $OSDBuilder = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1")
        Invoke-Expression $($OSDBuilder.Content)
        }
  '6' {cls
      $AuditMode = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1")
      Invoke-Expression $($AuditMode.Content)
     }
  '7'{cls
      $DebloatOS = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
      Invoke-Expression $($DebloatOS.Content)
     }
  '8'{
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        $OSDCloudGHDownloads = "C:\OSDCloud\GitHub\downloads"
        $UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
        Write-Host "Downloading User Profile Backup and Restore..." -ForegroundColor Yellow
        Write-Output "Download URL: $UPBR" -Verbose
        Write-Output "Download Location: $OSDCloudGHDownloads" -Verbose
        Save-WebFile -SourceUrl $UPBR -DestinationDirectory $OSDCloudGHDownloads
        $UPBROrgName = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
        $UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Rename-Item -Path $UPBROrgName -NewName $UPBRNewName
        Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Show-MainMenu
    }

    '9'{cls
       $AdminMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Administrative/AdminMainMenu.ps1")
       Invoke-Expression $($AdminMain.Content)
    }
    '10'{cls
        $OSDownloads = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/OS.ps1")
        Invoke-Expression $($OSDownloads.Content)
    }
    '11'{exit}

    }
    }
    until ($selection -eq '11'){exit}
    }
    Show-MainMenu

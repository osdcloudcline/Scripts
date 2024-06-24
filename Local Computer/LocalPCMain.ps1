#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'Local PC Administration - Main Menu',
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
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. Rename Computer"
Write-Host " 2. Update Operating System"
Write-Host " 3. Software Installation/Updates/Upgrades"
Write-Host " 4. Set Network/Internet Info: TCP/IP, DNS, Subnet and Gateway Addresses"
Write-Host " 5. OS Settings"
Write-Host " 6. System Maintenance"
Write-Host " 7. Debloat Operating System"
Write-Host " 8. Backup/Restore User Profile Data"
Write-Host " 9. Return to Main Menu" 
Write-Host " 10. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $CurrentPCName = "$env:computername"
        $NewPCName = Read-Host -Prompt 'Please Enter the New PC Name'
        Write-Verbose "Renaming PC. Changes WILL be in effect upon the next system restart" -Verbose
        Rename-Computer -ComputerName $CurrentPCName -NewName $NewPCName
        Write-Host "Restarting your PC..." -ForegroundColor Cyan
        Restart-Computer
        }
  '2' { cls
        $mssettingsupdate = "ms-settings:windowsupdate"
        Start-Process -FilePath $mssettingsupdate
        }
  '3' { cls
        $WinGetMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMain.Content)
        }
  '4' { cls
        $SelectAdapter  = Get-NetAdapter | Out-GridView -PassThru
        
        }
  '5' { cls
        $mssettings = "ms-settings:"
        Start-Process -FilePath $mssettings
        }
  '6' { cls
        $sfc = "C:\Windows\System32\sfc.exe"
        Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
        Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
        
        }
  '7'{ cls
       $OSDebloat = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
       Invoke-Expression $($OSDebloat.Content)
  }
  '8'{cls
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
      $OSDMain = Invoke-WebRrequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
      Invoke-Expression $($OSDMain.Content)
  '10' { exit
        }
  
    }
    }
    until ($selection -eq '10'){}
    }
Show-MainMenu

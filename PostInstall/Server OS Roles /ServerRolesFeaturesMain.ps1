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

pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. Add Server Roles and Features"
Write-Host " 2. Return to Main Menu"
Write-Host " 3. Exit PowerShell"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        Show-ServerRolesMenu
        }
  '2' { cls
        
        }
  '3' {exit
      }
    }
    }
    until ($selection -eq '3'){exit}
    }

Function Show-ServerRolesMenu(){
   [CmdletBinding()]
   param(
   [string]$Title = 'Operating System Administration & Deployment - Main Menu',
   [string]$Question = 'What type of role do you want to install?'
   )
cls

Write-Host "======= $Title ======"
Write-Host " 1. Active Directory Certificates Services"
Write-Host " 2. Active Directory Domain Services"
Write-Host " 3. Active Directory Federation Services"
Write-Host " 4. Active Directory LDS Services"
Write-Host " 5. Active Directory Rights Management Services"
Write-Host " 6. Device Health Attestation"
Write-Host " 7. DHCP Server"
Write-Host " 8. DNS Server"
Write-Host " 9. Fax Server"
Write-Host " 10. File and Storage Services"
Write-Host " 11. Host Guardian Services"
Write-Host " 12. Hyper-V"
Write-Host " 13. Network Controller"
Write-Host " 14. Network Policy and Access Services"
Write-Host " 15. Print and Document Services"
Write-Host " 16. Remote Access Server"
Write-Host " 17. Remote Desktop Services"
Write-Host " 18. Volume Activation Services"
Write-Host " 19. IIS Web Server"
Write-Host " 20. Windows Deployment Server Services"
Write-Host " 21. Windows Server Update Server Services"
Write-Host " 22. Install OS Pre-Reqs, System Software and Pre-Reqs for SQL/Exchange/MECM Server"
Write-Host " 23. Return to Main Menu"
Write-Host " 24. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ADCSLog = "C:\Logs\Roles\ADCS.log'
        $ADCS = "Active Directory Certificate Services"
        Start-Transcript $ADCSLog
        Write-Verbose "Installing $ADCS..." -Verbose
        Get-WindowsFeature -Name AD-Certificate | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '2' { cls
        
        }
  '3' { cls
        
        }
  '4' {
      }
  '5' { cls
        
        }
  '6' { cls
        
        }
  '7' { cls
        
        }
  '8' {
      }
  '9' { cls
        
        }
  '10' { cls
        
        }
  '11' { cls
        
        }
  '12' {
      }
  '13' { cls
        
        }
  '14' { cls
        
        }
  '15' { cls
        
        }
  '16' {
      }
  '17' { cls
        
        }
  '18' { cls
        
        }
  '19' { cls
        
        }
  '20' {
      }
  '21' { cls
        
        }
  '22' { cls
        
        }
  '23' { cls
        
        }
  '24' {exit}
    }
    }
    until ($selection -eq '24'){exit}
    }





}

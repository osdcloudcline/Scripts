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
Write-Host " 6. Application Server"
Write-Host " 7. Device Health Attestation"
Write-Host " 8. DHCP Server"
Write-Host " 9. DNS Server"
Write-Host " 10. Fax Server"
Write-Host " 11. File and Storage Services"
Write-Host " 12. Host Guardian Services"
Write-Host " 13. Hyper-V"
Write-Host " 14. Network Controller"
Write-Host " 15. Network Policy and Access Services"
Write-Host " 16. Print and Document Services"
Write-Host " 17. Remote Access Server"
Write-Host " 18. Remote Desktop Services"
Write-Host " 19. Volume Activation Services"
Write-Host " 20. IIS Web Server"
Write-Host " 21. Windows Deployment Server Services"
Write-Host " 22. Windows Server Update Server Services"
Write-Host " 23. Install OS Pre-Reqs, System Software and Pre-Reqs for SQL/Exchange/MECM Server"
Write-Host " 24. Return to Main Menu"
Write-Host " 25. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $ADCSLog = "C:\Logs\Server Roles\ADCS.log'
        $ADCS = "Active Directory Certificate Services"
        Start-Transcript $ADCSLog
        Write-Verbose "Installing $ADCS..." -Verbose
        Get-WindowsFeature -Name AD-Certificate | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Cert-Authority | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Enroll-Web-Pol | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Enroll-Web-Svc | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Web-Enrollment | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Device-Enrollment | Install-WindowsFeature
        Get-WindowsFeature -Name ADCS-Online-Cert | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '2' { cls
        $ADDSLog = "C:\Logs\Server Roles\ADDS.log'
        $ADCS = "Active Directory Domain Services"
        Start-Transcript $ADDSLog
        Write-Verbose "Installing $ADDS..." -Verbose
        Get-WindowsFeature -Name AD-Domain-Services | Install-WindowsFeature
        Write-Verbose "Installing and Importing $ADDS Deployment PowerShell Module..." -Verbose
        Install-Module -Name ADDSDeployment -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name ADDSDeployment -Force
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '3' { cls
        $ADFSLog = "C:\Logs\Server Roles\ADFS.log'
        $ADFS = "Active Directory Federation Services"
        Start-Transcript $ADFSLog
        Write-Verbose "Installing $ADFS..." -Verbose
        Get-WindowsFeature -Name ADFS-Federation | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '4' {cls
        $ADLDSLog = "C:\Logs\Server Roles\ADLDS.log'
        $ADLDS = "Active Directory Lightweight Directory Services"
        Start-Transcript $ADLDSLog
        Write-Verbose "Installing $ADLDS..." -Verbose
        Get-WindowsFeature -Name ADLDS | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
      }
  '5' { cls
        $ADRMSLog = "C:\Logs\Server Roles\ADRMS.log'
        $ADRMS = "Active Directory Rights Management Server Services"
        Start-Transcript $ADRMSLog
        Write-Verbose "Installing $ADRMS..." -Verbose
        Get-WindowsFeature -Name ADRMS | Install-WindowsFeature
        Get-WindowsFeature -Name ADRMS-Server | Install-WindowsFeature
        Get-WindowsFeature -Name ADRMS-Identity | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
   '6' { cls
        
        }
  '7' { cls
        $DHALog = "C:\Logs\Server Roles\DHA.log'
        $DHA = "Device Health Attestation"
        Start-Transcript $DHALog
        Write-Verbose "Installing $DHA..." -Verbose
        Get-WindowsFeature -Name DeviceHealthAttestationService | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '8' { cls
        $DHCPLog = "C:\Logs\Server Roles\DHCP.log'
        $DHCP = "DHCP Server"
        Start-Transcript $DHCPLog
        Write-Verbose "Installing $DHCP..." -Verbose
        Get-WindowsFeature -Name DHCP | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '9' {cls
        $DNSLog = "C:\Logs\Server Roles\DNS.log'
        $DNS = "DNS Server"
        Start-Transcript $DNSLog
        Write-Verbose "Installing $DNS..." -Verbose
        Get-WindowsFeature -Name DNS | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
      }
  '10' { cls
        $FaxLog = "C:\Logs\Server Roles\FaxServer.log'
        $FaxServer = "Fax Server"
        Start-Transcript $FaxLog
        Write-Verbose "Installing $FaxServer..." -Verbose
        Get-WindowsFeature -Name Fax | Install-WindowsFeature
        Stop-Transcript
        Show-ServerRolesMenu
        }
  '11' { cls
        
        }
  '12' { cls
        
        }
  '13' {
      }
  '14' { cls
        
        }
  '15' { cls
        
        }
  '16' { cls
        
        }
  '17' {
      }
  '18' { cls
        
        }
  '19' { cls
        
        }
  '20' { cls
        
        }
  '21' {
      }
  '22' { cls
        
        }
  '23' { cls
        
        }
  '24' { cls
        
        }
  '25' {exit}
    }
    }
    until ($selection -eq '25'){exit}
    }





}

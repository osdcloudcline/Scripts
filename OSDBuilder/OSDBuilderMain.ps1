##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Builder - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
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
Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. OSD Builder - Set Working Directory Path"
Write-Host " 2. New OSD Builder Build - Import OS Media"
Write-Host " 3. Create New OSD Builder Task"
Write-Host " 4. Execute OSD Builder Task"
Write-Host " 5. Return to Main Menu" 
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        Write-Host "Checking if OSDBuilder Module is installed..." -ForegroundColor Cyan 
        Set-ExecutionPolicy Bypass -Force -Scope CurrentUser
        Write-Verbose "Installing OSD Builder PowerShell Module..." -Verbose
        Write-Host
        Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
        Write-Verbose "Importing OSD Builder PowerShell Module..." -Verbose
        Import-Module -Name OSDBuilder -Force  
        $OSDBuilderPath = Read-Host -Prompt 'Please specify the working directory for OSDBuilder' 
        Write-Verbose "Setting OSDBuilder working directory..." -Verbose
        Get-OSDBuilder -SetPath $OSDBuilderPath
        Get-OSDBuilder -CreatePath
        cls
        Show-MainMenu
        }
  '2' { cls
        Show-OSDBuildMainMenu
        }
  '3' { cls
        
        }
  '4' { cls
        
        }
  '5'{cls
  
  }
  '6' { exit
        }
  
    }
    }
    until ($selection -eq '6'){exit}
    }



Function Show-OSDBuildMainMenu(){

[CmdletBinding()]
    param(
    [string]$Title = 'OSD Builder - New OSD Build Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. Windows Client OS"
Write-Host " 2. Windows Server OS"
Write-Host " 3. Return to Main Menu"
Write-Host " 4. Exit PowerShell"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
       Show-NewClientOSD
      }
 '2' { cls
      Show-NewSVROSD
      }
'3' { cls
      Show-MainMenu
      }
'4' { cls
      exit 
      }
}
    }
    until ($selection -eq '4'){exit}
    }

Function Show-NewClientOSD(){

[CmdletBinding()]
    param(
    [string]$Title = 'OSD Builder - New Client OSD Build Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. Windows 10"
Write-Host " 2. Windows 11"
Write-Host " 3. Windows 12"
Write-Host " 4. Windows 13"
Write-Host " 5. Windows 14"
Write-Host " 6. Windows 15"
Write-Host " 7. Windows 16"
Write-Host " 8. Return to Main Menu"
Write-Host " 9. Exit PowerShell"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
      $Win10OSDBuilder = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/Client/Windows10/22H2.ps1")
      Invoke-Expression $($Win10OSDBuilder.Content)
      }
 '2' { cls
      $W11Ver = Read-Host 'What Version of Windows 11 do you want to create a new OSD Builder Configuration for?(Please enter: 21H2, 22H2, 23H2, 24H2 or 25H2)' 
      If($W11Ver -eq "21H2"){
      
      # OSDBuilder Task name region
      
      $W11Home21H2 = "Windows 11 Home 21H2"
      $W11Pro21H2 = "Windows 11 Professional 21H2"
      $W11ProWorkstation21H2 = "Windows 11 21H2"
      $W11VDI21H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 21H2"
      $W11Enterprise21H2 = "Windows 11 Enterprise 21H2"

      # end region

      $OSVersion = Read-Host -Prompt 'What OS Edition do you want to choose?(Please enter: Home, Pro, ProWorkstation, VDI or Enterprise)'
      If($OSVersion -eq "Home"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Home21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home21H2 
      pause
      Write-Host "Processing: $W11Home21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home21H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Home21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home21H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Home21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Home21H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Home21H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home21H2 -RemoveCapability
      pause

      $21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
      Invoke-Expression $($21H2.Content)
      }
      ElseIf($OSVersion -eq "Pro"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Pro21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro21H2
      pause
      Write-Host "Processing: $W11Pro21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro21H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Pro21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro21H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Pro21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro21H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Pro21H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro21H2 -RemoveCapability
      pause

      $21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
      Invoke-Expression $($21H2.Content)
      }
      ElseIf($OSVersion -eq "ProWorkstation"){
      Write-Host "Processing: $W11ProWorkstation21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11ProWorkstation21H2
      pause
      Write-Host "Processing: $W11ProWorkstation21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation21H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11ProWorkstation21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation21H2 -EnableFeature
      pause
      Write-Host "Processing: $W11ProWorkstation21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation21H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11ProWorkstation21H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation21H2 -RemoveCapability
      pause

      $21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
      Invoke-Expression $($21H2.Content)
      }
      ElseIf($OSVersion -eq "VDI"){
      Write-Host "Processing: $W11VDI21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11VDI21H2
      pause
      Write-Host "Processing: $W11VDI21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI21H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11VDI21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI21H2 -EnableFeature
      pause
      Write-Host "Processing: $W11VDI21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI21H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11VDI21H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI21H2 -RemoveCapability
      pause

      $21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
      Invoke-Expression $($21H2.Content)
      }
      ElseIf($OSVersion -eq "Enterprise"){
      Write-Host "Processing: $W11Enterprise21H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Enterprise21H2
      pause
      Write-Host "Processing: $W11Enterprise21H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise21H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Enterprise21H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise21H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Enterprise21H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise21H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Enterprise21H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise21H2 -RemoveCapability
      pause

      $21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/21H2.ps1")
      Invoke-Expression $($21H2.Content)
      }
      }
      ElseIf($W11Ver -eq "22H2"){

      # OSDBuilder Task name region
      
      $W11Home22H2 = "Windows 11 Home 22H2"
      $W11Pro22H2 = "Windows 11 Professional 22H2"
      $W11ProWorkstation22H2 = "Windows 11 22H2"
      $W11VDI22H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 22H2"
      $W11Enterprise22H2 = "Windows 11 Enterprise 22H2"

      # end region

      $OSVersion = Read-Host -Prompt 'What OS Edition do you want to choose?(Please enter: Home, Pro, ProWorkstation, VDI or Enterprise)'
      If($OSVersion -eq "Home"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Home22H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home22H2 
      pause
      Write-Host "Processing: $W11Home22H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home22H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Home22H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home22H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Home22H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Home22H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Home22H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home22H2 -RemoveCapability
      pause

      $22H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/22H2.ps1")
      Invoke-Expression $($22H2.Content)
      }
      ElseIf($OSVersion -eq "Pro"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Pro22H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro22H2
      pause
      Write-Host "Processing: $W11Pro22H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro22H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Pro22H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro22H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Pro22H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro22H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Pro22H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro22H2 -RemoveCapability
      pause

      $22H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/22H2.ps1")
      Invoke-Expression $($22H2.Content)
      }
      ElseIf($OSVersion -eq "ProWorkstation"){
      Write-Host "Processing: $W11ProWorkstation22H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11ProWorkstation22H2
      pause
      Write-Host "Processing: $W11ProWorkstation22H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation22H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11ProWorkstation22H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation22H2 -EnableFeature
      pause
      Write-Host "Processing: $W11ProWorkstation22H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation22H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11ProWorkstation22H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation22H2 -RemoveCapability
      pause

      $22H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/22H2.ps1")
      Invoke-Expression $($22H2.Content)
      }
      ElseIf($OSVersion -eq "VDI"){
      Write-Host "Processing: $W11VDI22H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11VDI22H2
      pause
      Write-Host "Processing: $W11VDI22H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI22H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11VDI22H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI22H2 -EnableFeature
      pause
      Write-Host "Processing: $W11VDI22H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI22H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11VDI22H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI22H2 -RemoveCapability
      pause

      $22H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/22H2.ps1")
      Invoke-Expression $($22H2.Content)
      }
      ElseIf($OSVersion -eq "Enterprise"){
      Write-Host "Processing: $W11Enterprise22H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Enterprise22H2
      pause
      Write-Host "Processing: $W11Enterprise22H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise22H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Enterprise22H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise22H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Enterprise22H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise22H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Enterprise22H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise22H2 -RemoveCapability
      pause

      $22H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/22H2.ps1")
      Invoke-Expression $($22H2.Content)
      }
      }
      ElseIf($W11Ver -eq "23H2"){

      # OSDBuilder Task name region
      
      $W11Home23H2 = "Windows 11 Home 23H2"
      $W11Pro23H2 = "Windows 11 Professional 23H2"
      $W11ProWorkstation23H2 = "Windows 11 23H2"
      $W11VDI23H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 23H2"
      $W11Enterprise23H2 = "Windows 11 Enterprise 23H2"

      # end region

      $OSVersion = Read-Host -Prompt 'What OS Edition do you want to choose?(Please enter: Home, Pro, ProWorkstation, VDI or Enterprise)'
      If($OSVersion -eq "Home"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Home23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home23H2 
      pause
      Write-Host "Processing: $W11Home23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home23H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Home23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home23H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Home23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Home23H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Home23H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home23H2 -RemoveCapability
      pause

      $23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
      Invoke-Expression $($23H2.Content)
      
      ElseIf($OSVersion -eq "Pro"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Pro23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro23H2
      pause
      Write-Host "Processing: $W11Pro23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro23H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Pro23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro23H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Pro23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro23H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Pro23H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro23H2 -RemoveCapability
      pause

      $23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
      Invoke-Expression $($23H2.Content)
      }
      ElseIf($OSVersion -eq "ProWorkstation"){
      Write-Host "Processing: $W11ProWorkstation23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11ProWorkstation23H2
      pause
      Write-Host "Processing: $W11ProWorkstation23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation23H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11ProWorkstation23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation23H2 -EnableFeature
      pause
      Write-Host "Processing: $W11ProWorkstation23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation23H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11ProWorkstation23H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation23H2 -RemoveCapability
      pause

      $23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
      Invoke-Expression $($23H2.Content)
      }
      ElseIf($OSVersion -eq "VDI"){
      Write-Host "Processing: $W11VDI23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11VDI23H2
      pause
      Write-Host "Processing: $W11VDI23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI23H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11VDI23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI23H2 -EnableFeature
      pause
      Write-Host "Processing: $W11VDI23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI23H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11VDI23H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI23H2 -RemoveCapability
      pause

      $23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
      Invoke-Expression $($23H2.Content)
      }
      ElseIf($OSVersion -eq "Enterprise"){
      Write-Host "Processing: $W11Enterprise23H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Enterprise23H2
      pause
      Write-Host "Processing: $W11Enterprise23H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise23H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Enterprise23H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise23H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Enterprise23H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise23H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Enterprise23H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise23H2 -RemoveCapability
      pause

      $23H2 = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/23H2.ps1")
      Invoke-Expression $($23H2.Content)
      }
      }
      ElseIf($W11Ver -eq "24H2"){

      # OSDBuilder Task name region
      
      $W11Home24H2 = "Windows 11 Home 24H2"
      $W11Pro24H2 = "Windows 11 Professional 24H2"
      $W11ProWorkstation24H2 = "Windows 11 24H2"
      $W11VDI24H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 24H2"
      $W11Enterprise24H2 = "Windows 11 Enterprise 24H2"

      # end region

      $OSVersion = Read-Host -Prompt 'What OS Edition do you want to choose?(Please enter: Home, Pro, ProWorkstation, VDI or Enterprise)'
      If($OSVersion -eq "Home"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Home24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home24H2 
      pause
      Write-Host "Processing: $W11Home24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home24H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Home24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home24H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Home24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Home24H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Home24H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home24H2 -RemoveCapability
      pause

      $24H2 = Invoke-WebRequest('https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
      Invoke-Expression $($24H2.Content)
      }
      ElseIf($OSVersion -eq "Pro"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Pro24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro24H2
      pause
      Write-Host "Processing: $W11Pro24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro24H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Pro24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro24H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Pro24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro24H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Pro24H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro24H2 -RemoveCapability
      pause

      $24H2 = Invoke-WebRequest('https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
      Invoke-Expression $($24H2.Content)
      }
      ElseIf($OSVersion -eq "ProWorkstation"){
      Write-Host "Processing: $W11ProWorkstation24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11ProWorkstation24H2
      pause
      Write-Host "Processing: $W11ProWorkstation24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation24H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11ProWorkstation24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation24H2 -EnableFeature
      pause
      Write-Host "Processing: $W11ProWorkstation24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation24H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11ProWorkstation24H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation24H2 -RemoveCapability
      pause

      $24H2 = Invoke-WebRequest('https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
      Invoke-Expression $($24H2.Content)
      }
      ElseIf($OSVersion -eq "VDI"){
      Write-Host "Processing: $W11VDI24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11VDI24H2
      pause
      Write-Host "Processing: $W11VDI24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI24H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11VDI24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI24H2 -EnableFeature
      pause
      Write-Host "Processing: $W11VDI24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI24H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11VDI24H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI24H2 -RemoveCapability
      pause

      $24H2 = Invoke-WebRequest('https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
      Invoke-Expression $($24H2.Content)
      }
      ElseIf($OSVersion -eq "Enterprise"){
      Write-Host "Processing: $W11Enterprise24H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Enterprise24H2
      pause
      Write-Host "Processing: $W11Enterprise24H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise24H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Enterprise24H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise24H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Enterprise24H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise24H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Enterprise24H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise24H2 -RemoveCapability
      pause

      $24H2 = Invoke-WebRequest('https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OSDBuilder/Client/Windows11/24H2.ps1")
      Invoke-Expression $($24H2.Content)
      }
      }
      ElseIf($W11Ver -eq "25H2"){

      # OSDBuilder Task name region
      
      $W11Home25H2 = "Windows 11 Home 25H2"
      $W11Pro25H2 = "Windows 11 Professional 25H2"
      $W11ProWorkstation25H2 = "Windows 11 25H2"
      $W11VDI25H2 = "Windows 11 Enterprise Virtual Desktop Infrastructure 25H2"
      $W11Enterprise25H2 = "Windows 11 Enterprise 25H2"

      # end region

      $OSVersion = Read-Host -Prompt 'What OS Edition do you want to choose?(Please enter: Home, Pro, ProWorkstation, VDI or Enterprise)'
      If($OSVersion -eq "Home"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Home25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home25H2 
      pause
      Write-Host "Processing: $W11Home25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home25H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Home25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home25H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Home25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Home25H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Home25H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Home25H2 -RemoveCapability
      pause
      }
      ElseIf($OSVersion -eq "Pro"){
      Write-Host "Importing OSDBuilder PowerShell Module..." -ForegroundColor Cyan
      Import-Module -Name OSDBuilder -Force
      Write-Host "Processing: $W11Pro25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro25H2
      pause
      Write-Host "Processing: $W11Pro25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro25H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Pro25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro25H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Pro25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro25H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Pro25H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Pro25H2 -RemoveCapability
      pause
      }
      ElseIf($OSVersion -eq "ProWorkstation"){
      Write-Host "Processing: $W11ProWorkstation25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11ProWorkstation25H2
      pause
      Write-Host "Processing: $W11ProWorkstation25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation25H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11ProWorkstation25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation25H2 -EnableFeature
      pause
      Write-Host "Processing: $W11ProWorkstation25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation25H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11ProWorkstation25H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11ProWorkstation25H2 -RemoveCapability
      pause
      }
      ElseIf($OSVersion -eq "VDI"){
      Write-Host "Processing: $W11VDI25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11VDI25H2
      pause
      Write-Host "Processing: $W11VDI25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI25H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11VDI25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI25H2 -EnableFeature
      pause
      Write-Host "Processing: $W11VDI25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI25H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11VDI25H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11VDI25H2 -RemoveCapability
      pause
      }
      ElseIf($OSVersion -eq "Enterprise"){
      Write-Host "Processing: $W11Enterprise25H2 OSDBuild Task Creation..." -ForegroundColor Yellow
      New-OSDBuildTask -TaskName $W11Enterprise25H2
      pause
      Write-Host "Processing: $W11Enterprise25H2 .NET Framework 3.5 Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise25H2 -EnableNetFX3 
      pause
      Write-Host "Processing: $W11Enterprise25H2 Operating System Feature Enablement..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise25H2 -EnableFeature
      pause
      Write-Host "Processing: $W11Enterprise25H2 Operating System AppX Package Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise25H2 -RemoveAppx
      pause
      Write-Host "Processing: $W11Enterprise25H2 Operating System Capability Removal..." -ForegroundColor Yellow
      New-OSBuildTask -TaskName $W11Enterprise25H2 -RemoveCapability
      pause
      }
      }
'3' { cls
      $W12Ver = Read-Host 'What Version of Windows 12 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W12Ver -eq "RTM"){}
     
      }
      
'4' { cls
      $W13Ver = Read-Host 'What Version of Windows 13 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W13Ver -eq "RTM"){}
      
     
      }
     
'5' { cls
      $W14Ver = Read-Host 'What Version of Windows 14 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W14Ver -eq "RTM"){}
      
      }
'6' { cls
      $W15Ver = Read-Host 'What Version of Windows 15 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W15Ver -eq "RTM"){}
      
      }
'7' { cls
      $W16Ver = Read-Host 'What Version of Windows 16 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W16Ver -eq "RTM"){}
      
      }
'8' { cls
       Show-MainMenu
      }
'9' { cls
      exit 
      }
}
    }
    until ($selection -eq '9'){exit}
    }

Function Show-NewSVROSD(){

[CmdletBinding()]
    param(
    [string]$Title = 'OSD Builder - New Server OSD Build Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Write-Host "======= $Title ======"
Write-Host " 1. Windows Server 2022"
Write-Host " 2. Windows Server 2025"
Write-Host " 3. Windows Server 2028"
Write-Host " 4. Windows Server 2031"
Write-Host " 5. Windows Server 2034"
Write-Host " 6. Return to Main Menu"
Write-Host " 7. Exit PowerShell"

do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
      
      }
 '2' { cls
      
      }
'3' { cls
      
      }
'4' { cls
      
      }
'5' { cls
      
      }
'6' { cls
      Show-MainMenu
      }
'7' { cls
      exit 
      }
}
    }
    until ($selection -eq '7'){exit}
    }

Show-MainMenu

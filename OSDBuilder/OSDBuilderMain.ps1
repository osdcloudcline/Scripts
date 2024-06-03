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
Write-Host " 5. "
Write-Host " 6. "
Write-Host " 7. "
Write-Host " 8. Return to Main Menu" 
Write-Host " 9. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        Write-Host "Checking if OSDBuilder Module is installed..." -ForegroundColor Cyan 
        $OSDBuilderCheck = Get-Module -ListAvailable | Where-Object -Property Name -eq "OSDBuilder"
        If(-not($OSDBuilderCheck)){
        Set-ExecutionPolicy Bypass -Force
        Write-Verbose "Installing OSD Builder PowerShell Module..." -Verbose
        Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
        Write-Verbose "Importing OSD Builder PowerShell Module..." -Verbose
        Import-Module -Name OSDBuilder -Force
        $OSDBuilderPath = Read-Host -Prompt 'Please specify the working directory for OSDBuilder' 
        Write-Verbose "Setting OSDBuilder working directory..." -Verbose
        Get-OSDBuilder -SetPath $OSDBuilderPath
        Get-OSDBuilder -CreatePath
        
        }
        ElseIf($OSDBuilderCheck -eq $true){
        Set-ExecutionPolicy Bypass -Force
        $OSDBuilderPath = Read-Host -Prompt 'Please specify the working directory for OSDBuilder'
        Write-Verbose "Setting OSDBuilder working directory..." -Verbose
        Get-OSDBuilder -SetPath $OSDBuilderPath
        Get-OSDBuilder -CreatePath
        
        }
        }
  '2' { cls
        Show-OSDBuildMainMenu
        }
  '3' { cls
        
        }
  '4' { cls
        
        }
  '5' { cls
        
        }
  '6' { cls
        
        
        }
  '7'{ cls
       
  }
  '8'{cls
  
  }
  '9' { exit
        }
  
    }
    }
    until ($selection -eq '9'){exit}
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
      If($W11Ver -eq "21H2"){}
      ElseIf($W11Ver -eq "22H2"){}
      ElseIf($W11Ver -eq "23H2"){}
      ElseIf($W11Ver -eq "24H2"){}
      ElseIf($W11Ver -eq "25H2"){}
      }
'3' { cls
      $W12Ver = Read-Host 'What Version of Windows 12 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W12Ver -eq "RTM"){}
      ElseIf($W12Ver -eq "22H2"){}
      ElseIf($W12Ver -eq "23H2"){}
      ElseIf($W12Ver -eq "24H2"){}
      ElseIf($W12Ver -eq "25H2"){}
      }
'4' { cls
      $W13Ver = Read-Host 'What Version of Windows 13 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W13Ver -eq "RTM"){}
      ElseIf($W13Ver -eq "22H2"){}
      ElseIf($W13Ver -eq "23H2"){}
      ElseIf($W13Ver -eq "24H2"){}
      ElseIf($W13Ver -eq "25H2"){}
      }
'5' { cls
      $W14Ver = Read-Host 'What Version of Windows 14 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W14Ver -eq "RTM"){}
      ElseIf($W14Ver -eq "22H2"){}
      ElseIf($W14Ver -eq "23H2"){}
      ElseIf($W14Ver -eq "24H2"){}
      ElseIf($W14Ver -eq "25H2"){}
      }
'6' { cls
      $W15Ver = Read-Host 'What Version of Windows 15 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W15Ver -eq "RTM"){}
      ElseIf($W15Ver -eq "22H2"){}
      ElseIf($W15Ver -eq "23H2"){}
      ElseIf($W15Ver -eq "24H2"){}
      ElseIf($W15Ver -eq "25H2"){}
      }
'7' { cls
      $W16Ver = Read-Host 'What Version of Windows 16 do you want to create a new OSD Builder Configuration for?(Please enter: RTM)' 
      If($W16Ver -eq "RTM"){}
      ElseIf($W16Ver -eq "22H2"){}
      ElseIf($W16Ver -eq "23H2"){}
      ElseIf($W16Ver -eq "24H2"){}
      ElseIf($W16Ver -eq "25H2"){}
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

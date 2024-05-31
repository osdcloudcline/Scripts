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
        $OSDBuilderCheck = Get-InstalledModule | Where-Object -Property Name -eq "OSDBuilder"
        If($OSDBuilderCheck -eq $false){
        Set-ExecutionPolicy Bypass -Force
        Write-Verbose "Installing OSD Builder PowerShell Module..." -Verbose
        Install-Module -Name OSDBuilder -AllowClobber -SkipPublisherCheck
        Write-Verbose "Importing OSD Builder PowerShell Module..." -Verbose
        Import-Module -Name OSDBuilder -Force
        $OSDBuilderPath = Read-Host -Prompt 'Please specify the working directory for OSDBuilder' 
        Write-Verbose "Setting OSDBuilder working directory..." -Verbose
        Get-OSDBuilder -SetPath $OSDBuilderPath
        cls
        Show-MainMenu
        }
        ElseIf($OSDBuilderCheck -eq $true){
        Set-ExecutionPolicy Bypass -Force
        Write-Verbose "Setting OSDBuilder working directory..." -Verbose
        Get-OSDBuilder -SetPath $OSDBuilderPath
        cls
        Show-MainMenu
        }
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

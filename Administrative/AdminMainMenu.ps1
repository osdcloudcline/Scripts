##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Administrative Main Menu',
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
Write-Host " 1. Integrate Updates into Offline/Mounted OS Image"
Write-Host " 2. Integrate Drivers into Offline/Mounted OS Image"
Write-Host " 3. Integrate Registry Entries into Offline/Mounted OS Image"
Write-Host " 4. Remove Built-In Apps from Offline/Mounted OS Image"
Write-Host " 5. Start OSD Builder"
Write-Host " 6. Return to Main Menu"
Write-Host " 7. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $Updates = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Administrative/OS%20Integration/Updates.ps1")
        Invoke-Expression $($Updates.Content)
        }
  '2' { cls
        $Drivers = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Administrative/OS%20Integration/Drivers.ps1")
        Invoke-Expression $($Drivers.Content)
        }
  '3' { cls
       
        }
  '4' { cls
        
        }
  '5' { cls
        $OSDBuilder = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1")
        Invoke-Expression $($OSDBuilder.Content)
        }
  '6' { cls
        $OSDMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
        Invoke-Expression $($OSDMain.Content)
        }
  '7' { cls
        exit
        }

  
    }
    }
    until ($selection -eq '7'){}
    }

Show-MainMenu

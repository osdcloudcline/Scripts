##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Computers Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. OSD Cloud Configuration"
Write-Host " 2. OSD Cloud Downloads"
Write-Host " 3. Software Installation"
Write-Host " 4. System Maintenance"

Write-Host " 10. OSD Cloud Downloads"
Write-Host " 11. System Maintenance"
Write-Host " 12. Software Installation"
Write-Host " 13. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $DellLaptopsOSDCloudConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/ISO%20Files%20/Laptops/Dell%20/DELLConfigureOSDCloudMain.ps1"
        Invoke-Expression $($DellLaptopsOSDCloudConfigScript.Content)
        }
  '2' { cls
        $DellDesktopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($DellDesktopsOSDCloudConfigScript.Content)
        }
  '3' { cls
        $CustomPCOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($CustomPCOSDCloudConfigScript.Content)
        }
  '4' { cls
        $HPLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($HPLaptopsOSDCloudConfigScript.Content)
        }
  '5' { cls
        $ASUSLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ASUSLaptopsOSDCloudConfigScript.Content)
        }
  '6' { cls
        $AcerLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($AcerLaptopsOSDCloudConfigScript.Content)
        }
  '7' { cls
        $LenovoLaptopsOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($LenovoLaptopsOSDCloudConfigScript.Content)
        }
  '8' { cls
         $ESXIVMOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($ESXIVMOSDCloudConfigScript.Content)
        }
  '9' { cls
        $MSSurfaceOSDCloudConfigScript = Invoke-WebRequest ""
        Invoke-Expression $($MSSurfaceOSDCloudConfigScript.Content)
        }
  '10' { cls
        
        $OSDCloudDownloadsConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/OSKitsDL.ps1"
        Invoke-Expression $($OSDCloudDownloadsConfigScript.Content)
       
        }
'11' {cls
      $sfc = "C:\Windows\System32\sfc.exe"
      Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
      Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
      
    }
'12' {cls
      $WinGetConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1"
      Invoke-Expression $($WinGetConfigScript.Content)
      
    }
'13'{exit}
    }
    }
    until ($selection -eq '13'){}
    }

Function Get-RepairHealth(){

  $dism = "C:\Windows\System32\dism.exe"
      Write-Host "Repairing computer ..." -ForegroundColor Cyan
      Start-Process -FilePath $dism -ArgumentList "/online, /restorehealth"
      exit
      }
      
    Show-MainMenu

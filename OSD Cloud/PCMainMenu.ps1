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
Write-Host " 5. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $OSDCloud = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/OSDCloudMain.ps1"
        Invoke-Expression $($OSDCloud.Content)
        }
  '2' { cls
        $OSDCloudDownloadsConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/OSKitsDL.ps1"
        Invoke-Expression $($OSDCloudDownloadsConfigScript.Content)
        }
  '3' { cls
        $WinGetConfigScript = Invoke-WebRequest "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1"
        Invoke-Expression $($WinGetConfigScript.Content)
        }
  '4' { cls
        $sfc = "C:\Windows\System32\sfc.exe"
        Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
        Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
        }
  '5' { exit
        }
  
    }
    }
    until ($selection -eq '5'){}
    }

Function Get-RepairHealth(){

      $dism = "C:\Windows\System32\dism.exe"
      Write-Host "Repairing computer ..." -ForegroundColor Cyan
      Start-Process -FilePath $dism -ArgumentList "/online, /restorehealth"
      exit
      }
      
    Show-MainMenu

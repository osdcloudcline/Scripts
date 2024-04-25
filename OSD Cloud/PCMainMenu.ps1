
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
Write-Host " 4. Software Updates/Upgrades"
Write-Host " 5. System Maintenance"
Write-Host " 6. Backup/Restore User Profile Data"
Write-Host " 7. OSD Builder "
Write-Host " 8. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $OSDCloud = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/OSDCloudMain.ps1")
        Invoke-Expression $($OSDCloud.Content)
        }
  '2' { cls
        $OSDCloudDownloadsConfigScript = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/OSKitsDL.ps1")
        Invoke-Expression $($OSDCloudDownloadsConfigScript.Content)
        }
  '3' { cls
        $WinGetMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMain.Content)
        }
  '4' { cls
        $WinGetUpdateMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
        Invoke-Expression $($WinGetUpdateMain.Content)
        }
  '5' { cls
        $sfc = "C:\Windows\System32\sfc.exe"
        Write-Host "Scanning computer for corrupted system files..." -ForegroundColor Cyan
        Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList "/scannow"
        }
  '6' { cls
        
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        $UPBROrgName1 = (Test-Path -Path "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe")
        $UPBRNewName1 = (Test-Path -Path "C:\OSDCloud\GitHub\downloads\UPBR.exe")
        $OSDCloudGHDownloads = "C:\OSDCloud\GitHub\downloads"
        $UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
        If($UPBROrgName1 -eq $false){
        Save-WebFile -SourceUrl $UPBR -DestinationDirectory $OSDCloudGHdownloads
        }
        ElseIf($UPBROrgName1 -eq $true){
        $UPBROrgName = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
        $UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Rename-Item -Path $UPBROrgName -NewName $UPBRNewName
        }
        Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Show-MainMenu
        }
  '7'{}
  '8' { exit
        }
  
    }
    }
    until ($selection -eq '8'){}
    }

Function Get-RepairHealth(){

      $dism = "C:\Windows\System32\dism.exe"
      Write-Host "Repairing computer ..." -ForegroundColor Cyan
      Start-Process -FilePath $dism -ArgumentList "/online, /restorehealth"
      exit
      }
      
    Show-MainMenu

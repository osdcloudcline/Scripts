##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'OSD Cloud -  Script Backup Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)
cls

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Backup Administrative Scripts"
Write-Host " 2. Backup OS Integration Scripts"
Write-Host " 3. Backup Audit Mode Scripts"
Write-Host " 4. Backup Management PC Scripts"
Write-Host " 5. Backup OS Downloads Scripts"
Write-Host " 6. Backup OSD Cloud Scripts"
Write-Host " 7. Backup OSD Builder Scripts"
Write-Host " 8. Backup PowerShell Modules Scripts"
Write-Host " 9. Backup Post-Install Scripts"
Write-Host " 10. Backup Registry Files Scripts"
Write-Host " 11. Backup Start Menu Configuration Scripts"
Write-Host " 12. Backup WinGet Scripts"
Write-Host " 13. Backup ALL Scripts"
Write-Host " 14. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {

  '1' { cls
        $AdminBackupLog = "C:\OSD Cloud\Logs\Script Backups\Administrative"
        Start-Transcript $AdminBackupLog
        Get-Date
        Write-Host 
        Write-Host "Preparing script backup..." -ForegroundColor Cyan 
        Write-Host 
        Write-Verbose "Installing and Importing OSD Module..." -Verbose
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        Write-Host 
        Write-Verbose "Downloading Administratives PowerShell Scripts from OSDCloudCline GitHub Repo..." -Verbose
        $AdminScriptURL = "https://github.com/osdcloudcline/Scripts/raw/main/Administrative/AdminMainMenu.ps1"
        $AdminBackupDestination = "C:\scripts\backup\GitHubRepo\Administrative"
        Save-WebFile -SourceUrl $AdminScriptURL -DestinationDirectory $AdminBackupDestination
        Write-Host
        Write-Host "Script Backup Successfully..." -ForegroundColor Green
        Stop-Transcript
        Show-MainMenu
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
  '7' { cls
        
        }
  '8' { cls
        
        }
  '9' { cls
        
        }
  '10' { cls
       
        }
  '11' { cls
        
        }
  '12' { cls
       
        }
  '13' { cls
        
        }
  '14' { cls
        
        exit
        }
  
    }
    }
    until ($selection -eq '6'){}
    }

Show-MainMenu

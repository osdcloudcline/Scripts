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
Write-Host " 4. Backup Management PC Scripts
Write-Host " 5. Backup OS Downloads Scripts"
Write-Host " 6. Backup OSD Cloud Scripts"
Write-Host " 7. Backup OSD Builder Scripts"
Write-Host " 8. Backup PowerShell Modules Scripts"
Write-Host " 9. Backup Post-Install Scripts"
Write-Host " 10. Backup Registry Files Scripts"
Write-Host " 11. Backup Start Menu Configuration Scripts
Write-Host " 12. Backup WinGet Scripts"
Write-Host " 13. Backup ALL Scripts"
Write-Host " 14. Exit PowerShell"
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
        
        }
  '7' { cls
        
        exit
        }

  
    }
    }
    until ($selection -eq '6'){}
    }

Show-MainMenu

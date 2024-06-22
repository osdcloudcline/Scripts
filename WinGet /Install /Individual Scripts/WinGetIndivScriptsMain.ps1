##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Individual Scripts - Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Web Browser Software"
Write-Host " 2. Install Cloud Backup Software"
Write-Host " 3. Install File Transfer Software"
Write-Host " 4. Install Gaming Software"
Write-Host " 5. Install Media Software"
Write-Host " 6. Install Programming Software"
Write-Host " 7. Install Productivity Software"
Write-Host " 8. Download Security Software"
Write-Host " 9. Manufacturer Specific Scripts"
Write-Host " 10. Return to Winget Software Main Menu"
Write-Host " 11. Return to OSD Git-Hub Main Menu"
Write-Host " 12. Exit PowerShell"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       
       }
 '2'{cls
      
     }
 '3'{cls
       
    }
 '4'{cls
       
    }
 '5'{cls
      
 }
 '6'{cls
       
    }
 '7'{cls
       
    }
 '8'{cls
       
    }
'9'{cls
    $Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
    Invoke-Expression $($Manufacturer.Content)  
    } 
 '10'{cls
       $WinGetMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
       Invoke-Expression $($WinGetMain.Content)
  }
'11'{cls
    
  }
'12'{exit}
 }
 }
 until ($selection -eq '12'){exit}
}
Show-MainMenu 

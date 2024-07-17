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
Write-Host " 8. Install Virtualization and Remote Desktop Software"
Write-Host " 9. Download Security Software"
Write-Host " 10. Manufacturer Specific Scripts"
Write-Host " 11. Return to Winget Software Main Menu"
Write-Host " 12. Return to OSD Git-Hub Main Menu"
Write-Host " 13. Exit PowerShell"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       Show-BrowsersMainMenu
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
'10'{cls
    $Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
    Invoke-Expression $($Manufacturer.Content)  
    } 
 '11'{cls
      $WinGetMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
      Invoke-Expression $($WinGetMain.Content)
     }
'12'{cls
    
  }
'13'{exit}
 }
 }
 until ($selection -eq '13'){exit}
}

Function Show-BrowsersMainMenu(){

    [CmdletBinding()]
    param(
    [string]$Title = 'Web Browsers Installation Scripts - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Advanced Web Browsing Configuration"
Write-Host " 2. Install Corporate Web Browsing Configuration"
Write-Host " 3. Install Honeypot Web Browsing Configuration"
Write-Host " 4. Install IT Tech Web Browsing Configuration"
Write-Host " 5. Install Management PC Web Browsing Configuration"
Write-Host " 6. Install Standard Web Browsing Configuration"
Write-Host " 7. Install VDI Web Browsing Configuration"
Write-Host " 8. Return to Winget Individual Software Main Menu"
Write-Host " 9. Return to OSD Git-Hub Main Menu"
Write-Host " 10. Exit PowerShell"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Chrome = Invoke-WebRequest("")
       Invoke-Expression $($Chrome.Content)

       $Firefox = Invoke-WebRequest("")
       Invoke-Expression $($Firefox.Content)
       }
 '2'{cls
      $Chrome = Invoke-WebRequest("")
      Invoke-Expression $($Chrome.Content)
     }
 '3'{cls
     $Chrome = Invoke-WebRequest("")
     Invoke-Expression $($Chrome.Content)
    }
 '4'{cls
    $Chrome = Invoke-WebRequest("")
    Invoke-Expression $($Chrome.Content) 
    }
 '5'{cls
      $Chrome = Invoke-WebRequest("")
      Invoke-Expression $($Chrome.Content)
    }
 '6'{cls
     $Chrome = Invoke-WebRequest("")
     Invoke-Expression $($Chrome.Content)

     $Firefox = Invoke-WebRequest("")
     Invoke-Expression $($Firefox.Content)
    }
 '7'{cls
    $Chrome = Invoke-WebRequest("")
    Invoke-Expression $($Chrome.Content)  
    }
 '8'{cls
       
    }
 '9'{cls
       
    }
'10'{exit}
 }
 }
 until ($selection -eq '10'){exit}
}
Show-MainMenu 

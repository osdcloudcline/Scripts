##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software Configuration"
Write-Host " 2. Install Advanced Software Configuration"
Write-Host " 3. Install Corporate Software Configuration"
Write-Host " 4. Install VDI Software Configuration"
Write-Host " 5. Install Management PC Software Configuration"
Write-Host " 6. Install Honeypot Configuration"
Write-Host " 7. Install IT Tech Configuration"
Write-Host " 8. Individual Install Scripts"
Write-Host " 9. Manufacturer Specific Scripts"
Write-Host " 10. Apply Start2.bin Start Menu Configurations"
Write-Host " 11. Return to Winget Software Main Menu"
Write-Host " 12. Exit PowerShell"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Standard/Standard.ps1")
       Invoke-Expression $($Standard.Content)
       }
 '2'{cls
      $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Advanced/Advanced.ps1")
      Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Corporate/Corporate.ps1")
       Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
       $VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/VirtualDesktopInterface.ps1")
       Invoke-Expression $($VDI.Content)
    }
 '5'{cls
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
 }
 '6'{cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
    }
 '7'{cls
       $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ITTech.ps1")
       Invoke-Expression $($ITTech.Content)
    }
 '8'{cls
       $Individual = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/WinGetIndivScriptsMain.ps1")
       Invoke-Expression $($Individual.Content)
    }
'9'{cls
       $Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
       Invoke-Expression $($Manufacturer.Content)
    } 
'10'{cls
     $SMMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
     Invoke-Expression $($SMMain.Content)
     }
 '11'{cls
       $WinGetMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
       Invoke-Expression $($WinGetMain.Content)
  }
'12'{exit}
 }
 }
 until ($selection -eq '12'){exit}
}
Show-MainMenu 

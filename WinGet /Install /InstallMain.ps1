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
Write-Host " 4. Install Client VDI Software Configuration"
Write-Host " 5. Install Server VDI Software Configuration"
Write-Host " 6. Install Management PC Software Configuration"
Write-Host " 7. Install Honeypot Configuration"
Write-Host " 8. Install IT Tech Configuration"
Write-Host " 9. Individual Install Scripts"
Write-Host " 10. Manufacturer Specific Scripts"
Write-Host " 11. Apply Start2.bin Start Menu Configurations"
Write-Host " 12. Return to Winget Software Main Menu"
Write-Host " 13. Exit PowerShell"

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
       $ClientVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ClientVirtualDesktopInterface.ps1")
       Invoke-Expression $($ClientVDI.Content)
    }
'5'{cls
       $ServerVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ServerVirtualDesktopInterface.ps1")
       Invoke-Expression $($ServerVDI.Content)
    } 
 '6'{cls
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
     }
 '7'{cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
    }
 '8'{cls
       $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/IT%20Tech/ITTech.ps1")
       Invoke-Expression $($ITTech.Content)
    }
 '9'{cls
       $Individual = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/IndividualScriptsMain.ps1")
       Invoke-Expression $($Individual.Content)
    }
'10'{cls
       $Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
       Invoke-Expression $($Manufacturer.Content)
    } 
'11'{cls
     $SMMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
     Invoke-Expression $($SMMain.Content)
     }
 '12'{cls
     $WinGetMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
     Invoke-Expression $($WinGetMain.Content)
    }
'13'{exit}
 }
 }
 until ($selection -eq '13'){exit}
}
Show-MainMenu 

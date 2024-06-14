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
Write-Host " 10. Return to Winget Software Main Menu"
Write-Host " 11. Exit PowerShell"

do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/STD.ps1")
       Invoke-Expression $($Standard.Content)
       }
 '2'{cls
      $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ADV.ps1")
      Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
       Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
       $VDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
       Invoke-Expression $($VDI.Content)
    }
 '5'{cls
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
 }
 '6'{cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/Honeypot.ps1")
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
       $Upgrade = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetUpdateMain.ps1")
       Invoke-Expression $($Upgrade.Content)
  }
'11'{cls
       $PostInstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/PostInstallMain.ps1")
       Invoke-Expression $($PostInstall.Content)
 }
 '12'{exit}
 }
 }
 until ($selection -eq '12'){exit}
}
Show-MainMenu 

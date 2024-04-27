##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Post-Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Windows 11 Start Menu Customization"
Write-Host " 2. Windows 12 Start Menu Customization"
Write-Host " 3. Debloat Operating System"
Write-Host " 4. Add Client OS Features"
Write-Host " 5. Configure Server OS Roles and Features"
Write-Host " 6. Change Computer Name"
Write-Host " 7. Install OEM Manufacturer Specific Software"
Write-Host " 8. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $W11StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W11StartMenu.Content)
       }
 '2' {cls
       $W12StartMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/SMConfigMain.ps1")
       Invoke-Expression $($W12StartMenu.Content)
       }
 '3'{cls
      $Debloat = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
      Invoke-Expression $($Debloat.Content)
     }
 '4'{cls
      $ClientFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/CORPORATE.ps1")
      Invoke-Expression $($ClientFeatures.Content)
    }
 '5'{cls
      $ServerRolesFeatures = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/VDI.ps1")
      Invoke-Expression $($ServerRolesFeatures.Content)
    }
 '6'{cls
      $ChangePCName = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/System-LOB%20Specific/ManagementPC.ps1")
      Invoke-Expression $($ChangePCName.Content)
 }
 '7'{$Manufacturer = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/ManufacturerMain.ps1")
     Invoke-Expression $($Manufacturer.Content)
    }
 '8'{exit}
 }
 }
 until ($selection -eq '8'){exit}
}

Show-MainMenu 

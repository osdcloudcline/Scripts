##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Windows 11 Start Menu Configurations - Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Standard Configuration Start Menu"
Write-Host " 2. Advanced Configuration Start Menu"
Write-Host " 3. Corporate Configuration Start Menu"
Write-Host " 4. VDI Configuration Start Menu"
Write-Host " 5. Management PC Configuration Start Menu"
Write-Host " 6. IT Tech Configuration Start Menu"
Write-Host " 7. Honeypot Configuration Start Menu"
Write-Host " 8. Exit PowerShell"
do
{
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $StandardSM = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Standard/StandardSM.ps1")
       Invoke-Expression $($StandardSM.Content)
       }
 '2'{cls
      $AdvancedSM = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Advanced/AdvancedSM.ps1")
      Invoke-Expression $($AdvancedSM.Content)
     }
 '3'{cls
      $CorporateSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Corporate/CorporateSM.ps1")
      Invoke-Expression $($CorporateSM.Content)
    }
 '4'{cls
      $VDISM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/VDI/VDISM.ps1")
      Invoke-Expression $($VDISM.Content)
    }
 '5'{cls
      $ManagementPCSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Management%20PC/ManagementPCSM.ps1")
      Invoke-Expression $($ManagementPCSM.Content)
 }
 '6'{cls
      $ITTechSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/IT%20Tech/ITTechSM.ps1")
      Invoke-Expression $($ITTechSM.Content)
    }
 '7'{cls
      $HoneypotSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Start%20Menu%20Configurations/Honeypot/HoneypotSM.ps1")
      Invoke-Expression $($HoneypotSM.Content)
    }
 '8'{exit}
 }
 }
 until ($selection -eq '8'){exit}
}
Show-MainMenu
